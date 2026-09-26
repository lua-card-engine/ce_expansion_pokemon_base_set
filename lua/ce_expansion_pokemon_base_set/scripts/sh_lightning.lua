
local PokemonBase = CardEngine.ExpansionSets.PokemonBase
local Script = PokemonBase.Script
local Register = PokemonBase.RegisterCardScript
local Key = PokemonBase.Key

Register("electabuzz", {
	Attacks = {
		-- Thundershock
		[1] = Script.FlipCondition("Paralyzed"),
		-- Thunderpunch
		[2] = Script.ThrashLike(),
	},
})

Register("electrode", {
	-- Buzzap: "At any time during your turn (before your attack), you may Knock Out Electrode and
	-- attach it to 1 of your other Pokémon. If you do, choose a type of Energy. Electrode is now an
	-- Energy card (instead of a Pokémon) that provides 2 energy of that type."
	Power = {
		Activated = true,

		CanUse = function(match, playerIndex, instance)
			return Script.Require(#PokemonBase.GetPokemonInPlay(match, playerIndex) > 1, "reason_buzzap")
		end,

		Use = function(ctx)
			local match = ctx.match
			local electrode = ctx.source

			local others = ctx:Filter(ctx:GetOwnPokemon(), function(instance)
				return instance.id ~= electrode.id
			end)

			local target = ctx:Choose(others, Key("prompt_buzzap_target"), 1)

			if (not target) then
				return
			end

			local energyType = ctx:ChooseType(Key("prompt_buzzap_type"))

			-- Knocked Out, so the opponent takes a prize as usual, and everything that was on it goes
			match:AddEvent({
				type = "pokemon_knocked_out",
				instance = electrode.id,
				player = electrode.controller,
			})

			for _, attached in ipairs(match:GetAttached(electrode)) do
				PokemonBase.DiscardAttached(match, attached)
			end

			for _, beneath in ipairs(match:GetBeneath(electrode)) do
				CardEngine.Match.MoveCard(match, beneath, "Discard", beneath.owner, { keepAttached = true })
				CardEngine.Match.ClearInstance(match, beneath)
			end

			electrode.beneath = {}

			CardEngine.Match.ClearInstance(match, electrode)
			CardEngine.Match.AttachCard(match, electrode, target)
			CardEngine.Match.SetInstanceState(match, electrode, "buzzapType", energyType)

			PokemonBase.TakePrize(match, ctx.opponent)
		end,
	},

	Attacks = {
		-- Electric Shock
		[1] = Script.SelfDamageOnTails(10),
	},
})

Register("magnemite", {
	Attacks = {
		-- Thunder Wave
		[1] = Script.FlipCondition("Paralyzed"),
		-- Selfdestruct
		[2] = Script.Selfdestruct(10, 40),
	},
})

Register("magneton", {
	Attacks = {
		-- Thunder Wave
		[1] = Script.FlipCondition("Paralyzed"),
		-- Selfdestruct
		[2] = Script.Selfdestruct(20, 80),
	},
})

Register("pikachu", {
	Attacks = {
		-- Thunder Jolt
		[2] = Script.SelfDamageOnTails(10),
	},
})

Register("raichu", {
	Attacks = {
		-- Agility: "Flip a coin. If heads, during your opponent's next turn, prevent all effects of
		-- attacks, including damage, done to Raichu."
		[1] = Script.ProtectSelfOnHeads("pokemon_prevent_all"),
		-- Thunder
		[2] = Script.SelfDamageOnTails(30),
	},
})

Register("zapdos", {
	Attacks = {
		-- Thunder
		[1] = Script.SelfDamageOnTails(30),
		-- Thunderbolt: "Discard all Energy cards attached to Zapdos in order to use this attack."
		[2] = Script.DiscardEnergyCost(nil),
	},
})
