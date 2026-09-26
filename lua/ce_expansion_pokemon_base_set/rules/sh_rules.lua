-- The rules of the game per the 1999 Base Set rulebook: setup, the turn, attacking and winning.
-- What each card does lives in scripts/. The 1999 rules are followed as printed (the first player
-- draws and may attack, Trainers and retreats are unlimited, a mulligan lets the opponent draw up
-- to two extra cards), except that a simultaneous win is a draw rather than Sudden Death.

CardEngine.ExpansionSets.PokemonBase = CardEngine.ExpansionSets.PokemonBase or {}

local PokemonBase = CardEngine.ExpansionSets.PokemonBase
local Key = PokemonBase.Key

--- Carries out an attack's own steps: any cost it asks for, its damage to the Defending Pokémon,
--- then whatever else it does. Kept apart from ResolveAttack so Metronome can run another Pokémon's
--- attack as its own, skipping the cost.
--- @param context PokemonBase.Context
--- @param attack table The attack as printed
--- @param script table? The attack's script
--- @param options table? `skipCost` for a copied attack
function PokemonBase.RunAttack(context, attack, script, options)
	options = options or {}
	script = script or {}

	local match = context.match

	if (isfunction(script.Resolve)) then
		script.Resolve(context)

		return
	end

	if (isfunction(script.Cost) and not options.skipCost) then
		script.Cost(context)
	end

	local damage = PokemonBase.GetPrintedDamage(attack)

	if (isfunction(script.Damage)) then
		damage = script.Damage(context, damage) or 0
	end

	damage = match:Query("OutgoingDamage", {
		instance = context.attacker,
		player = context.player,
		defender = context.defender,
	}, damage)

	context.damage = 0

	if (damage > 0 and context.defender and PokemonBase.IsInPlay(match, context.defender)) then
		context.damage = PokemonBase.DealDamage(match, context.defender, damage, {
			attacker = context.attacker,
			isAttack = true,
			reason = attack.Name,
		})
	end

	if (context.attackRecord) then
		context.attackRecord.damage = context.attackRecord.damage + context.damage
	end

	if (isfunction(script.Effect)) then
		script.Effect(context)
	end
end

--- Resolves an attack from start to finish, then ends the turn, whatever happened.
--- @param match CardEngine.Match
--- @param playerIndex number
--- @param attackIndex number
function PokemonBase.ResolveAttack(match, playerIndex, attackIndex)
	local attacker = PokemonBase.GetActive(match, playerIndex)
	local opponent = match:GetOpponentIndex(playerIndex)
	local defender = opponent and PokemonBase.GetActive(match, opponent)

	if (not attacker or not defender) then
		PokemonBase.EndTurn(match, playerIndex)
		return
	end

	local attack = PokemonBase.GetAttacks(match, attacker)[attackIndex]
	local card = match:GetInstanceCard(attacker)

	match:AddLogMessage(Key("log_attacked"), {
		player = PokemonBase.PlayerName(match, playerIndex),
		card = card:GetName(),
		attack = attack.Name,
	})

	-- Sand-attack: tails, and the attack does nothing at all
	if (match:Query("AttackNeedsFlip", { instance = attacker, player = playerIndex }, false) == true) then
		if (match:FlipCoin(1, Key("flip_sand_attack"), attacker) ~= 1) then
			match:AddLogMessage(Key("log_attack_did_nothing"), { card = card:GetName() })

			PokemonBase.EndTurn(match, playerIndex)

			return
		end
	end

	-- Confusion: tails, and the attacker hits itself for 20 instead, Weakness and Resistance applying
	if (PokemonBase.HasCondition(match, attacker, "Confused")) then
		if (match:FlipCoin(1, Key("flip_confused_attack"), attacker) ~= 1) then
			PokemonBase.DealDamage(match, attacker, PokemonBase.CONFUSION_DAMAGE, {
				attacker = attacker,
				applyWeakness = true,
				reason = Key("condition_confused"),
			})

			PokemonBase.CheckKnockOuts(match)
			PokemonBase.EndTurn(match, playerIndex)

			return
		end
	end

	local context = PokemonBase.BuildContext(match, playerIndex, attacker, {
		attacker = attacker,
		defender = defender,
		attack = attack,
		attackIndex = attackIndex,
		attackRecord = { damage = 0, conditions = {} },

		defenderProtected = match:Query("AttackEffectsApply", {
			instance = defender,
			player = defender.controller,
			attacker = attacker,
		}, true) == false,
	})

	PokemonBase.RunAttack(context, attack, PokemonBase.GetAttackScript(card, attackIndex))

	-- Destiny Bond: "If a Pokémon Knocks Out Gastly during your opponent's next turn, Knock Out that Pokémon."
	if (PokemonBase.IsInPlay(match, defender) and PokemonBase.IsKnockedOut(match, defender)
			and match:GetInstanceState(defender, "destinyBondTurn") == match:GetTurn()
			and PokemonBase.IsInPlay(match, attacker)) then
		match:AddLogMessage(Key("log_destiny_bond"), { card = card:GetName() })

		CardEngine.Match.AddCounter(match, attacker, PokemonBase.DAMAGE_COUNTER,
			PokemonBase.GetRemainingHP(match, attacker))
	end

	-- Remembered on the Pokémon that was attacked, for Pidgeotto's Mirror Move next turn
	if (PokemonBase.IsInPlay(match, defender)) then
		CardEngine.Match.SetInstanceState(match, defender, "lastAttackedBy", {
			turn = match:GetTurn(),
			damage = context.attackRecord.damage,
			conditions = context.attackRecord.conditions,
		})
	end

	PokemonBase.CheckKnockOuts(match)
	PokemonBase.EndTurn(match, playerIndex)
end

--- Discards the Trainers attached for a limited time whose time is up (PlusPower, Defender)
--- @param match CardEngine.Match
local function discardExpiredAttachments(match)
	for playerIndex = 1, match:GetPlayerCount() do
		for _, pokemon in ipairs(PokemonBase.GetPokemonInPlay(match, playerIndex)) do
			for _, attached in ipairs(match:GetAttached(pokemon)) do
				local expiresOn = match:GetInstanceState(attached, "discardAtEndOfTurn")

				if (expiresOn and expiresOn <= match:GetTurn()) then
					PokemonBase.DiscardAttached(match, attached)
				end
			end
		end
	end
end

--- Ends a player's turn: the between-turns step, then the handover
--- @param match CardEngine.Match
--- @param playerIndex number
function PokemonBase.EndTurn(match, playerIndex)
	if (match:IsFinished()) then
		return
	end

	-- The turn plays out on the board before anything between turns happens
	match:Beat()

	discardExpiredAttachments(match)

	CardEngine.Match.SetPhase(match, "BetweenTurns")

	for index = 1, match:GetPlayerCount() do
		local active = PokemonBase.GetActive(match, index)

		if (active) then
			PokemonBase.ResolveBetweenTurns(match, active, playerIndex)
		end
	end

	PokemonBase.CheckKnockOuts(match)

	if (match:IsFinished() or PokemonBase.CheckGameOver(match)) then
		return
	end

	CardEngine.Match.AdvanceTurn(match)
end

--- Starts a player's turn: clears the per-turn limits and draws a card
--- @param match CardEngine.Match
--- @param playerIndex number
function PokemonBase.StartTurn(match, playerIndex)
	CardEngine.Match.SetPlayerState(match, playerIndex, "attachedEnergy", false)
	CardEngine.Match.SetPlayerState(match, playerIndex, "retreatFailed", false)

	local drawn = CardEngine.Match.MoveTopCards(match, playerIndex, 1, "Deck", "Hand")

	-- Drawing from an empty deck loses the game, which CheckGameOver notices by this
	if (#drawn == 0) then
		CardEngine.Match.SetPlayerState(match, playerIndex, "deckedOut", true)
	end

	CardEngine.Match.SetPhase(match, "Main")
end

--- The most times a hand is redrawn before setup gives up and plays on without a Basic
local MAX_MULLIGANS = 10

--- Deals a player their opening hand, redrawing until it has a Basic Pokémon. Each redrawn hand is
--- shown to the opponent.
--- @param match CardEngine.Match
--- @param playerIndex number
--- @return number # How many times they had to redraw
local function dealOpeningHand(match, playerIndex)
	local mulligans = 0

	while (true) do
		CardEngine.Match.MoveTopCards(match, playerIndex, PokemonBase.OPENING_HAND_SIZE, "Deck", "Hand")

		local hand = match:GetZoneInstances("Hand", playerIndex)
		local hasBasic = false

		for _, instance in ipairs(hand) do
			if (PokemonBase.IsPlayableAsBasic(match:GetInstanceCard(instance))) then
				hasBasic = true
				break
			end
		end

		if (hasBasic or mulligans >= MAX_MULLIGANS) then
			break
		end

		mulligans = mulligans + 1

		CardEngine.Match.RevealCards(match, hand, { match:GetOpponentIndex(playerIndex) },
			Key("log_mulligan_reveal"), { player = PokemonBase.PlayerName(match, playerIndex) }, playerIndex)

		for _, instance in ipairs(hand) do
			CardEngine.Match.MoveCard(match, instance, "Deck", playerIndex, { faceDown = true })
		end

		CardEngine.Match.ShuffleZone(match, "Deck", playerIndex)

		match:AddEvent({
			type = "pokemon_mulligan",
			player = playerIndex,
			count = mulligans,
		})
	end

	return mulligans
end

--- Deals the opening state: hands, Active Pokémon, Benches and prizes
--- @param match CardEngine.Match
function PokemonBase.SetupMatch(match)
	local playerCount = match:GetPlayerCount()
	local mulligans = {}

	for playerIndex = 1, playerCount do
		mulligans[playerIndex] = dealOpeningHand(match, playerIndex)
	end

	-- Each redraw lets the opponent draw up to two extra cards
	for playerIndex = 1, playerCount do
		local allowed = 0

		for otherIndex = 1, playerCount do
			if (otherIndex ~= playerIndex) then
				allowed = allowed + mulligans[otherIndex] * 2
			end
		end

		if (allowed > 0) then
			local options = {}

			for count = allowed, 0, -1 do
				table.insert(options, { value = count, label = Key("option_draw_extra"), params = { count = count } })
			end

			local extra = tonumber(match:PromptOption(playerIndex, Key("prompt_mulligan_draw"), options)) or 0

			if (extra > 0) then
				CardEngine.Match.MoveTopCards(match, playerIndex, math.min(extra, allowed), "Deck", "Hand")
			end
		end
	end

	-- Each player puts down an Active Pokémon face down, then as many benched ones as they like
	for playerIndex = 1, playerCount do
		local basics = {}

		for _, instance in ipairs(match:GetZoneInstances("Hand", playerIndex)) do
			if (PokemonBase.IsPlayableAsBasic(match:GetInstanceCard(instance))) then
				table.insert(basics, instance)
			end
		end

		local active = match:PromptInstance(playerIndex, Key("prompt_choose_active"), basics, 1)

		if (active) then
			CardEngine.Match.MoveCard(match, active, "Active", playerIndex, { slot = 1, faceDown = true })
			CardEngine.Match.SetInstanceState(match, active, "playedOnTurn", 0)
		end

		local remaining = {}

		for _, instance in ipairs(basics) do
			if (instance.zone == "Hand") then
				table.insert(remaining, instance)
			end
		end

		if (#remaining > 0) then
			local benched = match:PromptInstance(playerIndex, Key("prompt_choose_bench"),
				remaining, math.min(#remaining, PokemonBase.MAX_BENCH), true)

			for _, instance in ipairs(match:AsInstanceList(benched)) do
				if (match:HasZoneSpace("Bench", playerIndex)) then
					CardEngine.Match.MoveCard(match, instance, "Bench", playerIndex, { faceDown = true })
					CardEngine.Match.SetInstanceState(match, instance, "playedOnTurn", 0)
				end
			end
		end

		for _ = 1, PokemonBase.PRIZE_COUNT do
			local deck = match:GetZoneEntries("Deck", playerIndex)
			local topID = deck[#deck]

			if (not topID) then
				break
			end

			CardEngine.Match.MoveCard(match, topID, "Prizes", playerIndex, { faceDown = true })
		end
	end

	-- Both sides turn their Pokémon over at once
	for playerIndex = 1, playerCount do
		for _, zoneKey in ipairs({ "Active", "Bench" }) do
			for _, instance in ipairs(match:GetZoneInstances(zoneKey, playerIndex)) do
				instance.faceDown = false
			end
		end
	end

	match:AddEvent({ type = "pokemon_setup_revealed" })

	match.turn = 1
	match.activePlayer = match:Random(1, playerCount)

	match:AddEvent({
		type = "turn_started",
		player = match.activePlayer,
		turn = 1,
		phase = "Main",
	})

	PokemonBase.StartTurn(match, match.activePlayer)
end

--- Works out whether the game is over: a player wins by taking their last prize, leaving the
--- opponent no Pokémon in play, or the opponent drawing from an empty deck. Both winning is a draw.
--- @param match CardEngine.Match
--- @return number? winner # CardEngine.Match.DRAW when both won
--- @return string? reason
function PokemonBase.CheckGameOver(match)
	if (match:GetTurn() < 1) then
		return nil, nil
	end

	local winners = {}
	local reasons = {}

	for playerIndex = 1, match:GetPlayerCount() do
		local opponent = match:GetOpponentIndex(playerIndex)
		local reason

		if (match:CountZone("Prizes", playerIndex) == 0) then
			reason = Key("win_prizes")
		elseif (opponent and #PokemonBase.GetPokemonInPlay(match, opponent) == 0) then
			reason = Key("win_no_pokemon")
		elseif (opponent and match:GetPlayerState(opponent, "deckedOut")) then
			reason = Key("win_decked_out")
		end

		if (reason) then
			table.insert(winners, playerIndex)
			reasons[playerIndex] = reason
		end
	end

	if (#winners > 1) then
		return CardEngine.Match.DRAW, Key("win_draw")
	end

	if (#winners == 1) then
		return winners[1], reasons[winners[1]]
	end

	return nil, nil
end

--- Registers the rules with Card Engine. Called from sh_init.lua once every rules and script file has loaded.
function PokemonBase.RegisterGameRules()
	-- The engine reads a card's rules from CARD.GameRules, so the scripts are put there too
	for cardID, script in pairs(PokemonBase.CardScripts) do
		local card = CardEngine.Collection.Get(cardID)

		if (card) then
			card.GameRules = script
		end
	end

	CardEngine.GameRules.Register({
		ExpansionSet = PokemonBase.EXPANSION_SET_ID,
		Name = Key("game_name"),

		MinPlayers = 2,
		MaxPlayers = 2,

		Zones = {
			Deck = {
				Label = Key("zone_deck"),
				Ordered = true,
				Visibility = CardEngine.VISIBILITY_NONE,
			},
			Hand = {
				Label = Key("zone_hand"),
				Visibility = CardEngine.VISIBILITY_OWNER,
			},
			Discard = {
				Label = Key("zone_discard"),
				Ordered = true,
				Visibility = CardEngine.VISIBILITY_ALL,
			},
			Prizes = {
				Label = Key("zone_prizes"),
				Visibility = CardEngine.VISIBILITY_NONE,
			},
			Active = {
				Label = Key("zone_active"),
				Visibility = CardEngine.VISIBILITY_ALL,
				Slots = 1,
			},
			Bench = {
				Label = Key("zone_bench"),
				Visibility = CardEngine.VISIBILITY_ALL,
				Slots = PokemonBase.MAX_BENCH,
			},
		},

		DeckZone = "Deck",

		Phases = { "Main", "BetweenTurns" },

		Actions = PokemonBase.Actions,

		SetupMatch = PokemonBase.SetupMatch,
		StartTurn = PokemonBase.StartTurn,
		CheckGameOver = PokemonBase.CheckGameOver,
	})
end
