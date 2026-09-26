
local PokemonBase = CardEngine.ExpansionSets.PokemonBase
local Script = PokemonBase.Script
local Register = PokemonBase.RegisterCardScript
local Key = PokemonBase.Key

Register("dugtrio", {
	Attacks = {
		-- Earthquake: "Does 10 damage to each of your own Benched Pokémon."
		[2] = {
			Effect = function(ctx)
				ctx:DamageBench(ctx.player, 10)
			end,
		},
	},
})

Register("machamp", {
	-- Strikes Back: "Whenever your opponent's attack damages Machamp (even if Machamp is Knocked
	-- Out), this power does 10 damage to the attacking Pokémon. (Don't apply Weakness and
	-- Resistance.)"
	Power = {
		OnDamagedByAttack = function(ctx, info)
			if (not PokemonBase.IsInPlay(ctx.match, info.attacker)) then
				return
			end

			ctx:Log(Key("log_strikes_back"), { card = ctx:NameOf(info.attacker) })

			PokemonBase.DealDamage(ctx.match, info.attacker, 10, { reason = Key("power_strikes_back") })
		end,
	},
})

Register("machoke", {
	Attacks = {
		-- Karate Chop: "Does 50 damage minus 10 damage for each damage counter on Machoke."
		[1] = {
			Damage = function(ctx, printed)
				return math.max(0, printed - ctx:GetDamageOn(ctx.attacker))
			end,
		},
		-- Submission: "Machoke does 20 damage to itself."
		[2] = Script.SelfDamage(20),
	},
})

Register("onix", {
	Attacks = {
		-- Harden: "During your opponent's next turn, whenever 30 or less damage is done to Onix
		-- (after applying Weakness and Resistance), prevent that damage."
		[2] = {
			Effect = function(ctx)
				ctx:AddEffectUntilOpponentTurnEnds("pokemon_prevent_small_damage", { threshold = 30 }, ctx.attacker)
			end,
		},
	},
})

Register("sandshrew", {
	Attacks = {
		-- Sand-attack: "If the Defending Pokémon tries to attack during your opponent's next turn,
		-- your opponent flips a coin. If tails, that attack does nothing."
		[1] = {
			Effect = function(ctx)
				ctx:AddEffectUntilOpponentTurnEnds("pokemon_attack_needs_flip", nil, ctx.defender)
			end,
		},
	},
})
