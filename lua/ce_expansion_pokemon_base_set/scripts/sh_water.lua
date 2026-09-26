
local PokemonBase = CardEngine.ExpansionSets.PokemonBase
local Script = PokemonBase.Script
local Register = PokemonBase.RegisterCardScript
local Key = PokemonBase.Key

--- The Water Energy cards in a player's hand
local function waterEnergyInHand(match, playerIndex)
	local found = {}

	for _, instance in ipairs(match:GetZoneInstances("Hand", playerIndex)) do
		if (PokemonBase.IsBasicEnergyOfType(match:GetInstanceCard(instance), "Water")) then
			table.insert(found, instance)
		end
	end

	return found
end

--- A player's Water Pokémon in play
local function waterPokemon(match, playerIndex)
	return Script.PokemonWhere(match, playerIndex, function(instance)
		return PokemonBase.IsOfType(match, instance, "Water")
	end)
end

Register("blastoise", {
	-- Rain Dance: "As often as you like during your turn (before your attack), you may attach 1
	-- Water Energy card to 1 of your Water Pokémon. (This doesn't use up your 1 Energy card
	-- attachment for the turn.)"
	Power = {
		Activated = true,

		CanUse = function(match, playerIndex, instance)
			return Script.Require(#waterEnergyInHand(match, playerIndex) > 0
				and #waterPokemon(match, playerIndex) > 0, "reason_rain_dance")
		end,

		Use = function(ctx)
			local energy = ctx:Choose(waterEnergyInHand(ctx.match, ctx.player), Key("prompt_rain_dance_energy"), 1)
			local target = energy and ctx:Choose(waterPokemon(ctx.match, ctx.player), Key("prompt_rain_dance_target"), 1)

			if (energy and target) then
				ctx:Attach(energy, target)
			end
		end,
	},

	Attacks = {
		-- Hydro Pump
		[1] = Script.ExtraEnergyDamage("Water"),
	},
})

Register("dewgong", {
	Attacks = {
		-- Ice Beam
		[2] = Script.FlipCondition("Paralyzed"),
	},
})

Register("gyarados", {
	Attacks = {
		-- Bubblebeam
		[2] = Script.FlipCondition("Paralyzed"),
	},
})

Register("magikarp", {
	Attacks = {
		-- Flail: "Does 10 damage times the number of damage counters on Magikarp."
		[2] = {
			Damage = function(ctx, printed)
				return printed * math.floor(ctx:GetDamageOn(ctx.attacker) / 10)
			end,
		},
	},
})

Register("poliwag", {
	Attacks = {
		-- Water Gun
		[1] = Script.ExtraEnergyDamage("Water"),
	},
})

Register("poliwhirl", {
	Attacks = {
		-- Amnesia: "Choose 1 of the Defending Pokémon's attacks. That Pokémon can't use that attack
		-- during your opponent's next turn."
		[1] = {
			Effect = function(ctx)
				if (not ctx:CanAffect(ctx.defender)) then
					return
				end

				local options = {}

				for index, attack in ipairs(PokemonBase.GetAttacks(ctx.match, ctx.defender)) do
					table.insert(options, { value = index, label = Key("option_attack"), params = { name = attack.Name } })
				end

				local chosen = ctx:ChooseOption(options, Key("prompt_amnesia"))

				if (chosen) then
					ctx:AddEffectUntilOpponentTurnEnds("pokemon_attack_disabled", { attack = tonumber(chosen) },
						ctx.defender)
				end
			end,
		},
		-- Doubleslap
		[2] = Script.DamagePerHeads(2),
	},
})

Register("poliwrath", {
	Attacks = {
		-- Water Gun
		[1] = Script.ExtraEnergyDamage("Water"),
		-- Whirlpool
		[2] = Script.DiscardDefenderEnergy(),
	},
})

Register("squirtle", {
	Attacks = {
		-- Bubble
		[1] = Script.FlipCondition("Paralyzed"),
		-- Withdraw
		[2] = Script.ProtectSelfOnHeads(),
	},
})

Register("starmie", {
	Attacks = {
		-- Recover
		[1] = Script.Recover("Water"),
		-- Star Freeze
		[2] = Script.FlipCondition("Paralyzed"),
	},
})

Register("wartortle", {
	Attacks = {
		-- Withdraw
		[1] = Script.ProtectSelfOnHeads(),
	},
})
