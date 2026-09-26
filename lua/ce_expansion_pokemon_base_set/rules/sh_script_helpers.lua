-- Building blocks for card scripts, for the phrases Base Set repeats ("Flip a coin. If heads, the
-- Defending Pokémon is now Paralyzed"). An attack's script can have any of:
--   CanUse = fn(match, playerIndex, attacker, defender) -> bool, reason   shared, greys out the button
--   Cost = fn(ctx)                  paid first ("in order to use this attack")
--   Damage = fn(ctx, printed) -> n  when the damage isn't just the printed number
--   Effect = fn(ctx)                everything after the damage
--   Resolve = fn(ctx)               replaces all of the above (Metronome, Mirror Move)

CardEngine.ExpansionSets.PokemonBase = CardEngine.ExpansionSets.PokemonBase or {}

local PokemonBase = CardEngine.ExpansionSets.PokemonBase
local Key = PokemonBase.Key

local Script = {}
PokemonBase.Script = Script

--- "Flip a coin. If heads, the Defending Pokémon is now <condition>."
--- @param condition string
--- @return table
function Script.FlipCondition(condition)
	return {
		Effect = function(ctx)
			if (ctx:FlipHeads()) then
				ctx:ApplyCondition(ctx.defender, condition)
			end
		end,
	}
end

--- "The Defending Pokémon is now <condition>."
--- @param condition string
--- @param options table?
--- @return table
function Script.Condition(condition, options)
	return {
		Effect = function(ctx)
			ctx:ApplyCondition(ctx.defender, condition, options)
		end,
	}
end

--- "Flip N coins. This attack does X damage times the number of heads."
--- @param coins number
--- @return table
function Script.DamagePerHeads(coins)
	return {
		Damage = function(ctx, printed)
			return printed * ctx:FlipCoin(coins)
		end,
	}
end

--- "Flip a coin. If tails, this attack does nothing."
--- @return table
function Script.NothingOnTails()
	return {
		Damage = function(ctx, printed)
			return ctx:FlipHeads() and printed or 0
		end,
	}
end

--- "<Pokémon> does N damage to itself."
--- @param amount number
--- @return table
function Script.SelfDamage(amount)
	return {
		Effect = function(ctx)
			ctx:DamageSelf(amount)
		end,
	}
end

--- "Flip a coin. If tails, <Pokémon> does N damage to itself."
--- @param amount number
--- @return table
function Script.SelfDamageOnTails(amount)
	return {
		Effect = function(ctx)
			if (not ctx:FlipHeads()) then
				ctx:DamageSelf(amount)
			end
		end,
	}
end

--- "Flip a coin. If heads, this attack does X damage plus 10 more damage; if tails, this attack does
--- X damage and <Pokémon> does 10 damage to itself."
--- @return table
function Script.ThrashLike()
	return {
		Damage = function(ctx, printed)
			ctx.heads = ctx:FlipHeads()

			return ctx.heads and (printed + 10) or printed
		end,

		Effect = function(ctx)
			if (not ctx.heads) then
				ctx:DamageSelf(10)
			end
		end,
	}
end

--- "Discard N <type> Energy card(s) attached to <Pokémon> in order to use this attack."
--- @param count number|nil How many, or nil for all
--- @param energyType string?
--- @param extra table? More of the script to merge in
--- @return table
function Script.DiscardEnergyCost(count, energyType, extra)
	local script = extra or {}

	script.Cost = function(ctx)
		ctx:DiscardEnergy(ctx.attacker, count, energyType)
	end

	return script
end

--- "Flip a coin. If heads, prevent all damage done to <Pokémon> during your opponent's next turn."
--- @param effectName string? (default: pokemon_prevent_damage)
--- @return table
function Script.ProtectSelfOnHeads(effectName)
	return {
		Effect = function(ctx)
			if (ctx:FlipHeads()) then
				ctx:AddEffectUntilOpponentTurnEnds(effectName or "pokemon_prevent_damage", nil, ctx.attacker)
			end
		end,
	}
end

--- "Does X damage plus 10 more damage for each <type> Energy attached but not used to pay for this
--- attack's Energy cost. Extra <type> Energy after the 2nd doesn't count."
--- @param energyType string
--- @return table
function Script.ExtraEnergyDamage(energyType)
	return {
		Damage = function(ctx, printed)
			return printed + 10 * PokemonBase.CountExtraEnergy(ctx.match, ctx.attacker, energyType,
				ctx.attack.Cost, 2)
		end,
	}
end

--- "If the Defending Pokémon has any Energy cards attached to it, choose 1 of them and discard it."
--- @return table
function Script.DiscardDefenderEnergy()
	return {
		Effect = function(ctx)
			if (PokemonBase.IsInPlay(ctx.match, ctx.defender)) then
				ctx:DiscardEnergy(ctx.defender, 1)
			end
		end,
	}
end

--- Whirlwind and Lure: the Defending Pokémon is switched with one of the opponent's benched ones
--- @param opponentChooses boolean Whether the opponent picks which (Whirlwind) or the attacker does (Lure)
--- @return table
function Script.SwitchDefender(opponentChooses)
	return {
		Effect = function(ctx)
			local bench = ctx:GetOpponentBench()

			if (#bench == 0 or not ctx:CanAffect(ctx.defender)) then
				return
			end

			local chosen = ctx:Choose(bench, Key(opponentChooses and "prompt_whirlwind" or "prompt_lure"), 1,
				false, false, opponentChooses and ctx.opponent or ctx.player)

			if (chosen) then
				PokemonBase.SwapWithActive(ctx.match, chosen)
			end
		end,
	}
end

--- "Discard N <type> Energy in order to use this attack. Remove all damage counters from <Pokémon>."
--- @param energyType string
--- @return table
function Script.Recover(energyType)
	return Script.DiscardEnergyCost(1, energyType, {
		Effect = function(ctx)
			ctx:Heal(ctx.attacker)
		end,
	})
end

--- Selfdestruct: damage to every benched Pokémon on both sides, and to the attacker itself
--- @param benchDamage number
--- @param selfDamage number
--- @return table
function Script.Selfdestruct(benchDamage, selfDamage)
	return {
		Effect = function(ctx)
			ctx:DamageBench(ctx.opponent, benchDamage)
			ctx:DamageBench(ctx.player, benchDamage)
			ctx:DamageSelf(selfDamage)
		end,
	}
end

--- Merges several script pieces into one, for an attack that does more than one of these things
--- @vararg table
--- @return table
function Script.Combine(...)
	local combined = {}
	local effects = {}

	for _, piece in ipairs({ ... }) do
		for key, value in pairs(piece) do
			if (key == "Effect") then
				table.insert(effects, value)
			else
				combined[key] = value
			end
		end
	end

	if (#effects > 0) then
		combined.Effect = function(ctx)
			for _, effect in ipairs(effects) do
				effect(ctx)
			end
		end
	end

	return combined
end

--- The cards in a player's hand other than one being played
--- @param match CardEngine.Match
--- @param playerIndex number
--- @param instance CardEngine.MatchCardInstance?
--- @return number
function Script.CountOtherCardsInHand(match, playerIndex, instance)
	local count = 0

	for _, other in ipairs(match:GetZoneInstances("Hand", playerIndex)) do
		if (not instance or other.id ~= instance.id) then
			count = count + 1
		end
	end

	return count
end

--- Whether any card in a zone matches some attributes
--- @param match CardEngine.Match
--- @param zoneKey string
--- @param playerIndex number
--- @param attributes table?
--- @return boolean
function Script.ZoneHas(match, zoneKey, playerIndex, attributes)
	for _, instance in ipairs(match:GetZoneInstances(zoneKey, playerIndex)) do
		local card = match:GetInstanceCard(instance)

		if (card and (not attributes or CardEngine.Deck.CardMatches(card, attributes))) then
			return true
		end
	end

	return false
end

--- The Pokémon a player has in play that pass a test
--- @param match CardEngine.Match
--- @param playerIndex number
--- @param predicate fun(instance: CardEngine.MatchCardInstance): boolean
--- @return CardEngine.MatchCardInstance[]
function Script.PokemonWhere(match, playerIndex, predicate)
	local found = {}

	for _, instance in ipairs(PokemonBase.GetPokemonInPlay(match, playerIndex)) do
		if (predicate(instance)) then
			table.insert(found, instance)
		end
	end

	return found
end

--- The Pokémon a player has in play with any Energy attached
--- @param match CardEngine.Match
--- @param playerIndex number
--- @return CardEngine.MatchCardInstance[]
function Script.PokemonWithEnergy(match, playerIndex)
	return Script.PokemonWhere(match, playerIndex, function(instance)
		return #PokemonBase.GetEnergyCards(match, instance) > 0
	end)
end

--- The Pokémon a player has in play with any damage on them
--- @param match CardEngine.Match
--- @param playerIndex number
--- @return CardEngine.MatchCardInstance[]
function Script.DamagedPokemon(match, playerIndex)
	return Script.PokemonWhere(match, playerIndex, function(instance)
		return PokemonBase.GetDamage(match, instance) > 0
	end)
end

--- A reason for a Trainer that cannot be played, or true when it can
--- @param condition boolean
--- @param reason string A language key suffix
--- @return boolean
--- @return string?
function Script.Require(condition, reason)
	if (condition) then
		return true
	end

	return false, Key(reason)
end
