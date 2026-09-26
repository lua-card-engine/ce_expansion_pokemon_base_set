
local PokemonBase = CardEngine.ExpansionSets.PokemonBase
local Script = PokemonBase.Script
local Register = PokemonBase.RegisterCardScript
local Key = PokemonBase.Key

Register("abra", {
	Attacks = {
		-- Psyshock
		[1] = Script.FlipCondition("Paralyzed"),
	},
})

--- A player's Pokémon that could take a damage counter without being Knocked Out
local function canTakeCounter(match, playerIndex, except)
	return Script.PokemonWhere(match, playerIndex, function(instance)
		return instance.id ~= (except and except.id) and PokemonBase.GetRemainingHP(match, instance) > 10
	end)
end

--- A player's damaged Pokémon that have somewhere to move a counter to
local function canGiveCounter(match, playerIndex)
	return Script.PokemonWhere(match, playerIndex, function(instance)
		return PokemonBase.GetDamage(match, instance) >= 10 and #canTakeCounter(match, playerIndex, instance) > 0
	end)
end

Register("alakazam", {
	-- Damage Swap: "As often as you like during your turn (before your attack), you may move 1 damage
	-- counter from 1 of your Pokémon to another as long as you don't Knock Out that Pokémon."
	Power = {
		Activated = true,

		CanUse = function(match, playerIndex, instance)
			return Script.Require(#canGiveCounter(match, playerIndex) > 0, "reason_damage_swap")
		end,

		Use = function(ctx)
			local match = ctx.match
			local from = ctx:Choose(canGiveCounter(match, ctx.player), Key("prompt_damage_swap_from"), 1)
			local to = from and ctx:Choose(canTakeCounter(match, ctx.player, from), Key("prompt_damage_swap_to"), 1)

			if (not from or not to) then
				return
			end

			CardEngine.Match.AddCounter(match, from, PokemonBase.DAMAGE_COUNTER, -10)
			CardEngine.Match.AddCounter(match, to, PokemonBase.DAMAGE_COUNTER, 10)

			ctx:Log(Key("log_damage_swap"), { from = ctx:NameOf(from), to = ctx:NameOf(to) })
		end,
	},

	Attacks = {
		-- Confuse Ray
		[1] = Script.FlipCondition("Confused"),
	},
})

Register("drowzee", {
	Attacks = {
		-- Confuse Ray
		[2] = Script.FlipCondition("Confused"),
	},
})

Register("gastly", {
	Attacks = {
		-- Sleeping Gas
		[1] = Script.FlipCondition("Asleep"),
		-- Destiny Bond: "Discard 1 Psychic Energy card attached to Gastly in order to use this
		-- attack. If a Pokémon Knocks Out Gastly during your opponent's next turn, Knock Out that
		-- Pokémon."
		[2] = Script.DiscardEnergyCost(1, "Psychic", {
			Effect = function(ctx)
				ctx:SetState(ctx.attacker, "destinyBondTurn", ctx.match:GetTurn() + 1)
			end,
		}),
	},
})

Register("haunter", {
	Attacks = {
		-- Hypnosis: "The Defending Pokémon is now Asleep."
		[1] = Script.Condition("Asleep"),
		-- Dream Eater: "You can't use this attack unless the Defending Pokémon is Asleep."
		[2] = {
			CanUse = function(match, playerIndex, attacker, defender)
				return Script.Require(PokemonBase.HasCondition(match, defender, "Asleep"), "reason_dream_eater")
			end,
		},
	},
})

Register("jynx", {
	Attacks = {
		-- Doubleslap
		[1] = Script.DamagePerHeads(2),
		-- Meditate: "Does 20 damage plus 10 more damage for each damage counter on the Defending
		-- Pokémon."
		[2] = {
			Damage = function(ctx, printed)
				return printed + ctx:GetDamageOn(ctx.defender)
			end,
		},
	},
})

Register("kadabra", {
	Attacks = {
		-- Recover
		[1] = Script.Recover("Psychic"),
	},
})

Register("mewtwo", {
	Attacks = {
		-- Psychic: "Does 10 damage plus 10 more damage for each Energy card attached to the
		-- Defending Pokémon."
		[1] = {
			Damage = function(ctx, printed)
				return printed + 10 * #ctx:GetEnergyCards(ctx.defender)
			end,
		},
		-- Barrier: "Discard 1 Psychic Energy card attached to Mewtwo in order to prevent all effects
		-- of attacks, including damage, done to Mewtwo during your opponent's next turn."
		[2] = Script.DiscardEnergyCost(1, "Psychic", {
			Effect = function(ctx)
				ctx:AddEffectUntilOpponentTurnEnds("pokemon_prevent_all", nil, ctx.attacker)
			end,
		}),
	},
})
