-- Each Trainer has an OnPlay that does what the card says, and usually a CanPlay saying whether
-- there is anything for it to do. CanPlay is shared (the board greys out a card that would do
-- nothing), so it may only look at what the player could see. OnPlay returning false means the card
-- had nothing to do and stays in hand.

local PokemonBase = CardEngine.ExpansionSets.PokemonBase
local Script = PokemonBase.Script
local Register = PokemonBase.RegisterCardScript
local Key = PokemonBase.Key
local Require = Script.Require

local BASIC_POKEMON = { Category = "Pokemon", Stage = "Basic" }
local BASIC_ENERGY = { Category = "Energy", EnergyType = "Normal" }
local TRAINER = { Category = "Trainer" }
local POKEMON = { Category = "Pokemon" }

-- "Draw 2 cards."
Register("bill", {
	OnPlay = function(ctx)
		ctx:Draw(2)
	end,
})

-- "Discard your hand, then draw 7 cards."
Register("professor_oak", {
	OnPlay = function(ctx)
		for _, instance in ipairs(ctx:GetHand()) do
			ctx:MoveCard(instance, "Discard")
		end

		ctx:Draw(7)
	end,
})

-- "Your opponent shuffles his or her hand into his or her deck, then draws 7 cards."
Register("impostor_professor_oak", {
	OnPlay = function(ctx)
		ctx:ShuffleIntoDeck(ctx:GetHand(ctx.opponent), ctx.opponent)
		ctx:Draw(7, ctx.opponent)
	end,
})

-- "Discard 2 of the other cards from your hand in order to search your deck for any card and put
-- it into your hand. Shuffle your deck afterward."
Register("computer_search", {
	CanPlay = function(match, playerIndex, instance)
		return Require(Script.CountOtherCardsInHand(match, playerIndex, instance) >= 2
			and match:CountZone("Deck", playerIndex) > 0, "reason_computer_search")
	end,

	OnPlay = function(ctx)
		ctx:DiscardFromHand(2)

		for _, found in ipairs(ctx:SearchDeck(nil, 1)) do
			ctx:MoveCard(found, "Hand")
		end

		ctx:ShuffleDeck()
	end,
})

-- "Discard 2 of the other cards from your hand in order to put a Trainer card from your discard
-- pile into your hand."
Register("item_finder", {
	CanPlay = function(match, playerIndex, instance)
		return Require(Script.CountOtherCardsInHand(match, playerIndex, instance) >= 2
			and Script.ZoneHas(match, "Discard", playerIndex, TRAINER), "reason_item_finder")
	end,

	OnPlay = function(ctx)
		ctx:DiscardFromHand(2)

		for _, found in ipairs(ctx:ChooseFromDiscard(TRAINER, 1)) do
			ctx:MoveCard(found, "Hand")
		end
	end,
})

-- "Shuffle 2 of the other cards from your hand into your deck in order to draw a card."
Register("maintenance", {
	CanPlay = function(match, playerIndex, instance)
		return Require(Script.CountOtherCardsInHand(match, playerIndex, instance) >= 2, "reason_maintenance")
	end,

	OnPlay = function(ctx)
		ctx:ShuffleIntoDeck(ctx:ChooseList(ctx:GetHand(), Key("prompt_maintenance"), 2))
		ctx:Draw(1)
	end,
})

-- "Trade 1 of the other cards in your hand for up to 2 basic Energy cards from your discard pile."
Register("energy_retrieval", {
	CanPlay = function(match, playerIndex, instance)
		return Require(Script.CountOtherCardsInHand(match, playerIndex, instance) >= 1
			and Script.ZoneHas(match, "Discard", playerIndex, BASIC_ENERGY), "reason_energy_retrieval")
	end,

	OnPlay = function(ctx)
		ctx:DiscardFromHand(1)

		local energy = ctx:FindIn("Discard", BASIC_ENERGY)

		for _, found in ipairs(ctx:ChooseFromDiscard(BASIC_ENERGY, math.min(2, #energy))) do
			ctx:MoveCard(found, "Hand")
		end
	end,
})

-- "Look at up to 5 cards from the top of your deck and rearrange them as you like."
Register("pok_dex", {
	CanPlay = function(match, playerIndex)
		return Require(match:CountZone("Deck", playerIndex) > 1, "reason_deck_too_small")
	end,

	OnPlay = function(ctx)
		local deck = ctx.match:GetZoneInstances("Deck", ctx.player)
		local top = {}

		for index = #deck, math.max(1, #deck - 4), -1 do
			table.insert(top, deck[index])
		end

		-- The prompt numbers the cards from 1 on top down, and each card moved lands on top of the
		-- last, so they go back in reverse
		local order = ctx.match:PromptOrder(ctx.player, Key("prompt_pokedex"), top, true)

		for index = #order, 1, -1 do
			ctx:MoveCard(order[index], "Deck", { faceDown = true })
		end
	end,
})

-- "Trade 1 of the Basic Pokémon or Evolution cards in your hand for 1 of the Basic Pokémon or
-- Evolution cards from your deck. Show both cards to your opponent. Shuffle your deck afterward."
Register("pok_mon_trader", {
	CanPlay = function(match, playerIndex, instance)
		return Require(Script.ZoneHas(match, "Hand", playerIndex, POKEMON)
			and match:CountZone("Deck", playerIndex) > 0, "reason_pokemon_trader")
	end,

	OnPlay = function(ctx)
		local given = ctx:Choose(ctx:FindIn("Hand", POKEMON), Key("prompt_trader_give"), 1)
		local taken = given and ctx:SearchDeck(POKEMON, 1)[1]

		if (given and taken) then
			ctx:Reveal({ given, taken }, { ctx.opponent })
			ctx:MoveCard(given, "Deck", { faceDown = true })
			ctx:MoveCard(taken, "Hand")
		end

		ctx:ShuffleDeck()
	end,
})

-- "You and your opponent show each other your hands, then shuffle all the Trainer cards from your
-- hands into your decks."
Register("lass", {
	OnPlay = function(ctx)
		local ownHand = ctx:GetHand()
		local opponentHand = ctx:GetHand(ctx.opponent)

		ctx:Reveal(ownHand, { ctx.opponent })
		ctx:Reveal(opponentHand, { ctx.player })

		for _, side in ipairs({ { ctx.player, ownHand }, { ctx.opponent, opponentHand } }) do
			local trainers = ctx:Filter(side[2], function(instance)
				return PokemonBase.IsTrainerCard(ctx:GetCard(instance))
			end)

			ctx:ShuffleIntoDeck(trainers, side[1])
		end
	end,
})

-- "Remove up to 2 damage counters from 1 of your Pokémon."
Register("potion", {
	CanPlay = function(match, playerIndex)
		return Require(#Script.DamagedPokemon(match, playerIndex) > 0, "reason_nothing_damaged")
	end,

	OnPlay = function(ctx)
		local target = ctx:ChooseOwnPokemon(Script.DamagedPokemon(ctx.match, ctx.player))

		ctx:Heal(target, 20)
	end,
})

-- "Discard 1 Energy card attached to your own Pokémon in order to remove up to 4 damage counters
-- from that Pokémon."
Register("super_potion", {
	CanPlay = function(match, playerIndex)
		return Require(#Script.PokemonWhere(match, playerIndex, function(instance)
			return PokemonBase.GetDamage(match, instance) > 0 and #PokemonBase.GetEnergyCards(match, instance) > 0
		end) > 0, "reason_super_potion")
	end,

	OnPlay = function(ctx)
		local candidates = ctx:Filter(Script.DamagedPokemon(ctx.match, ctx.player), function(instance)
			return #ctx:GetEnergyCards(instance) > 0
		end)

		local target = ctx:ChooseOwnPokemon(candidates)

		ctx:DiscardEnergy(target, 1)
		ctx:Heal(target, 40)
	end,
})

-- "Your Active Pokémon is no longer Asleep, Confused, Paralyzed, or Poisoned."
Register("full_heal", {
	CanPlay = function(match, playerIndex)
		local active = PokemonBase.GetActive(match, playerIndex)

		return Require(active ~= nil and #PokemonBase.GetConditions(match, active) > 0, "reason_no_conditions")
	end,

	OnPlay = function(ctx)
		ctx:CureConditions(ctx:GetOwnActive())
	end,
})

-- "Remove all damage counters from all of your own Pokémon with damage counters on them, then
-- discard all Energy cards attached to those Pokémon."
Register("pok_mon_center", {
	CanPlay = function(match, playerIndex)
		return Require(#Script.DamagedPokemon(match, playerIndex) > 0, "reason_nothing_damaged")
	end,

	OnPlay = function(ctx)
		for _, instance in ipairs(Script.DamagedPokemon(ctx.match, ctx.player)) do
			ctx:Heal(instance)
			ctx:DiscardEnergy(instance, nil)
		end
	end,
})

-- "Switch 1 of your own Benched Pokémon with your Active Pokémon."
Register("switch", {
	CanPlay = function(match, playerIndex)
		return Require(match:CountZone("Bench", playerIndex) > 0, "reason_empty_bench")
	end,

	OnPlay = function(ctx)
		local chosen = ctx:Choose(ctx:GetOwnBench(), Key("prompt_switch"), 1)

		PokemonBase.SwapWithActive(ctx.match, chosen)
	end,
})

-- "Choose 1 of your opponent's Benched Pokémon and switch it with his or her Active Pokémon."
Register("gust_of_wind", {
	CanPlay = function(match, playerIndex)
		return Require(match:CountZone("Bench", match:GetOpponentIndex(playerIndex)) > 0, "reason_opponent_bench_empty")
	end,

	OnPlay = function(ctx)
		local chosen = ctx:Choose(ctx:GetOpponentBench(), Key("prompt_gust_of_wind"), 1)

		PokemonBase.SwapWithActive(ctx.match, chosen)
	end,
})

-- "Choose 1 of your Pokémon in play and return its Basic Pokémon card to your hand. (Discard all
-- cards attached to that card.)"
Register("scoop_up", {
	OnPlay = function(ctx)
		local target = ctx:ChooseOwnPokemon(nil, Key("prompt_scoop_up"))

		if (not target) then
			return false
		end

		local basic = ctx.match:GetBeneath(target)[1] or target

		PokemonBase.PutOutOfPlay(ctx.match, target)
		ctx:MoveCard(basic, "Hand")
	end,
})

-- "Put 1 Basic Pokémon card from your discard pile onto your Bench. Put damage counters on that
-- Pokémon equal to half its HP (rounded down to the nearest 10)."
Register("revive", {
	CanPlay = function(match, playerIndex)
		return Require(match:HasZoneSpace("Bench", playerIndex)
			and Script.ZoneHas(match, "Discard", playerIndex, BASIC_POKEMON), "reason_revive")
	end,

	OnPlay = function(ctx)
		local chosen = ctx:ChooseFromDiscard(BASIC_POKEMON, 1)[1]

		if (not chosen) then
			return false
		end

		ctx:MoveCard(chosen, "Bench", { faceDown = false })
		ctx:SetState(chosen, "playedOnTurn", ctx.match:GetTurn())

		local hp = PokemonBase.GetMaxHP(ctx.match, chosen)

		CardEngine.Match.SetCounter(ctx.match, chosen, PokemonBase.DAMAGE_COUNTER, math.floor(hp / 20) * 10)
	end,
})

-- "Choose 1 Basic Pokémon card from your opponent's discard pile and put it onto his or her Bench."
Register("pok_mon_flute", {
	CanPlay = function(match, playerIndex)
		local opponent = match:GetOpponentIndex(playerIndex)

		return Require(match:HasZoneSpace("Bench", opponent)
			and Script.ZoneHas(match, "Discard", opponent, BASIC_POKEMON), "reason_pokemon_flute")
	end,

	OnPlay = function(ctx)
		local chosen = ctx:ChooseFromDiscard(BASIC_POKEMON, 1, false, ctx.opponent)[1]

		if (not chosen) then
			return false
		end

		ctx:MoveCard(chosen, "Bench", { faceDown = false }, ctx.opponent)
		ctx:SetState(chosen, "playedOnTurn", ctx.match:GetTurn())
	end,
})

--- Every pairing Pokémon Breeder could make: a Stage 2 card in the hand, and the Basic Pokémon in
--- play it would go on
--- @return table[] # { card = instance, target = instance }
local function breederPairs(match, playerIndex)
	local found = {}

	for _, instance in ipairs(match:GetZoneInstances("Hand", playerIndex)) do
		local card = match:GetInstanceCard(instance)

		if (card and card:GetAttribute("Stage") == "Stage2") then
			local stageOne = CardEngine.Collection.Get(card:GetAttribute("EvolvesFromCard"))
			local basicID = stageOne and stageOne:GetAttribute("EvolvesFromCard")

			for _, target in ipairs(PokemonBase.GetPokemonInPlay(match, playerIndex)) do
				if (target.cardID == basicID and PokemonBase.CanEvolveThisTurn(match, target)) then
					table.insert(found, { card = instance, target = target })
				end
			end
		end
	end

	return found
end

PokemonBase.BreederPairs = breederPairs

-- "Put a Stage 2 Evolution card from your hand on the matching Basic Pokémon. You can only play
-- this card when you would be allowed to evolve that Pokémon anyway."
Register("pok_mon_breeder", {
	CanPlay = function(match, playerIndex)
		return Require(#breederPairs(match, playerIndex) > 0, "reason_breeder")
	end,

	OnPlay = function(ctx)
		local options = breederPairs(ctx.match, ctx.player)
		local cards, seen = {}, {}

		for _, pair in ipairs(options) do
			if (not seen[pair.card.id]) then
				seen[pair.card.id] = true
				table.insert(cards, pair.card)
			end
		end

		local card = ctx:Choose(cards, Key("prompt_breeder_card"), 1)

		if (not card) then
			return false
		end

		local targets = {}

		for _, pair in ipairs(options) do
			if (pair.card.id == card.id) then
				table.insert(targets, pair.target)
			end
		end

		local target = ctx:Choose(targets, Key("prompt_breeder_target"), 1)

		if (not target) then
			return false
		end

		PokemonBase.Evolve(ctx.match, card, target)
	end,
})

-- "Choose 1 of your own Pokémon in play and a Stage of Evolution. Discard all Evolution cards of
-- that Stage or higher attached to that Pokémon. That Pokémon is no longer Asleep, Confused,
-- Paralyzed, Poisoned, or anything else that might be the result of an attack."
Register("devolution_spray", {
	CanPlay = function(match, playerIndex)
		return Require(#Script.PokemonWhere(match, playerIndex, function(instance)
			return #match:GetBeneath(instance) > 0
		end) > 0, "reason_nothing_evolved")
	end,

	OnPlay = function(ctx)
		local match = ctx.match

		local evolved = ctx:Filter(ctx:GetOwnPokemon(), function(instance)
			return #match:GetBeneath(instance) > 0
		end)

		local target = ctx:ChooseOwnPokemon(evolved, Key("prompt_devolve_target"))

		if (not target) then
			return false
		end

		local stage = PokemonBase.GetStageNumber(ctx:GetCard(target))
		local options = {}

		for option = stage, 1, -1 do
			table.insert(options, { value = option, label = Key("option_stage"), params = { stage = option } })
		end

		local fromStage = tonumber(ctx:ChooseOption(options, Key("prompt_devolve_stage"))) or stage
		local top = target

		for _ = fromStage, stage do
			top = CardEngine.Match.UnstackCard(match, top, "Discard") or top
		end

		PokemonBase.CureAllConditions(match, top)
		match:RemoveEffectsOnTarget(top)
	end,
})

-- "Choose 1 Energy card attached to 1 of your opponent's Pokémon and discard it."
Register("energy_removal", {
	CanPlay = function(match, playerIndex)
		return Require(#Script.PokemonWithEnergy(match, match:GetOpponentIndex(playerIndex)) > 0,
			"reason_opponent_no_energy")
	end,

	OnPlay = function(ctx)
		local target = ctx:ChooseOpponentPokemon(Script.PokemonWithEnergy(ctx.match, ctx.opponent))

		ctx:DiscardEnergy(target, 1)
	end,
})

-- "Discard 1 Energy card attached to 1 of your Pokémon in order to choose 1 of your opponent's
-- Pokémon and up to 2 Energy cards attached to it. Discard those Energy cards."
Register("super_energy_removal", {
	CanPlay = function(match, playerIndex)
		return Require(#Script.PokemonWithEnergy(match, playerIndex) > 0
			and #Script.PokemonWithEnergy(match, match:GetOpponentIndex(playerIndex)) > 0,
			"reason_super_energy_removal")
	end,

	OnPlay = function(ctx)
		local own = ctx:ChooseOwnPokemon(Script.PokemonWithEnergy(ctx.match, ctx.player))

		ctx:DiscardEnergy(own, 1)

		local target = ctx:ChooseOpponentPokemon(Script.PokemonWithEnergy(ctx.match, ctx.opponent))

		ctx:DiscardEnergy(target, 2)
	end,
})

-- "Attach PlusPower to your Active Pokémon. At the end of your turn, discard PlusPower. If this
-- Pokémon's attack does damage to the Defending Pokémon (after applying Weakness and Resistance),
-- the attack does 10 more damage to the Defending Pokémon."
Register("pluspower", {
	CanPlay = function(match, playerIndex)
		return Require(PokemonBase.GetActive(match, playerIndex) ~= nil, "reason_no_active")
	end,

	OnPlay = function(ctx)
		ctx:Attach(ctx.source, ctx:GetOwnActive())
		ctx:SetState(ctx.source, "discardAtEndOfTurn", ctx.match:GetTurn())
	end,
})

-- "Attach Defender to 1 of your Pokémon. At the end of your opponent's next turn, discard Defender.
-- Damage done to that Pokémon by attacks is reduced by 20 (after applying Weakness and Resistance)."
Register("defender", {
	OnPlay = function(ctx)
		local target = ctx:ChooseOwnPokemon(nil, Key("prompt_defender"))

		if (not target) then
			return false
		end

		ctx:Attach(ctx.source, target)
		ctx:SetState(ctx.source, "discardAtEndOfTurn", ctx.match:GetTurn() + 1)
	end,
})

-- "Play Clefairy Doll as if it were a Basic Pokémon." It is played with the PlayBasic action like
-- any other Basic, and discarded with DiscardDoll, so it has nothing to do as a Trainer.
Register("clefairy_doll", {})
