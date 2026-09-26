-- What an attack leaves behind. Registered rather than inline so the client folds the same effects
-- as the server (how the board knows an attack is disabled without asking). Each is put on a
-- Pokémon in play, and the engine removes it when that Pokémon moves, which is when the rules end it.

CardEngine.ExpansionSets.PokemonBase = CardEngine.ExpansionSets.PokemonBase or {}

local PokemonBase = CardEngine.ExpansionSets.PokemonBase
local Key = PokemonBase.Key

--- Prevents all damage done to a Pokémon by attacks. Withdraw, Stiffen, Scrunch.
CardEngine.Match.Effects.Register("pokemon_prevent_damage", {
	Label = Key("effect_prevent_damage"),

	Modify = {
		IncomingDamage = function(context, value)
			return context.isAttack and 0 or value
		end,
	},
})

--- Prevents all effects of attacks, damage included. Agility, Barrier.
CardEngine.Match.Effects.Register("pokemon_prevent_all", {
	Label = Key("effect_prevent_all"),

	Modify = {
		IncomingDamage = function(context, value)
			return context.isAttack and 0 or value
		end,

		AttackEffectsApply = function()
			return false
		end,
	},
})

--- Prevents damage from an attack when it is small enough. Onix's Harden.
CardEngine.Match.Effects.Register("pokemon_prevent_small_damage", {
	Label = Key("effect_harden"),

	Modify = {
		IncomingDamage = function(context, value, effect)
			if (context.isAttack and value <= (effect.args.threshold or 30)) then
				return 0
			end

			return value
		end,
	},
})

--- One of a Pokémon's attacks cannot be used. Poliwhirl's Amnesia.
CardEngine.Match.Effects.Register("pokemon_attack_disabled", {
	Label = Key("effect_attack_disabled"),

	Modify = {
		AttackAllowed = function(context, value, effect)
			if (context.attackIndex == effect.args.attack) then
				return false
			end

			return value
		end,
	},
})

--- The Pokémon has to flip a coin to attack, and tails does nothing. Sandshrew's Sand-attack.
CardEngine.Match.Effects.Register("pokemon_attack_needs_flip", {
	Label = Key("effect_attack_needs_flip"),

	Modify = {
		AttackNeedsFlip = function()
			return true
		end,
	},
})

--- The Pokémon's Weakness is now another type. Porygon's Conversion 1.
CardEngine.Match.Effects.Register("pokemon_weakness_changed", {
	Label = Key("effect_weakness_changed"),

	Modify = {
		Weakness = function(context, value, effect)
			return effect.args.type
		end,
	},
})

--- The Pokémon's Resistance is now another type. Porygon's Conversion 2.
CardEngine.Match.Effects.Register("pokemon_resistance_changed", {
	Label = Key("effect_resistance_changed"),

	Modify = {
		Resistance = function(context, value, effect)
			return effect.args.type
		end,
	},
})

--- Every Energy attached to the Pokémon provides Fire, as many units as it did before.
--- Charizard's Energy Burn.
CardEngine.Match.Effects.Register("pokemon_energy_burn", {
	Label = Key("effect_energy_burn"),

	Modify = {
		EnergyProvided = function(context, value)
			local burned = {}

			for index = 1, #value do
				burned[index] = "Fire"
			end

			return burned
		end,
	},
})
