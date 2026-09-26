-- Rules checks, run with `card_engine_match_selftest`. Anything checkable without a match is; the
-- rest builds one from a fixed seed and puts exactly the cards it needs where it needs them.

CardEngine.ExpansionSets.PokemonBase = CardEngine.ExpansionSets.PokemonBase or {}

local PokemonBase = CardEngine.ExpansionSets.PokemonBase
local ID = PokemonBase.EXPANSION_SET_ID

local function cardID(name)
	return PokemonBase.CARD_PREFIX .. name
end

--- Starts a match between two theme decks, set up and on turn 1
local function startMatch(context, first, second, seed)
	return context:StartMatch(ID, {
		PokemonBase.BuildThemeDeck(first or "brushfire", "selftest_1"),
		PokemonBase.BuildThemeDeck(second or "overgrowth", "selftest_2"),
	}, seed)
end

--- Puts a fresh copy of a card into play for a player, replacing whatever was Active when asked to
--- @return CardEngine.MatchCardInstance
local function place(match, playerIndex, name, zoneKey)
	zoneKey = zoneKey or "Active"

	if (zoneKey == "Active") then
		local current = PokemonBase.GetActive(match, playerIndex)

		if (current) then
			PokemonBase.PutOutOfPlay(match, current)
		end

		return CardEngine.Match.CreateInstance(match, cardID(name), playerIndex, "Active", 1)
	end

	local slot = match:GetFreeZoneSlot(zoneKey, playerIndex)

	return CardEngine.Match.CreateInstance(match, cardID(name), playerIndex, zoneKey, slot)
end

--- Attaches fresh Energy cards to a Pokémon
local function energize(match, instance, name, count)
	for _ = 1, count or 1 do
		local energy = CardEngine.Match.CreateInstance(match, cardID(name), instance.controller, "Hand")

		CardEngine.Match.AttachCard(match, energy, instance)
	end
end

--- Puts a card straight into a player's hand
local function give(match, playerIndex, name)
	return CardEngine.Match.CreateInstance(match, cardID(name), playerIndex, "Hand")
end

local function perform(context, match, playerIndex, actionName, params)
	local ok, reason = CardEngine.Match.PerformAction(match, playerIndex, actionName, params)

	context:AnswerPrompts(match)

	return ok, reason
end

CardEngine.MatchTest.Register(ID, {
	{
		name = "every theme deck is a legal deck",
		run = function(context)
			for _, key in ipairs(PokemonBase.THEME_DECK_ORDER) do
				local deck = PokemonBase.BuildThemeDeck(key)
				local result = CardEngine.Deck.Validate(ID, deck.cards)

				context:Equal(key .. " has 60 cards", result.total, 60)
				context:Check(key .. " is legal", result.isLegal)

				for id in pairs(deck.cards) do
					context:Check(key .. " card " .. id .. " exists", CardEngine.Collection.Get(id) ~= nil)
				end
			end
		end,
	},

	{
		name = "every printed effect has a script, and every script a card",
		run = function(context)
			for _, card in pairs(CardEngine.Collection.GetAll()) do
				if (card:GetExpansionSetID() == ID) then
					local script = PokemonBase.GetCardScript(card)
					local label = card:GetUniqueID()

					for index, attack in ipairs(card:GetAttribute("Attacks") or {}) do
						if (attack.Effect and attack.Effect ~= "") then
							context:Check(label .. " attack " .. index .. " (" .. attack.Name .. ") is scripted",
								script ~= nil and script.Attacks ~= nil and script.Attacks[index] ~= nil)
						end
					end

					if (PokemonBase.GetPrintedPower(card)) then
						context:Check(label .. " has its Pokémon Power", script ~= nil and script.Power ~= nil)
					end

					if (PokemonBase.IsTrainerCard(card) and not PokemonBase.IsPlayableAsBasic(card)) then
						context:Check(label .. " can be played", script ~= nil and isfunction(script.OnPlay))
					end
				end
			end

			for id in pairs(PokemonBase.CardScripts) do
				context:Check(id .. " is a real card", CardEngine.Collection.Get(id) ~= nil)
			end
		end,
	},

	{
		name = "every Evolution card evolves from a card in the set",
		run = function(context)
			for _, card in pairs(CardEngine.Collection.GetAll()) do
				if (card:GetExpansionSetID() == ID and PokemonBase.IsPokemonCard(card)
						and card:GetAttribute("Stage") ~= "Basic") then
					local from = CardEngine.Collection.Get(card:GetAttribute("EvolvesFromCard") or "")

					context:Check(card:GetUniqueID() .. " evolves from a real card", from ~= nil)
					context:Equal(card:GetUniqueID() .. " evolves from the stage below it",
						from and PokemonBase.GetStageNumber(from), PokemonBase.GetStageNumber(card) - 1)
				end
			end
		end,
	},

	{
		name = "attack costs are paid with typed Energy first and anything for Colorless",
		run = function(context)
			local pay = PokemonBase.CanPayCost

			context:Check("FF pays F F", pay({ "Fire", "Fire" }, { "Fire", "Fire" }))
			context:Check("F W does not pay F F", not pay({ "Fire", "Water" }, { "Fire", "Fire" }))
			context:Check("F W pays F C", pay({ "Fire", "Water" }, { "Fire", "Colorless" }))
			context:Check("W W does not pay F C", not pay({ "Water", "Water" }, { "Fire", "Colorless" }))
			context:Check("Double Colorless pays C C", pay({ "Colorless", "Colorless" }, { "Colorless", "Colorless" }))
			context:Check("Double Colorless does not pay a typed symbol",
				not pay({ "Colorless", "Colorless" }, { "Fire" }))
			context:Check("nothing pays nothing", pay({}, {}))
		end,
	},

	{
		name = "Hydro Pump counts at most 2 extra Water Energy",
		run = function(context)
			local match = startMatch(context)

			if (not match) then
				return
			end

			local blastoise = place(match, 1, "blastoise")

			energize(match, blastoise, "water_energy", 4)
			context:Equal("4 Water: 1 extra", PokemonBase.CountExtraEnergy(match, blastoise, "Water",
				{ "Water", "Water", "Water" }, 2), 1)

			energize(match, blastoise, "water_energy", 2)
			context:Equal("6 Water: capped at 2", PokemonBase.CountExtraEnergy(match, blastoise, "Water",
				{ "Water", "Water", "Water" }, 2), 2)
		end,
	},

	{
		name = "Energy Burn turns every Energy into Fire for the turn",
		run = function(context)
			local match = startMatch(context)

			if (not match) then
				return
			end

			local player = match:GetActivePlayerIndex()
			local charizard = place(match, player, "charizard")

			energize(match, charizard, "water_energy", 4)

			context:Check("Fire Spin cannot be paid with Water",
				not PokemonBase.CanPayAttackCost(match, charizard, PokemonBase.GetAttacks(match, charizard)[1]))

			context:Check("Energy Burn can be used",
				perform(context, match, player, "UsePower", { card = charizard.id }))

			context:Equal("all four are Fire now", PokemonBase.CountEnergy(match, charizard, "Fire"), 4)
			context:Check("Fire Spin can be paid",
				PokemonBase.CanPayAttackCost(match, charizard, PokemonBase.GetAttacks(match, charizard)[1]))
		end,
	},

	{
		name = "Weakness doubles damage and Resistance takes 30 off",
		run = function(context)
			local match = startMatch(context)

			if (not match) then
				return
			end

			local charmander = place(match, 1, "charmander")
			local bulbasaur = place(match, 2, "bulbasaur")

			context:Equal("Fire into a Grass Pokémon weak to Fire",
				(PokemonBase.DealDamage(match, bulbasaur, 10, { attacker = charmander, isAttack = true })), 20)

			local pikachu = place(match, 1, "pikachu")
			local diglett = place(match, 2, "diglett")

			context:Equal("Lightning into a Pokémon resisting it",
				(PokemonBase.DealDamage(match, diglett, 40, { attacker = pikachu, isAttack = true })), 10)

			context:Equal("bench damage ignores Weakness",
				(PokemonBase.DealDamage(match, bulbasaur, 10, { attacker = charmander })), 10)
		end,
	},

	{
		name = "PlusPower adds 10 after Weakness, and is gone at the end of the turn",
		run = function(context)
			local match = startMatch(context)

			if (not match) then
				return
			end

			local player = match:GetActivePlayerIndex()
			local opponent = match:GetOpponentIndex(player)
			local charmander = place(match, player, "charmander")
			local bulbasaur = place(match, opponent, "bulbasaur")

			context:Check("PlusPower is played",
				perform(context, match, player, "PlayTrainer", { card = give(match, player, "pluspower").id }))

			context:Equal("10 doubled plus 10",
				(PokemonBase.DealDamage(match, bulbasaur, 10, { attacker = charmander, isAttack = true })), 30)

			perform(context, match, player, "EndTurn", {})

			context:Equal("PlusPower was discarded",
				PokemonBase.CountAttachedCard(match, charmander, PokemonBase.PLUSPOWER_ID), 0)
		end,
	},

	{
		name = "Machamp strikes back at whatever damages it",
		run = function(context)
			local match = startMatch(context)

			if (not match) then
				return
			end

			local attacker = place(match, 1, "rattata")
			local machamp = place(match, 2, "machamp")

			PokemonBase.DealDamage(match, machamp, 20, { attacker = attacker, isAttack = true })

			context:Equal("the attacker took 10", PokemonBase.GetDamage(match, attacker), 10)
		end,
	},

	{
		name = "Poison hurts between turns and Paralysis lasts one turn",
		run = function(context)
			local match = startMatch(context)

			if (not match) then
				return
			end

			local player = match:GetActivePlayerIndex()
			local opponent = match:GetOpponentIndex(player)
			local target = place(match, opponent, "chansey")

			PokemonBase.ApplyCondition(match, target, "Poisoned")
			PokemonBase.ApplyCondition(match, target, "Paralyzed")

			perform(context, match, player, "EndTurn", {})

			context:Equal("Poison did 10", PokemonBase.GetDamage(match, target), 10)
			context:Check("still Paralyzed on its own turn", PokemonBase.HasCondition(match, target, "Paralyzed"))
			context:Check("so it cannot retreat", not PokemonBase.CanRetreat(match, opponent))

			perform(context, match, opponent, "EndTurn", {})

			context:Equal("Poison did 10 more", PokemonBase.GetDamage(match, target), 20)
			context:Check("Paralysis wore off", not PokemonBase.HasCondition(match, target, "Paralyzed"))
			context:Check("Poison did not", PokemonBase.HasCondition(match, target, "Poisoned"))
		end,
	},

	{
		name = "retreating cures conditions, and costs Energy",
		run = function(context)
			local match = startMatch(context)

			if (not match) then
				return
			end

			local player = match:GetActivePlayerIndex()
			local active = place(match, player, "charmander")
			local benched = place(match, player, "vulpix", "Bench")

			energize(match, active, "fire_energy", 2)
			PokemonBase.ApplyCondition(match, active, "Poisoned")

			context:Check("the retreat goes through",
				perform(context, match, player, "Retreat", { target = benched.id }))

			context:Equal("Vulpix is Active", PokemonBase.GetActive(match, player).id, benched.id)
			context:Equal("one Energy paid", PokemonBase.CountEnergy(match, active), 1)
			context:Check("the Poison is gone", not PokemonBase.HasCondition(match, active, "Poisoned"))
		end,
	},

	{
		name = "a Pokémon cannot evolve the turn it was played, and Breeder skips a stage",
		run = function(context)
			local match = startMatch(context)

			if (not match) then
				return
			end

			local player = match:GetActivePlayerIndex()
			local squirtle = give(match, player, "squirtle")

			perform(context, match, player, "PlayBasic", { card = squirtle.id })

			local wartortle = give(match, player, "wartortle")

			context:Check("no evolving the turn it arrived",
				not CardEngine.Match.CanPerformAction(match, player, "Evolve", { card = wartortle.id, target = squirtle.id }))

			CardEngine.Match.SetInstanceState(match, squirtle, "playedOnTurn", 0)

			local blastoise = give(match, player, "blastoise")

			context:Check("Pokémon Breeder is played",
				perform(context, match, player, "PlayTrainer", { card = give(match, player, "pok_mon_breeder").id }))

			context:Equal("Blastoise is in play", blastoise.zone, "Bench")
			context:Equal("on top of the Squirtle", match:GetBeneath(blastoise)[1] and match:GetBeneath(blastoise)[1].id, squirtle.id)

			context:Check("Devolution Spray is played",
				perform(context, match, player, "PlayTrainer", { card = give(match, player, "devolution_spray").id }))

			context:Equal("back to Squirtle", squirtle.zone, "Bench")
			context:Equal("Blastoise was discarded", blastoise.zone, "Discard")
		end,
	},

	{
		name = "Clefairy Doll gives up no prize",
		run = function(context)
			local match = startMatch(context)

			if (not match) then
				return
			end

			local player = match:GetActivePlayerIndex()
			local opponent = match:GetOpponentIndex(player)
			local doll = give(match, opponent, "clefairy_doll")

			CardEngine.Match.MoveCard(match, doll, "Bench", opponent)

			local prizes = match:CountZone("Prizes", player)

			context:Run(match, function()
				PokemonBase.DealDamage(match, doll, 10)
				PokemonBase.CheckKnockOuts(match)
			end)

			context:Equal("the Doll is discarded", doll.zone, "Discard")
			context:Equal("no prize was taken", match:CountZone("Prizes", player), prizes)
		end,
	},

	{
		name = "both players taking their last prize at once is a draw",
		run = function(context)
			local match = startMatch(context)

			if (not match) then
				return
			end

			for playerIndex = 1, 2 do
				for _, prize in ipairs(match:GetZoneInstances("Prizes", playerIndex)) do
					CardEngine.Match.MoveCard(match, prize, "Hand", playerIndex)
				end
			end

			context:Equal("it is a draw", (PokemonBase.CheckGameOver(match)), CardEngine.Match.DRAW)

			CardEngine.Match.End(match, PokemonBase.CheckGameOver(match), "selftest")

			context:Check("the match is over", match:IsFinished())
			context:Equal("with nobody winning", match.winner, nil)
		end,
	},

	{
		name = "having to draw from an empty deck loses the game",
		run = function(context)
			local match = startMatch(context)

			if (not match) then
				return
			end

			local player = match:GetActivePlayerIndex()
			local opponent = match:GetOpponentIndex(player)

			for _, card in ipairs(match:GetZoneInstances("Deck", opponent)) do
				CardEngine.Match.MoveCard(match, card, "Discard", opponent)
			end

			perform(context, match, player, "EndTurn", {})

			context:Check("the match is over", match:IsFinished())
			context:Equal("and the player who could draw won", match.winner, player)
		end,
	},

	{
		name = "an options prompt hands back the value chosen",
		run = function(context)
			local match = startMatch(context)

			if (not match) then
				return
			end

			local chosen

			context:Run(match, function()
				chosen = match:PromptOption(1, "selftest", {
					{ value = "Water", label = "selftest_water" },
					{ value = "Fire", label = "selftest_fire" },
				})
			end)

			context:Equal("the first option", chosen, "Water")
		end,
	},

	{
		name = "Lass shows both hands, but only to the other player, and shuffles the Trainers away",
		run = function(context)
			local match = startMatch(context)

			if (not match) then
				return
			end

			local player = match:GetActivePlayerIndex()
			local opponent = match:GetOpponentIndex(player)
			local lass = give(match, player, "lass")
			local ownTrainer = give(match, player, "bill")
			local theirTrainer = give(match, opponent, "potion")
			local deckBefore = match:CountZone("Deck", player)

			match.pendingEvents = {}

			context:Check("Lass is played", perform(context, match, player, "PlayTrainer", { card = lass.id }))

			local reveals = {}

			for _, event in ipairs(match.pendingEvents) do
				if (event.type == "cards_revealed") then
					table.insert(reveals, event)
				end
			end

			context:Equal("two reveals", #reveals, 2)

			for _, event in ipairs(reveals) do
				context:Equal("each is for exactly one seat", #(event.viewers or {}), 1)
				context:Check("and never the seat whose cards they are", event.viewers[1] ~= event.player)
			end

			context:Equal("the played Bill went back into the deck", ownTrainer.zone, "Deck")
			context:Equal("and so did the opponent's Potion", theirTrainer.zone, "Deck")
			for _, seat in ipairs({ player, opponent }) do
				context:Equal("no Trainer is left in seat " .. seat .. "'s hand",
					#CardEngine.Match.FindInZone(match, "Hand", seat, { Category = "Trainer" }), 0)
			end

			context:Check("the player's deck grew", match:CountZone("Deck", player) > deckBefore)
		end,
	},

	{
		name = "every theme deck plays a whole game against the AI",
		run = function(context)
			local pairings = {
				{ "brushfire", "overgrowth" },
				{ "zap", "blackout" },
				{ "overgrowth", "zap" },
				{ "blackout", "brushfire" },
			}

			for index, pairing in ipairs(pairings) do
				local match = context:StartMatch(ID, {
					PokemonBase.BuildThemeDeck(pairing[1], "selftest_ai_1"),
					PokemonBase.BuildThemeDeck(pairing[2], "selftest_ai_2"),
				}, 1000 + index, true)

				if (match) then
					context:PlayOut(match, 3000)
				end
			end
		end,
	},

	{
		name = "the same seed plays the same game",
		run = function(context)
			local results = {}

			for run = 1, 2 do
				local match = context:StartMatch(ID, {
					PokemonBase.BuildThemeDeck("zap", "selftest_seed_1"),
					PokemonBase.BuildThemeDeck("brushfire", "selftest_seed_2"),
				}, 4242, true)

				if (match) then
					context:PlayOut(match, 3000)

					results[run] = string.format("%s/%s/%d", tostring(match.winner), tostring(match.endReason), match:GetTurn())
				end
			end

			context:Equal("both runs ended the same way", results[1], results[2])
		end,
	},
})
