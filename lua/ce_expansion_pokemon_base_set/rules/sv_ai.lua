-- The practice opponent: plays a theme deck as someone who has read the rules would (fill the Bench,
-- evolve, draw, power up, clear the way, hit hard). It aims to play a whole game, not to be hard
-- to beat. Every move goes through CanPerformAction, so the rules stay the authority.

CardEngine.ExpansionSets.PokemonBase = CardEngine.ExpansionSets.PokemonBase or {}

local PokemonBase = CardEngine.ExpansionSets.PokemonBase
local Key = PokemonBase.Key

local function hand(match, playerIndex)
	return match:GetZoneInstances("Hand", playerIndex)
end

local function canDo(match, playerIndex, actionName, params)
	return (CardEngine.Match.CanPerformAction(match, playerIndex, actionName, params)) == true
end

local function cardName(instance)
	return instance.cardID and string.sub(instance.cardID, #PokemonBase.CARD_PREFIX + 1) or ""
end

--- How much an attack would do to a Pokémon by the numbers on the cards: printed damage with
--- Weakness, Resistance, PlusPower and Defender. Coin flips are left out.
--- @return number
local function estimateDamage(match, attacker, attackIndex, target)
	local attack = PokemonBase.GetAttacks(match, attacker)[attackIndex]

	if (not attack) then
		return 0
	end

	local damage = PokemonBase.GetPrintedDamage(attack)

	if (damage <= 0) then
		return 0
	end

	local weakness = PokemonBase.GetWeakness(match, target)
	local resistance = PokemonBase.GetResistance(match, target)

	if (weakness and PokemonBase.IsOfType(match, attacker, weakness)) then
		damage = damage * PokemonBase.WEAKNESS_MULTIPLIER
	end

	if (resistance and PokemonBase.IsOfType(match, attacker, resistance)) then
		damage = damage - PokemonBase.RESISTANCE_REDUCTION
	end

	if (damage > 0) then
		damage = damage + PokemonBase.CountAttachedCard(match, attacker, PokemonBase.PLUSPOWER_ID)
			* PokemonBase.PLUSPOWER_BONUS
	end

	damage = damage - PokemonBase.CountAttachedCard(match, target, PokemonBase.DEFENDER_ID)
		* PokemonBase.DEFENDER_REDUCTION

	return math.max(0, damage)
end

--- The attack a Pokémon could pay for that would hurt a target most, and how much
--- @return number? attackIndex
--- @return number damage
local function bestPayableAttack(match, attacker, target)
	local bestIndex, bestDamage = nil, -1

	for index, attack in ipairs(PokemonBase.GetAttacks(match, attacker)) do
		if (PokemonBase.CanPayAttackCost(match, attacker, attack)) then
			local damage = target and estimateDamage(match, attacker, index, target) or PokemonBase.GetPrintedDamage(attack)

			if (damage > bestDamage) then
				bestIndex, bestDamage = index, damage
			end
		end
	end

	return bestIndex, math.max(0, bestDamage)
end

--- Whether a Pokémon can pay for any of its attacks
local function canPayAnyAttack(match, instance)
	return (bestPayableAttack(match, instance)) ~= nil
end

--- How worth keeping in front a Pokémon is: how much it can take, and how ready it is to hit back
local function fighterScore(match, instance)
	local score = PokemonBase.GetRemainingHP(match, instance) + 15 * PokemonBase.CountEnergy(match, instance)

	if (canPayAnyAttack(match, instance)) then
		score = score + 60
	end

	if (PokemonBase.IsDoll(match, instance)) then
		score = score - 200
	end

	return score
end

local function best(instances, score)
	local chosen, chosenScore

	for _, instance in ipairs(instances) do
		local value = score(instance)

		if (not chosenScore or value > chosenScore) then
			chosen, chosenScore = instance, value
		end
	end

	return chosen
end

-- Per-turn memory is kept out of the match, since it is about the AI and must not be rolled back
-- with the board. Weak keys, so it goes when the match does.

--- @type table<CardEngine.Match, { turn: number, counts: table<string, number> }>
local memory = setmetatable({}, { __mode = "k" })

--- How many times the AI has done something this turn, counting this time
local function bump(match, key)
	local entry = memory[match]

	if (not entry or entry.turn ~= match:GetTurn()) then
		entry = { turn = match:GetTurn(), counts = {} }
		memory[match] = entry
	end

	entry.counts[key] = (entry.counts[key] or 0) + 1

	return entry.counts[key]
end

local function timesDone(match, key)
	local entry = memory[match]

	if (not entry or entry.turn ~= match:GetTurn()) then
		return 0
	end

	return entry.counts[key] or 0
end

-- Each step answers "is there a move of this kind worth making". The first that says yes is played.

local function playBasic(match, playerIndex)
	local benched = match:CountZone("Bench", playerIndex)

	for _, card in ipairs(hand(match, playerIndex)) do
		local params = { card = card.id }
		local isDoll = PokemonBase.IsDoll(match, card)

		-- Clefairy Doll only as a last line of defence, when nothing else is on the Bench
		if ((not isDoll or benched == 0) and canDo(match, playerIndex, "PlayBasic", params)) then
			return "PlayBasic", params
		end
	end
end

local function evolve(match, playerIndex)
	local pokemon = PokemonBase.GetPokemonInPlay(match, playerIndex)

	for _, card in ipairs(hand(match, playerIndex)) do
		for _, target in ipairs(pokemon) do
			local params = { card = card.id, target = target.id }

			if (canDo(match, playerIndex, "Evolve", params)) then
				return "Evolve", params
			end
		end
	end
end

--- Whether an Energy card would help a Pokémon pay for an attack it cannot pay for yet
local function energyHelps(match, energy, target)
	local before = PokemonBase.GetEnergyUnits(match, target)
	local after = table.Copy(before)

	for _, unit in ipairs(PokemonBase.GetPrintedProvides(match, energy)) do
		table.insert(after, unit)
	end

	local score = 0

	for _, attack in ipairs(PokemonBase.GetAttacks(match, target)) do
		local couldPay = PokemonBase.CanPayCost(before, attack.Cost)
		local canPay = PokemonBase.CanPayCost(after, attack.Cost)

		if (canPay and not couldPay) then
			score = score + 10
		elseif (not couldPay) then
			-- Still short, but closer if the type is one the attack asks for
			for _, symbol in ipairs(attack.Cost or {}) do
				if (table.HasValue(PokemonBase.GetPrintedProvides(match, energy), symbol) or symbol == "Colorless") then
					score = score + 2
					break
				end
			end
		end
	end

	return score
end

local function attachEnergy(match, playerIndex)
	if (match:GetPlayerState(playerIndex, "attachedEnergy")) then
		return
	end

	local bestParams, bestScore

	for _, energy in ipairs(hand(match, playerIndex)) do
		if (PokemonBase.IsEnergyCard(match:GetInstanceCard(energy))) then
			for _, target in ipairs(PokemonBase.GetPokemonInPlay(match, playerIndex)) do
				local params = { card = energy.id, target = target.id }

				if (not PokemonBase.IsDoll(match, target) and canDo(match, playerIndex, "AttachEnergy", params)) then
					local score = energyHelps(match, energy, target)

					if (target.zone == "Active") then
						score = score + 3
					end

					if (not bestScore or score > bestScore) then
						bestParams, bestScore = params, score
					end
				end
			end
		end
	end

	if (bestParams) then
		return "AttachEnergy", bestParams
	end
end

--- Whether a Pokémon Power is worth using right now
local POWER_POLICIES = {
	blastoise = function(match, playerIndex)
		return timesDone(match, "power_blastoise") < 6
	end,

	venusaur = function(match, playerIndex)
		local active = PokemonBase.GetActive(match, playerIndex)

		if (not active or canPayAnyAttack(match, active) or timesDone(match, "power_venusaur") >= 4) then
			return false
		end

		-- Only worth it with Grass Energy on the Bench to bring forward
		for _, benched in ipairs(match:GetZoneInstances("Bench", playerIndex)) do
			if (#PokemonBase.GetBasicEnergyCardsOfType(match, benched, "Grass") > 0) then
				return true
			end
		end

		return false
	end,

	alakazam = function(match, playerIndex)
		local active = PokemonBase.GetActive(match, playerIndex)

		return active and PokemonBase.GetRemainingHP(match, active) <= 30
			and PokemonBase.GetDamage(match, active) > 0 and timesDone(match, "power_alakazam") < 6
	end,

	charizard = function(match, playerIndex, instance)
		return instance.zone == "Active" and not canPayAnyAttack(match, instance)
	end,
}

local function usePower(match, playerIndex)
	for _, instance in ipairs(PokemonBase.GetPokemonInPlay(match, playerIndex)) do
		local policy = POWER_POLICIES[cardName(instance)]
		local params = { card = instance.id }

		if (policy and policy(match, playerIndex, instance) and canDo(match, playerIndex, "UsePower", params)) then
			bump(match, "power_" .. cardName(instance))

			return "UsePower", params
		end
	end
end

--- The opponent's Pokémon on the Bench that the Active Pokémon could Knock Out this turn
local function knockableBench(match, playerIndex)
	local active = PokemonBase.GetActive(match, playerIndex)
	local opponent = match:GetOpponentIndex(playerIndex)

	if (not active) then
		return nil
	end

	for _, target in ipairs(match:GetZoneInstances("Bench", opponent)) do
		local _, damage = bestPayableAttack(match, active, target)

		if (damage >= PokemonBase.GetRemainingHP(match, target)) then
			return target
		end
	end
end

--- Whether the Active Pokémon is in no state to fight
local function activeInTrouble(match, playerIndex)
	local active = PokemonBase.GetActive(match, playerIndex)

	if (not active) then
		return false
	end

	return PokemonBase.IsPreventedBy(match, active, "PreventsAttack")
		or PokemonBase.GetRemainingHP(match, active) <= PokemonBase.GetMaxHP(match, active) * 0.25
end

--- Whether each Trainer is worth playing right now. A Trainer with no entry here is left in hand.
local TRAINER_POLICIES = {
	bill = function()
		return true
	end,

	professor_oak = function(match, playerIndex)
		return match:CountZone("Hand", playerIndex) <= 3
	end,

	impostor_professor_oak = function(match, playerIndex)
		return match:CountZone("Hand", match:GetOpponentIndex(playerIndex)) >= 6
	end,

	computer_search = function(match, playerIndex)
		return match:CountZone("Hand", playerIndex) >= 4
	end,

	item_finder = function(match, playerIndex)
		return match:CountZone("Hand", playerIndex) >= 4
	end,

	energy_retrieval = function(match, playerIndex)
		return match:CountZone("Hand", playerIndex) >= 3
	end,

	potion = function(match, playerIndex)
		local active = PokemonBase.GetActive(match, playerIndex)

		return active and PokemonBase.GetDamage(match, active) >= 20
	end,

	super_potion = function(match, playerIndex)
		local active = PokemonBase.GetActive(match, playerIndex)

		return active and PokemonBase.GetDamage(match, active) >= 40
			and PokemonBase.CountEnergy(match, active) >= 2
	end,

	full_heal = function(match, playerIndex)
		local active = PokemonBase.GetActive(match, playerIndex)

		return active and #PokemonBase.GetConditions(match, active) > 0
	end,

	switch = function(match, playerIndex)
		return activeInTrouble(match, playerIndex)
	end,

	gust_of_wind = function(match, playerIndex)
		return knockableBench(match, playerIndex) ~= nil
	end,

	energy_removal = function(match, playerIndex)
		local defender = PokemonBase.GetActive(match, match:GetOpponentIndex(playerIndex))

		return defender and #PokemonBase.GetEnergyCards(match, defender) > 0
	end,

	super_energy_removal = function(match, playerIndex)
		local defender = PokemonBase.GetActive(match, match:GetOpponentIndex(playerIndex))

		return defender and #PokemonBase.GetEnergyCards(match, defender) >= 2
	end,

	pluspower = function(match, playerIndex)
		local active = PokemonBase.GetActive(match, playerIndex)
		local defender = PokemonBase.GetActive(match, match:GetOpponentIndex(playerIndex))

		if (not active or not defender) then
			return false
		end

		local index, damage = bestPayableAttack(match, active, defender)
		local remaining = PokemonBase.GetRemainingHP(match, defender)

		return index ~= nil and damage > 0 and damage < remaining and damage + PokemonBase.PLUSPOWER_BONUS >= remaining
	end,

	defender = function(match, playerIndex)
		local active = PokemonBase.GetActive(match, playerIndex)

		return active and PokemonBase.GetDamage(match, active) > 0
			and PokemonBase.CountAttachedCard(match, active, PokemonBase.DEFENDER_ID) == 0
	end,

	revive = function(match, playerIndex)
		return match:CountZone("Bench", playerIndex) <= 2
	end,

	pok_mon_breeder = function()
		return true
	end,
}

local function playTrainer(match, playerIndex)
	for _, card in ipairs(hand(match, playerIndex)) do
		local name = cardName(card)
		local policy = TRAINER_POLICIES[name]
		local params = { card = card.id }

		if (policy and bump(match, "tried_" .. card.id) == 1) then
			if (policy(match, playerIndex) and canDo(match, playerIndex, "PlayTrainer", params)) then
				return "PlayTrainer", params
			end
		end
	end
end

local function retreat(match, playerIndex)
	local active = PokemonBase.GetActive(match, playerIndex)

	if (not active or timesDone(match, "retreat") > 0) then
		return
	end

	local shouldRetreat = activeInTrouble(match, playerIndex) or not canPayAnyAttack(match, active)

	if (not shouldRetreat) then
		return
	end

	local replacement = best(match:GetZoneInstances("Bench", playerIndex), function(instance)
		return fighterScore(match, instance)
	end)

	if (not replacement or fighterScore(match, replacement) <= fighterScore(match, active)) then
		return
	end

	local params = { target = replacement.id }

	if (canDo(match, playerIndex, "Retreat", params)) then
		bump(match, "retreat")

		return "Retreat", params
	end
end

local function attack(match, playerIndex)
	local active = PokemonBase.GetActive(match, playerIndex)
	local defender = PokemonBase.GetActive(match, match:GetOpponentIndex(playerIndex))

	if (not active or not defender) then
		return
	end

	local bestIndex, bestScore

	for index, printed in ipairs(PokemonBase.GetAttacks(match, active)) do
		if (canDo(match, playerIndex, "Attack", { attack = index })) then
			local score = estimateDamage(match, active, index, defender)

			-- An attack that does no damage still has an effect worth something, but less than a hit
			if (score == 0 and printed.Effect) then
				score = 5
			end

			if (score >= PokemonBase.GetRemainingHP(match, defender)) then
				score = score + 100
			end

			if (not bestScore or score > bestScore) then
				bestIndex, bestScore = index, score
			end
		end
	end

	if (bestIndex) then
		return "Attack", { attack = bestIndex }
	end
end

local function endTurn(match, playerIndex)
	if (canDo(match, playerIndex, "EndTurn", {})) then
		return "EndTurn", {}
	end
end

--- The order a turn goes in. Attacking ends the turn, so it comes last.
local STEPS = {
	playBasic,
	evolve,
	playTrainer,
	usePower,
	attachEnergy,
	retreat,
	attack,
	endTurn,
}

local function instancesOf(match, request)
	local instances = {}

	for _, instanceID in ipairs(request.candidates or {}) do
		local instance = match:GetInstance(instanceID)

		if (instance) then
			table.insert(instances, instance)
		end
	end

	return instances
end

--- Picks the candidate a scoring function likes best, for a question that wants one answer
local function pickBest(match, request, score)
	if ((request.max or 1) > 1) then
		return nil
	end

	local chosen = best(instancesOf(match, request), score)

	return chosen and chosen.id or nil
end

--- Picks as many candidates as the question takes, in the order a scoring function likes them
local function pickMany(match, request, score)
	local instances = instancesOf(match, request)

	table.sort(instances, function(a, b)
		return score(a) > score(b)
	end)

	local chosen = {}

	for index = 1, math.min(request.max or 1, #instances) do
		chosen[index] = instances[index].id
	end

	if ((request.max or 1) == 1) then
		return chosen[1]
	end

	return chosen
end

--- How little a card in hand is worth, for choosing what to throw away. Spare Energy goes first.
local function discardScore(match, playerIndex)
	return function(instance)
		local card = match:GetInstanceCard(instance)

		if (PokemonBase.IsEnergyCard(card)) then
			return 3
		elseif (PokemonBase.IsTrainerCard(card)) then
			return 2
		end

		return 1
	end
end

--- What each question is best answered with. Anything not here gets the engine's own default.
local PROMPT_POLICIES = {
	prompt_choose_active = function(match, playerIndex, request)
		return pickBest(match, request, function(instance)
			return fighterScore(match, instance)
		end)
	end,

	prompt_promote = function(match, playerIndex, request)
		return pickBest(match, request, function(instance)
			return fighterScore(match, instance)
		end)
	end,

	prompt_choose_bench = function(match, playerIndex, request)
		return pickMany(match, request, function(instance)
			return PokemonBase.IsDoll(match, instance) and 0 or 1
		end)
	end,

	prompt_discard_from_hand = function(match, playerIndex, request)
		return pickMany(match, request, discardScore(match, playerIndex))
	end,

	-- The opponent's Pokémon: the weakest one, so a Knock Out is closer
	prompt_gust_of_wind = function(match, playerIndex, request)
		local target = knockableBench(match, playerIndex)

		if (target and table.HasValue(request.candidates or {}, target.id)) then
			return target.id
		end

		return pickBest(match, request, function(instance)
			return -PokemonBase.GetRemainingHP(match, instance)
		end)
	end,

	prompt_lure = function(match, playerIndex, request)
		return pickBest(match, request, function(instance)
			return -PokemonBase.GetRemainingHP(match, instance)
		end)
	end,

	-- The AI's own Pokémon being dragged out by Whirlwind: the sturdiest
	prompt_whirlwind = function(match, playerIndex, request)
		return pickBest(match, request, function(instance)
			return fighterScore(match, instance)
		end)
	end,

	prompt_switch = function(match, playerIndex, request)
		return pickBest(match, request, function(instance)
			return fighterScore(match, instance)
		end)
	end,

	-- Energy Removal: the opponent's Active Pokémon first
	prompt_choose_opponent_pokemon = function(match, playerIndex, request)
		return pickBest(match, request, function(instance)
			return (instance.zone == "Active" and 100 or 0) + PokemonBase.CountEnergy(match, instance)
		end)
	end,

	-- Healing: the Pokémon with the most damage
	prompt_choose_own_pokemon = function(match, playerIndex, request)
		return pickBest(match, request, function(instance)
			return PokemonBase.GetDamage(match, instance) + (instance.zone == "Active" and 5 or 0)
		end)
	end,

	-- Rain Dance and Energy Trans: towards whatever still cannot attack, the Active Pokémon first
	prompt_rain_dance_target = function(match, playerIndex, request)
		return pickBest(match, request, function(instance)
			return (canPayAnyAttack(match, instance) and 0 or 10) + (instance.zone == "Active" and 5 or 0)
		end)
	end,

	prompt_energy_trans_from = function(match, playerIndex, request)
		return pickBest(match, request, function(instance)
			return instance.zone == "Active" and 0 or 1
		end)
	end,

	prompt_energy_trans_to = function(match, playerIndex, request)
		return pickBest(match, request, function(instance)
			return instance.zone == "Active" and 1 or 0
		end)
	end,

	prompt_damage_swap_from = function(match, playerIndex, request)
		return pickBest(match, request, function(instance)
			return (instance.zone == "Active" and 100 or 0) + PokemonBase.GetDamage(match, instance)
		end)
	end,

	prompt_damage_swap_to = function(match, playerIndex, request)
		return pickBest(match, request, function(instance)
			return PokemonBase.GetRemainingHP(match, instance) - (instance.zone == "Active" and 1000 or 0)
		end)
	end,

	-- Metronome: the hardest-hitting of the Defending Pokémon's attacks
	prompt_metronome = function(match, playerIndex, request)
		local defender = PokemonBase.GetActive(match, match:GetOpponentIndex(playerIndex))
		local attacks = defender and PokemonBase.GetAttacks(match, defender) or {}
		local chosen, damage

		for _, index in ipairs(request.candidates or {}) do
			local printed = PokemonBase.GetPrintedDamage(attacks[tonumber(index)])

			if (not damage or printed > damage) then
				chosen, damage = index, printed
			end
		end

		return chosen
	end,

	-- Amnesia: take away the Defending Pokémon's strongest attack
	prompt_amnesia = function(match, playerIndex, request)
		local defender = PokemonBase.GetActive(match, match:GetOpponentIndex(playerIndex))
		local attacks = defender and PokemonBase.GetAttacks(match, defender) or {}
		local chosen, damage

		for _, index in ipairs(request.candidates or {}) do
			local printed = PokemonBase.GetPrintedDamage(attacks[tonumber(index)])

			if (not damage or printed > damage) then
				chosen, damage = index, printed
			end
		end

		return chosen
	end,

	-- Conversion 1: make the Defending Pokémon weak to what the AI has on its Bench
	prompt_conversion_1 = function(match, playerIndex, request)
		for _, instance in ipairs(PokemonBase.GetPokemonInPlay(match, playerIndex)) do
			for _, pokemonType in ipairs(PokemonBase.GetTypes(match, instance)) do
				if (table.HasValue(request.candidates or {}, pokemonType)) then
					return pokemonType
				end
			end
		end
	end,

	-- Conversion 2: resist whatever the Defending Pokémon is
	prompt_conversion_2 = function(match, playerIndex, request)
		local defender = PokemonBase.GetActive(match, match:GetOpponentIndex(playerIndex))

		for _, pokemonType in ipairs(defender and PokemonBase.GetTypes(match, defender) or {}) do
			if (table.HasValue(request.candidates or {}, pokemonType)) then
				return pokemonType
			end
		end
	end,
}

--- Registers the practice opponents, one for each theme deck. Called from sh_init.lua.
--- @realm server
function PokemonBase.RegisterAI()
	CardEngine.MatchAI.Register(PokemonBase.EXPANSION_SET_ID, {
		Name = Key("ai_name"),

		Decks = function()
			local decks = {}

			for _, key in ipairs(PokemonBase.THEME_DECK_ORDER) do
				local deck = PokemonBase.BuildThemeDeck(key, PokemonBase.EXPANSION_SET_ID .. "_ai_" .. key)
				deck.aiName = Key("ai_" .. key)

				table.insert(decks, deck)
			end

			return decks
		end,

		ChooseAction = function(match, playerIndex)
			for _, step in ipairs(STEPS) do
				local actionName, params = step(match, playerIndex)

				if (actionName) then
					return actionName, params
				end
			end

			return nil, nil
		end,

		AnswerPrompt = function(match, playerIndex, request)
			local key = request.prompt and string.sub(request.prompt, #PokemonBase.LANGUAGE_PREFIX + 1)
			local policy = PROMPT_POLICIES[key]

			if (not policy or #(request.candidates or {}) == 0) then
				return nil
			end

			return policy(match, playerIndex, request)
		end,
	})
end
