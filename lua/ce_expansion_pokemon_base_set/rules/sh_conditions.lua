-- Special Conditions per the 1999 rulebook. Asleep, Confused and Paralyzed replace each other;
-- Poisoned sits alongside. Only the Active Pokémon can have one, and moving to the Bench or
-- evolving removes them all.
--   Asleep: can't attack or retreat; a coin between turns wakes it on heads.
--   Confused: a coin to attack, tails does 20 to itself; retreating pays first, then flips.
--   Paralyzed: can't attack or retreat during its owner's next turn, then wears off.
--   Poisoned: 10 damage between turns (20 for Nidoking's Toxic) until cured.

CardEngine.ExpansionSets.PokemonBase = CardEngine.ExpansionSets.PokemonBase or {}

local PokemonBase = CardEngine.ExpansionSets.PokemonBase
local Key = PokemonBase.Key

--- The condition that sits alongside another rather than replacing it
PokemonBase.STACKING_CONDITIONS = {
	Poisoned = true,
}

--- Every condition, and what it stops a Pokémon doing
PokemonBase.CONDITIONS = {
	Asleep = {
		Label = Key("condition_asleep"),
		PreventsAttack = true,
		PreventsRetreat = true,
		PreventsPower = true,
	},
	Confused = {
		Label = Key("condition_confused"),
		PreventsPower = true,
	},
	Paralyzed = {
		Label = Key("condition_paralyzed"),
		PreventsAttack = true,
		PreventsRetreat = true,
		PreventsPower = true,
	},
	Poisoned = {
		Label = Key("condition_poisoned"),
	},
}

--- How much damage Poison does between turns, unless a card says otherwise
PokemonBase.POISON_DAMAGE = 10

--- How much damage a Confused Pokémon does to itself when its flip fails
PokemonBase.CONFUSION_DAMAGE = 20

--- The instance state key a condition is stored under
--- @param condition string
--- @return string
function PokemonBase.GetConditionSlot(condition)
	return PokemonBase.STACKING_CONDITIONS[condition] and ("condition_" .. condition) or "condition"
end

--- @param match CardEngine.Match
--- @param instanceOrID CardEngine.MatchCardInstance|number
--- @param condition string
--- @return boolean
function PokemonBase.HasCondition(match, instanceOrID, condition)
	return match:GetInstanceState(instanceOrID, PokemonBase.GetConditionSlot(condition)) == condition
end

--- Every condition on a Pokémon, in a fixed order
--- @param match CardEngine.Match
--- @param instanceOrID CardEngine.MatchCardInstance|number
--- @return string[]
function PokemonBase.GetConditions(match, instanceOrID)
	local conditions = {}
	local single = match:GetInstanceState(instanceOrID, "condition")

	if (single) then
		table.insert(conditions, single)
	end

	for condition in pairs(PokemonBase.STACKING_CONDITIONS) do
		if (PokemonBase.HasCondition(match, instanceOrID, condition)) then
			table.insert(conditions, condition)
		end
	end

	table.sort(conditions)

	return conditions
end

--- Whether any condition on a Pokémon stops it doing something
--- @param match CardEngine.Match
--- @param instanceOrID CardEngine.MatchCardInstance|number
--- @param what string "PreventsAttack", "PreventsRetreat" or "PreventsPower"
--- @return boolean prevented
--- @return string? condition # The condition in the way
function PokemonBase.IsPreventedBy(match, instanceOrID, what)
	for _, condition in ipairs(PokemonBase.GetConditions(match, instanceOrID)) do
		local definition = PokemonBase.CONDITIONS[condition]

		if (definition and definition[what]) then
			return true, condition
		end
	end

	return false, nil
end

--- Puts a condition on a Pokémon. Does nothing to a benched Pokémon, or to Clefairy Doll, which
--- cannot be Asleep, Confused, Paralyzed or Poisoned.
--- @param match CardEngine.Match
--- @param instanceOrID CardEngine.MatchCardInstance|number
--- @param condition string
--- @param options table? `poisonDamage` for a stronger poison
--- @return boolean # Whether it took hold
function PokemonBase.ApplyCondition(match, instanceOrID, condition, options)
	local instance = match:ResolveInstance(instanceOrID)

	if (not instance or not PokemonBase.CONDITIONS[condition] or instance.zone ~= "Active") then
		return false
	end

	if (match:GetInstanceAttribute(instance, "PlayableAsBasic", false)) then
		return false
	end

	CardEngine.Match.SetInstanceState(match, instance, PokemonBase.GetConditionSlot(condition), condition)

	if (condition == "Poisoned") then
		CardEngine.Match.SetInstanceState(match, instance, "poisonDamage",
			(options and options.poisonDamage) or PokemonBase.POISON_DAMAGE)
	elseif (condition == "Paralyzed") then
		-- Wears off at the end of its owner's next turn, the first of their turns to end after this one
		CardEngine.Match.SetInstanceState(match, instance, "paralyzedOnTurn", match:GetTurn())
	end

	match:AddEvent({
		type = "pokemon_condition_applied",
		instance = instance.id,
		condition = condition,
	})

	return true
end

--- Takes one condition off a Pokémon
--- @param match CardEngine.Match
--- @param instanceOrID CardEngine.MatchCardInstance|number
--- @param condition string
function PokemonBase.CureCondition(match, instanceOrID, condition)
	local instance = match:ResolveInstance(instanceOrID)

	if (not instance or not PokemonBase.HasCondition(match, instance, condition)) then
		return
	end

	CardEngine.Match.SetInstanceState(match, instance, PokemonBase.GetConditionSlot(condition), nil)

	if (condition == "Poisoned") then
		CardEngine.Match.SetInstanceState(match, instance, "poisonDamage", nil)
	elseif (condition == "Paralyzed") then
		CardEngine.Match.SetInstanceState(match, instance, "paralyzedOnTurn", nil)
	end

	match:AddEvent({
		type = "pokemon_condition_cured",
		instance = instance.id,
		condition = condition,
	})
end

--- Takes every condition off a Pokémon
--- @param match CardEngine.Match
--- @param instanceOrID CardEngine.MatchCardInstance|number
--- @return number # How many there were
function PokemonBase.CureAllConditions(match, instanceOrID)
	local conditions = PokemonBase.GetConditions(match, instanceOrID)

	for _, condition in ipairs(conditions) do
		PokemonBase.CureCondition(match, instanceOrID, condition)
	end

	return #conditions
end

--- The conditions' part of the between-turns step: Poison damages, a sleeping Pokémon flips to wake,
--- and a Paralysis that has cost its owner their turn wears off.
--- @param match CardEngine.Match
--- @param instanceOrID CardEngine.MatchCardInstance|number An Active Pokémon
--- @param endingPlayer number Whose turn has just ended
function PokemonBase.ResolveBetweenTurns(match, instanceOrID, endingPlayer)
	local instance = match:ResolveInstance(instanceOrID)

	if (not instance) then
		return
	end

	if (PokemonBase.HasCondition(match, instance, "Poisoned")) then
		PokemonBase.DealDamage(match, instance,
			match:GetInstanceState(instance, "poisonDamage") or PokemonBase.POISON_DAMAGE, {
				reason = Key("condition_poisoned"),
			})
	end

	if (PokemonBase.IsKnockedOut(match, instance)) then
		return
	end

	if (PokemonBase.HasCondition(match, instance, "Asleep")) then
		if (match:FlipCoin(1, Key("flip_sleep"), instance) == 1) then
			PokemonBase.CureCondition(match, instance, "Asleep")
		end
	end

	if (PokemonBase.HasCondition(match, instance, "Paralyzed")
			and instance.controller == endingPlayer
			and (match:GetInstanceState(instance, "paralyzedOnTurn") or 0) < match:GetTurn()) then
		PokemonBase.CureCondition(match, instance, "Paralyzed")
	end
end
