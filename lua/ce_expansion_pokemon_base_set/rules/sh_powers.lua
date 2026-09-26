-- Pokémon Powers come in two kinds. Most are used by the player, any number of times before
-- attacking, from the Active spot or Bench (Rain Dance, Energy Trans, Damage Swap, Energy Burn,
-- Buzzap). One just happens (Machamp's Strikes Back). A Pokémon that is Asleep, Confused or
-- Paralyzed can't use its power. A card's script says which:
--   Power = { Activated = true, CanUse = fn(match, playerIndex, instance), Use = fn(ctx) }
--   Power = { OnDamagedByAttack = fn(ctx, info) }

CardEngine.ExpansionSets.PokemonBase = CardEngine.ExpansionSets.PokemonBase or {}

local PokemonBase = CardEngine.ExpansionSets.PokemonBase
local Key = PokemonBase.Key

--- Whether a player may use a Pokémon's power right now
--- @param match CardEngine.Match
--- @param playerIndex number
--- @param instanceOrID CardEngine.MatchCardInstance|number
--- @return boolean
--- @return string? reason
function PokemonBase.CanUsePower(match, playerIndex, instanceOrID)
	local instance = match:ResolveInstance(instanceOrID)

	if (not instance or instance.controller ~= playerIndex or not PokemonBase.IsInPlay(match, instance)) then
		return false, Key("reason_no_such_pokemon")
	end

	local power = PokemonBase.GetPowerScript(match, instance)

	if (not power or not power.Activated) then
		return false, Key("reason_no_power")
	end

	local prevented, condition = PokemonBase.IsPreventedBy(match, instance, "PreventsPower")

	if (prevented) then
		return false, PokemonBase.CONDITIONS[condition].Label
	end

	if (isfunction(power.CanUse)) then
		return power.CanUse(match, playerIndex, instance)
	end

	return true
end

--- Whether any of a player's Pokémon has a power they could use right now
--- @param match CardEngine.Match
--- @param playerIndex number
--- @return boolean
function PokemonBase.HasUsablePower(match, playerIndex)
	for _, instance in ipairs(PokemonBase.GetPokemonInPlay(match, playerIndex)) do
		if (PokemonBase.CanUsePower(match, playerIndex, instance)) then
			return true
		end
	end

	return false
end

--- Uses a Pokémon's power
--- @param match CardEngine.Match
--- @param playerIndex number
--- @param instanceOrID CardEngine.MatchCardInstance|number
function PokemonBase.UsePower(match, playerIndex, instanceOrID)
	local instance = match:ResolveInstance(instanceOrID)
	local power = PokemonBase.GetPowerScript(match, instance)
	local printed = PokemonBase.GetPrintedPower(match:GetInstanceCard(instance))

	match:AddLogMessage(Key("log_used_power"), {
		player = match:GetPlayer(playerIndex).name,
		card = match:GetInstanceCard(instance):GetName(),
		power = printed and printed.Name or "?",
	})

	power.Use(PokemonBase.BuildContext(match, playerIndex, instance))
end

--- Runs a power that happens by itself, if the Pokémon has one for this moment and nothing stops it
--- @param match CardEngine.Match
--- @param instanceOrID CardEngine.MatchCardInstance|number
--- @param moment string e.g. "OnDamagedByAttack"
--- @param info table What happened
function PokemonBase.RunPassivePower(match, instanceOrID, moment, info)
	local instance = match:ResolveInstance(instanceOrID)
	local power = instance and PokemonBase.GetPowerScript(match, instance)

	if (not power or not isfunction(power[moment])) then
		return
	end

	if (PokemonBase.IsPreventedBy(match, instance, "PreventsPower")) then
		return
	end

	power[moment](PokemonBase.BuildContext(match, instance.controller, instance), info)
end
