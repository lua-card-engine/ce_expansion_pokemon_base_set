
local PokemonBase = CardEngine.ExpansionSets.PokemonBase
local Script = PokemonBase.Script
local Register = PokemonBase.RegisterCardScript
local Key = PokemonBase.Key

Register("chansey", {
	Attacks = {
		-- Scrunch
		[1] = Script.ProtectSelfOnHeads(),
		-- Double-edge: "Chansey does 80 damage to itself."
		[2] = Script.SelfDamage(80),
	},
})

--- The Defending Pokémon's attacks Metronome may copy. Not Metronome itself, which would only ask
--- the same question again.
local function copyableAttacks(match, defender)
	local options = {}

	for index, attack in ipairs(PokemonBase.GetAttacks(match, defender)) do
		if (attack.Name ~= "Metronome") then
			table.insert(options, { value = index, label = Key("option_attack"), params = { name = attack.Name } })
		end
	end

	return options
end

Register("clefairy", {
	Attacks = {
		-- Sing
		[1] = Script.FlipCondition("Asleep"),

		-- Metronome: "Choose 1 of the Defending Pokémon's attacks. Metronome copies that attack
		-- except for its Energy costs and anything else required in order to use that attack, such
		-- as discarding Energy cards."
		[2] = {
			CanUse = function(match, playerIndex, attacker, defender)
				return Script.Require(#copyableAttacks(match, defender) > 0, "reason_metronome")
			end,

			Resolve = function(ctx)
				local chosen = tonumber(ctx:ChooseOption(copyableAttacks(ctx.match, ctx.defender), Key("prompt_metronome")))
				local defenderCard = ctx:GetCard(ctx.defender)
				local attack = chosen and PokemonBase.GetAttacks(ctx.match, ctx.defender)[chosen]

				if (not attack) then
					return
				end

				ctx:Log(Key("log_metronome"), { attack = attack.Name })

				ctx.attack = attack
				ctx.attackIndex = chosen

				PokemonBase.RunAttack(ctx, attack, PokemonBase.GetAttackScript(defenderCard, chosen), { skipCost = true })
			end,
		},
	},
})

Register("doduo", {
	Attacks = {
		-- Fury Attack
		[1] = Script.DamagePerHeads(2),
	},
})

Register("dragonair", {
	Attacks = {
		-- Slam
		[1] = Script.DamagePerHeads(2),
		-- Hyper Beam
		[2] = Script.DiscardDefenderEnergy(),
	},
})

Register("farfetch_d", {
	Attacks = {
		-- Leek Slap: "Flip a coin. If tails, this attack does nothing. Either way, you can't use
		-- this attack again as long as Farfetch'd stays in play."
		[1] = {
			CanUse = function(match, playerIndex, attacker)
				return Script.Require(not match:GetInstanceState(attacker, "leekSlapUsed"), "reason_leek_slap")
			end,

			Damage = function(ctx, printed)
				ctx:SetState(ctx.attacker, "leekSlapUsed", true)

				return ctx:FlipHeads() and printed or 0
			end,
		},
	},
})

--- Whirlwind: "If your opponent has any Benched Pokémon, he or she chooses 1 of them and switches it
--- with the Defending Pokémon. (Do the damage before switching the Pokémon.)"
local whirlwind = Script.SwitchDefender(true)

Register("pidgeotto", {
	Attacks = {
		[1] = whirlwind,

		-- Mirror Move: "If Pidgeotto was attacked last turn, do the final result of that attack on
		-- Pidgeotto to the Defending Pokémon."
		[2] = {
			Resolve = function(ctx)
				local record = ctx:GetState(ctx.attacker, "lastAttackedBy")

				if (not record or record.turn ~= ctx.match:GetTurn() - 1) then
					ctx:Log(Key("log_mirror_move_nothing"))

					return
				end

				ctx.damage = 0

				if ((record.damage or 0) > 0 and ctx:CanAffect(ctx.defender)) then
					ctx.damage = PokemonBase.DealDamage(ctx.match, ctx.defender, record.damage, {
						attacker = ctx.attacker,
						isAttack = true,
						applyWeakness = false,
						reason = ctx.attack.Name,
					})
				end

				for _, entry in ipairs(record.conditions or {}) do
					ctx:ApplyCondition(ctx.defender, entry.condition, entry.options)
				end
			end,
		},
	},
})

Register("pidgey", {
	Attacks = {
		[1] = whirlwind,
	},
})

Register("porygon", {
	Attacks = {
		-- Conversion 1: "If the Defending Pokémon has a Weakness, you may change it to a type of your
		-- choice other than Colorless."
		[1] = {
			Effect = function(ctx)
				if (not ctx:CanAffect(ctx.defender) or not PokemonBase.GetWeakness(ctx.match, ctx.defender)) then
					return
				end

				local chosen = ctx:ChooseType(Key("prompt_conversion_1"))

				ctx:AddLastingEffect("pokemon_weakness_changed", { type = chosen }, ctx.defender)
			end,
		},

		-- Conversion 2: "Change Porygon's Resistance to a type of your choice other than Colorless."
		[2] = {
			Effect = function(ctx)
				local chosen = ctx:ChooseType(Key("prompt_conversion_2"))

				ctx:AddLastingEffect("pokemon_resistance_changed", { type = chosen }, ctx.attacker)
			end,
		},
	},
})

Register("raticate", {
	Attacks = {
		-- Super Fang: "Does damage to the Defending Pokémon equal to half the Defending Pokémon's
		-- remaining HP (rounded up to the nearest 10)."
		[2] = {
			Damage = function(ctx)
				return math.ceil(ctx:GetRemainingHP(ctx.defender) / 20) * 10
			end,
		},
	},
})
