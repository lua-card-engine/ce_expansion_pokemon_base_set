-- Damage, healing, Knock Outs and prizes, all through the engine's mutation API so each change
-- becomes an event the board can animate.

CardEngine.ExpansionSets.PokemonBase = CardEngine.ExpansionSets.PokemonBase or {}

local PokemonBase = CardEngine.ExpansionSets.PokemonBase
local Key = PokemonBase.Key

--- Every Pokémon a player has in play, the Active one first
--- @param match CardEngine.Match
--- @param playerIndex number
--- @return CardEngine.MatchCardInstance[]
function PokemonBase.GetPokemonInPlay(match, playerIndex)
	local pokemon = {}

	for _, zoneKey in ipairs({ "Active", "Bench" }) do
		for _, instance in ipairs(match:GetZoneInstances(zoneKey, playerIndex)) do
			table.insert(pokemon, instance)
		end
	end

	return pokemon
end

--- Whether an instance is a Pokémon in play (the top card of one, not something attached to it)
--- @param match CardEngine.Match
--- @param instanceOrID CardEngine.MatchCardInstance|number
--- @return boolean
function PokemonBase.IsInPlay(match, instanceOrID)
	local instance = match:ResolveInstance(instanceOrID)

	if (not instance or (instance.zone ~= "Active" and instance.zone ~= "Bench")) then
		return false
	end

	return instance.state.attachedTo == nil and instance.state.beneathOf == nil
end

--- @param match CardEngine.Match
--- @param instanceOrID CardEngine.MatchCardInstance|number
--- @return CardEngine.MatchCardInstance?
function PokemonBase.GetActive(match, playerIndex)
	return match:GetZoneSlot("Active", playerIndex, 1)
end

--- Whether an instance is Clefairy Doll, or anything else played as if it were a Basic Pokémon
--- @param match CardEngine.Match
--- @param instanceOrID CardEngine.MatchCardInstance|number
--- @return boolean
function PokemonBase.IsDoll(match, instanceOrID)
	return match:GetInstanceAttribute(instanceOrID, "PlayableAsBasic", false) == true
end

--- @param match CardEngine.Match
--- @param instanceOrID CardEngine.MatchCardInstance|number
--- @return number
function PokemonBase.GetMaxHP(match, instanceOrID)
	return match:GetInstanceAttribute(instanceOrID, "Hp", 0)
end

--- @param match CardEngine.Match
--- @param instanceOrID CardEngine.MatchCardInstance|number
--- @return number
function PokemonBase.GetDamage(match, instanceOrID)
	return match:GetCounter(instanceOrID, PokemonBase.DAMAGE_COUNTER)
end

--- @param match CardEngine.Match
--- @param instanceOrID CardEngine.MatchCardInstance|number
--- @return number
function PokemonBase.GetRemainingHP(match, instanceOrID)
	return math.max(0, PokemonBase.GetMaxHP(match, instanceOrID) - PokemonBase.GetDamage(match, instanceOrID))
end

--- @param match CardEngine.Match
--- @param instanceOrID CardEngine.MatchCardInstance|number
--- @return boolean
function PokemonBase.IsKnockedOut(match, instanceOrID)
	local maxHP = PokemonBase.GetMaxHP(match, instanceOrID)

	return maxHP > 0 and PokemonBase.GetDamage(match, instanceOrID) >= maxHP
end

--- Counts the Trainer cards of one kind attached to a Pokémon
--- @param match CardEngine.Match
--- @param instanceOrID CardEngine.MatchCardInstance|number
--- @param cardID string
--- @return number
function PokemonBase.CountAttachedCard(match, instanceOrID, cardID)
	local count = 0

	for _, attached in ipairs(match:GetAttached(instanceOrID)) do
		if (attached.cardID == cardID) then
			count = count + 1
		end
	end

	return count
end

--- Deals damage to a Pokémon. For an attack on the Defending Pokémon pass `attacker` and
--- `isAttack`: Weakness doubles it, Resistance takes 30 off, PlusPower and Defender adjust it, then
--- the IncomingDamage query applies whatever is in force. Bench, self and Poison damage leave
--- `isAttack` off.
--- @param match CardEngine.Match
--- @param instanceOrID CardEngine.MatchCardInstance|number
--- @param amount number
--- @param options table? `attacker`, `isAttack`, `applyWeakness` (default: isAttack), `reason`
--- @return number damage # What actually landed
--- @return boolean weak
--- @return boolean resisted
function PokemonBase.DealDamage(match, instanceOrID, amount, options)
	local instance = match:ResolveInstance(instanceOrID)

	options = options or {}

	if (not instance or amount <= 0) then
		return 0, false, false
	end

	local attacker = options.attacker and match:ResolveInstance(options.attacker)
	local applyWeakness = options.applyWeakness

	if (applyWeakness == nil) then
		applyWeakness = options.isAttack == true
	end

	local damage = amount
	local weak, resisted = false, false

	if (applyWeakness and attacker) then
		local weakness = PokemonBase.GetWeakness(match, instance)
		local resistance = PokemonBase.GetResistance(match, instance)

		if (weakness and PokemonBase.IsOfType(match, attacker, weakness)) then
			damage = damage * PokemonBase.WEAKNESS_MULTIPLIER
			weak = true
		end

		if (resistance and PokemonBase.IsOfType(match, attacker, resistance)) then
			damage = damage - PokemonBase.RESISTANCE_REDUCTION
			resisted = true
		end

		damage = math.max(0, damage)
	end

	if (options.isAttack and attacker) then
		-- "If this Pokémon's attack does damage to the Defending Pokémon (after applying Weakness and
		-- Resistance), the attack does 10 more damage"
		if (damage > 0) then
			damage = damage + PokemonBase.CountAttachedCard(match, attacker, PokemonBase.PLUSPOWER_ID)
				* PokemonBase.PLUSPOWER_BONUS
		end

		damage = damage - PokemonBase.CountAttachedCard(match, instance, PokemonBase.DEFENDER_ID)
			* PokemonBase.DEFENDER_REDUCTION
	end

	damage = match:Query("IncomingDamage", {
		instance = instance,
		player = instance.controller,
		attacker = attacker,
		isAttack = options.isAttack == true,
	}, damage)

	damage = math.max(0, math.floor(damage))

	if (damage > 0) then
		CardEngine.Match.AddCounter(match, instance, PokemonBase.DAMAGE_COUNTER, damage)
	end

	match:AddEvent({
		type = "pokemon_damage",
		instance = instance.id,
		amount = damage,
		weak = weak,
		resisted = resisted,
		reason = options.reason,
	})

	-- A Pokémon that hits back when it is hit (Machamp's Strikes Back)
	if (options.isAttack and attacker and damage > 0) then
		PokemonBase.RunPassivePower(match, instance, "OnDamagedByAttack", { attacker = attacker, damage = damage })
	end

	return damage, weak, resisted
end

--- Removes damage from a Pokémon
--- @param match CardEngine.Match
--- @param instanceOrID CardEngine.MatchCardInstance|number
--- @param amount number? How much, or nil for all of it
--- @return number # How much was removed
function PokemonBase.Heal(match, instanceOrID, amount)
	local instance = match:ResolveInstance(instanceOrID)

	if (not instance) then
		return 0
	end

	local healed = math.min(PokemonBase.GetDamage(match, instance), amount or math.huge)

	if (healed <= 0) then
		return 0
	end

	CardEngine.Match.AddCounter(match, instance, PokemonBase.DAMAGE_COUNTER, -healed)

	match:AddEvent({
		type = "pokemon_healed",
		instance = instance.id,
		amount = healed,
	})

	return healed
end

--- Puts a card out of play with everything attached and every stage beneath it, forgetting what
--- happened to them. A card that comes back (Revive, Scoop Up) comes back fresh.
--- @param match CardEngine.Match
--- @param instanceOrID CardEngine.MatchCardInstance|number
--- @param zoneKey string? Where it goes (default: the discard pile)
--- @param playerIndex number? Whose (default: the card's owner)
function PokemonBase.PutOutOfPlay(match, instanceOrID, zoneKey, playerIndex)
	local instance = match:ResolveInstance(instanceOrID)

	if (not instance) then
		return
	end

	local leaving = { instance }

	table.Add(leaving, match:GetAttached(instance))
	table.Add(leaving, match:GetBeneath(instance))

	CardEngine.Match.DetachCard(match, instance)
	CardEngine.Match.MoveCard(match, instance, zoneKey or "Discard", playerIndex or instance.owner, {
		faceDown = false,
	})

	for _, card in ipairs(leaving) do
		CardEngine.Match.ClearInstance(match, card)
	end
end

--- Discards one card attached to a Pokémon, such as an Energy card
--- @param match CardEngine.Match
--- @param instanceOrID CardEngine.MatchCardInstance|number
function PokemonBase.DiscardAttached(match, instanceOrID)
	local instance = match:ResolveInstance(instanceOrID)

	if (not instance) then
		return
	end

	CardEngine.Match.DetachCard(match, instance)
	CardEngine.Match.MoveCard(match, instance, "Discard", instance.owner, { keepAttached = true })
	CardEngine.Match.ClearInstance(match, instance)
end

--- Knocks a Pokémon out: it and everything on it are discarded and the opponent takes a prize.
--- Clefairy Doll gives up no prize. Promotion is left to CheckKnockOuts, so a player who loses two
--- Pokémon to one attack is only asked once.
--- @param match CardEngine.Match
--- @param instanceOrID CardEngine.MatchCardInstance|number
function PokemonBase.KnockOut(match, instanceOrID)
	local instance = match:ResolveInstance(instanceOrID)

	if (not instance) then
		return
	end

	local controller = instance.controller
	local opponent = match:GetOpponentIndex(controller)
	local givesPrize = not PokemonBase.IsDoll(match, instance)

	match:AddEvent({
		type = "pokemon_knocked_out",
		instance = instance.id,
		player = controller,
	})

	PokemonBase.PutOutOfPlay(match, instance)

	if (opponent and givesPrize) then
		PokemonBase.TakePrize(match, opponent)
	end
end

--- Takes a prize card into a player's hand
--- @param match CardEngine.Match
--- @param playerIndex number
--- @return boolean # Whether there was one left
function PokemonBase.TakePrize(match, playerIndex)
	local prizes = match:GetZoneInstances("Prizes", playerIndex)

	if (#prizes == 0) then
		return false
	end

	CardEngine.Match.MoveCard(match, prizes[#prizes], "Hand", playerIndex, { faceDown = false })

	match:AddEvent({
		type = "pokemon_prize_taken",
		player = playerIndex,
		remaining = match:CountZone("Prizes", playerIndex),
	})

	return true
end

--- Knocks out every Pokémon with enough damage, then makes sure both players have an Active.
--- Runs in an action's coroutine, since promoting may ask.
--- @param match CardEngine.Match
function PokemonBase.CheckKnockOuts(match)
	local knockedOut = {}

	for playerIndex = 1, match:GetPlayerCount() do
		for _, instance in ipairs(PokemonBase.GetPokemonInPlay(match, playerIndex)) do
			if (PokemonBase.IsKnockedOut(match, instance)) then
				table.insert(knockedOut, instance)
			end
		end
	end

	if (#knockedOut > 0) then
		-- The blow is seen landing before the Pokémon leaves
		match:Beat()

		for _, instance in ipairs(knockedOut) do
			PokemonBase.KnockOut(match, instance)
		end
	end

	-- Nobody is asked to promote once the game is decided
	if (PokemonBase.CheckGameOver(match)) then
		return
	end

	for playerIndex = 1, match:GetPlayerCount() do
		PokemonBase.PromoteIfNeeded(match, playerIndex)
	end
end

--- Makes sure a player has an Active Pokémon, asking them to bring one up from the Bench if not
--- @param match CardEngine.Match
--- @param playerIndex number
--- @return boolean # Whether they have one now
function PokemonBase.PromoteIfNeeded(match, playerIndex)
	if (PokemonBase.GetActive(match, playerIndex)) then
		return true
	end

	local bench = match:GetZoneInstances("Bench", playerIndex)

	if (#bench == 0) then
		return false
	end

	local chosen = match:PromptInstance(playerIndex, Key("prompt_promote"), bench, 1) or bench[1]

	PokemonBase.MoveToActive(match, chosen)

	return true
end

--- Moves a benched Pokémon into the empty Active spot
--- @param match CardEngine.Match
--- @param instanceOrID CardEngine.MatchCardInstance|number
function PokemonBase.MoveToActive(match, instanceOrID)
	local instance = match:ResolveInstance(instanceOrID)

	if (not instance) then
		return
	end

	CardEngine.Match.MoveCard(match, instance, "Active", instance.controller, {
		slot = 1,
		faceDown = false,
		keepAttached = true,
	})

	match:AddEvent({
		type = "pokemon_promoted",
		instance = instance.id,
		player = instance.controller,
	})
end

--- Swaps the Active Pokémon with a benched one. Going to the Bench removes every Special Condition
--- and attack effect, since those only last while Active.
--- @param match CardEngine.Match
--- @param benchedOrID CardEngine.MatchCardInstance|number The Pokémon coming up
--- @return boolean
function PokemonBase.SwapWithActive(match, benchedOrID)
	local benched = match:ResolveInstance(benchedOrID)

	if (not benched or benched.zone ~= "Bench") then
		return false
	end

	local playerIndex = benched.controller
	local active = PokemonBase.GetActive(match, playerIndex)
	local benchSlot = benched.slot

	if (active) then
		PokemonBase.CureAllConditions(match, active)

		CardEngine.Match.MoveCard(match, active, "Bench", playerIndex, {
			slot = benchSlot,
			faceDown = false,
			keepAttached = true,
		})
	end

	CardEngine.Match.MoveCard(match, benched, "Active", playerIndex, {
		slot = 1,
		faceDown = false,
		keepAttached = true,
	})

	match:AddEvent({
		type = "pokemon_switched",
		instance = benched.id,
		player = playerIndex,
	})

	return true
end
