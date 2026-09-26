
local PokemonBase = CardEngine.ExpansionSets.PokemonBase
local Script = PokemonBase.Script
local Register = PokemonBase.RegisterCardScript
local Key = PokemonBase.Key

Register("beedrill", {
	Attacks = {
		-- Twineedle: "Flip 2 coins. This attack does 30 damage times the number of heads."
		[1] = Script.DamagePerHeads(2),
		-- Poison Sting: "Flip a coin. If heads, the Defending Pokémon is now Poisoned."
		[2] = Script.FlipCondition("Poisoned"),
	},
})

Register("bulbasaur", {
	Attacks = {
		-- Leech Seed: "Unless all damage from this attack is prevented, you may remove 1 damage
		-- counter from Bulbasaur."
		[1] = {
			Effect = function(ctx)
				if (ctx.damage > 0) then
					ctx:Heal(ctx.attacker, 10)
				end
			end,
		},
	},
})

Register("caterpie", {
	Attacks = {
		-- String Shot
		[1] = Script.FlipCondition("Paralyzed"),
	},
})

Register("ivysaur", {
	Attacks = {
		-- Poisonpowder: "The Defending Pokémon is now Poisoned."
		[2] = Script.Condition("Poisoned"),
	},
})

Register("kakuna", {
	Attacks = {
		-- Stiffen
		[1] = Script.ProtectSelfOnHeads(),
		-- Poisonpowder: "Flip a coin. If heads, the Defending Pokémon is now Poisoned."
		[2] = Script.FlipCondition("Poisoned"),
	},
})

Register("koffing", {
	Attacks = {
		-- Foul Gas: "Flip a coin. If heads, the Defending Pokémon is now Poisoned; if tails, it is
		-- now Confused."
		[1] = {
			Effect = function(ctx)
				ctx:ApplyCondition(ctx.defender, ctx:FlipHeads() and "Poisoned" or "Confused")
			end,
		},
	},
})

Register("metapod", {
	Attacks = {
		-- Stiffen
		[1] = Script.ProtectSelfOnHeads(),
		-- Stun Spore
		[2] = Script.FlipCondition("Paralyzed"),
	},
})

Register("nidoking", {
	Attacks = {
		-- Thrash
		[1] = Script.ThrashLike(),
		-- Toxic: "The Defending Pokémon is now Poisoned. It now takes 20 Poison damage instead of 10
		-- after each player's turn (even if it was already Poisoned)."
		[2] = Script.Condition("Poisoned", { poisonDamage = 20 }),
	},
})

Register("nidoran", {
	Attacks = {
		-- Horn Hazard: "Flip a coin. If tails, this attack does nothing."
		[1] = Script.NothingOnTails(),
	},
})

Register("nidorino", {
	Attacks = {
		-- Double Kick
		[1] = Script.DamagePerHeads(2),
	},
})

Register("tangela", {
	Attacks = {
		-- Bind
		[1] = Script.FlipCondition("Paralyzed"),
		-- Poisonpowder
		[2] = Script.Condition("Poisoned"),
	},
})

Register("weedle", {
	Attacks = {
		-- Poison Sting
		[1] = Script.FlipCondition("Poisoned"),
	},
})

--- The Pokémon a player has that carry a Grass Energy card
local function withGrassEnergy(match, playerIndex)
	return Script.PokemonWhere(match, playerIndex, function(instance)
		return #PokemonBase.GetBasicEnergyCardsOfType(match, instance, "Grass") > 0
	end)
end

Register("venusaur", {
	-- Energy Trans: "As often as you like during your turn (before your attack), you may take 1
	-- Grass Energy card attached to 1 of your Pokémon and attach it to a different one."
	Power = {
		Activated = true,

		CanUse = function(match, playerIndex, instance)
			return Script.Require(#withGrassEnergy(match, playerIndex) > 0
				and #PokemonBase.GetPokemonInPlay(match, playerIndex) > 1, "reason_energy_trans")
		end,

		Use = function(ctx)
			local from = ctx:Choose(withGrassEnergy(ctx.match, ctx.player), Key("prompt_energy_trans_from"), 1)

			if (not from) then
				return
			end

			local others = ctx:Filter(ctx:GetOwnPokemon(), function(instance)
				return instance.id ~= from.id
			end)

			local to = ctx:Choose(others, Key("prompt_energy_trans_to"), 1)
			local energy = PokemonBase.GetBasicEnergyCardsOfType(ctx.match, from, "Grass")[1]

			if (to and energy) then
				ctx:Attach(energy, to)
			end
		end,
	},
})
