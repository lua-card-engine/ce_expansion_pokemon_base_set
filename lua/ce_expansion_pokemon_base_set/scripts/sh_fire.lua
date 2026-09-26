
local PokemonBase = CardEngine.ExpansionSets.PokemonBase
local Script = PokemonBase.Script
local Register = PokemonBase.RegisterCardScript

--- "Discard 1 Fire Energy card attached to <Pokémon> in order to use this attack."
local function flamethrower()
	return Script.DiscardEnergyCost(1, "Fire")
end

Register("arcanine", {
	Attacks = {
		-- Flamethrower
		[1] = flamethrower(),
		-- Take Down: "Arcanine does 30 damage to itself."
		[2] = Script.SelfDamage(30),
	},
})

Register("charizard", {
	-- Energy Burn: "As often as you like during your turn (before your attack), you may turn all
	-- Energy attached to Charizard into Fire Energy for the rest of the turn."
	Power = {
		Activated = true,

		CanUse = function(match, playerIndex, instance)
			return Script.Require(not match:FindEffect("pokemon_energy_burn", instance),
				"reason_energy_burn_active")
		end,

		Use = function(ctx)
			ctx:AddEffectUntilOwnTurnEnds("pokemon_energy_burn", nil, ctx.source)
		end,
	},

	Attacks = {
		-- Fire Spin: "Discard 2 Energy cards attached to Charizard in order to use this attack."
		[1] = Script.DiscardEnergyCost(2),
	},
})

Register("charmander", {
	Attacks = {
		-- Ember
		[2] = flamethrower(),
	},
})

Register("charmeleon", {
	Attacks = {
		-- Flamethrower
		[2] = flamethrower(),
	},
})

Register("magmar", {
	Attacks = {
		-- Flamethrower
		[2] = flamethrower(),
	},
})

Register("ninetales", {
	Attacks = {
		-- Lure: "If your opponent has any Benched Pokémon, choose 1 of them and switch it with his or
		-- her Active Pokémon."
		[1] = Script.SwitchDefender(false),
		-- Fire Blast
		[2] = flamethrower(),
	},
})

Register("vulpix", {
	Attacks = {
		-- Confuse Ray
		[1] = Script.FlipCondition("Confused"),
	},
})
