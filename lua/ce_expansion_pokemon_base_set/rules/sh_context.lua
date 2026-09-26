-- What a card's script is handed, so it reads close to the printed text:
--   Effect = function(ctx)
--       if (ctx:FlipHeads()) then ctx:ApplyCondition(ctx.defender, "Paralyzed") end
--   end
-- Runs on the server inside the action's coroutine, so asking a player something just waits.

CardEngine.ExpansionSets.PokemonBase = CardEngine.ExpansionSets.PokemonBase or {}

local PokemonBase = CardEngine.ExpansionSets.PokemonBase
local Key = PokemonBase.Key

--- Every card's script, keyed by the card's unique ID. Filled in by the files in scripts/.
--- @type table<string, table>
PokemonBase.CardScripts = PokemonBase.CardScripts or {}

--- Gives a card its script
--- @param cardName string The card's unique ID without the set prefix, e.g. "bulbasaur"
--- @param script table { Attacks = { [index] = {...} }, Power = {...}, CanPlay = fn, OnPlay = fn }
function PokemonBase.RegisterCardScript(cardName, script)
	PokemonBase.CardScripts[PokemonBase.CARD_PREFIX .. cardName] = script
end

--- A card's script, if it has one
--- @param cardOrID CardEngine.Card|string|nil
--- @return table?
function PokemonBase.GetCardScript(cardOrID)
	if (not cardOrID) then
		return nil
	end

	local cardID = isstring(cardOrID) and cardOrID or cardOrID:GetUniqueID()

	return PokemonBase.CardScripts[cardID]
end

--- The script for one of a card's attacks
--- @param cardOrID CardEngine.Card|string|nil
--- @param attackIndex number
--- @return table?
function PokemonBase.GetAttackScript(cardOrID, attackIndex)
	local script = PokemonBase.GetCardScript(cardOrID)

	return script and script.Attacks and script.Attacks[attackIndex] or nil
end

--- The Pokémon Power script of a card in play
--- @param match CardEngine.Match
--- @param instanceOrID CardEngine.MatchCardInstance|number
--- @return table?
function PokemonBase.GetPowerScript(match, instanceOrID)
	local script = PokemonBase.GetCardScript(match:GetInstanceCard(instanceOrID))

	return script and script.Power or nil
end

--- @class PokemonBase.Context
--- @field match CardEngine.Match
--- @field player number The seat playing the card, attacking or using the power
--- @field opponent number
--- @field source CardEngine.MatchCardInstance The card being played, or the Pokémon attacking
--- @field attacker CardEngine.MatchCardInstance? The attacking Pokémon, during an attack
--- @field defender CardEngine.MatchCardInstance? The Defending Pokémon, during an attack
--- @field attack table? The attack being used, as printed
--- @field attackIndex number?
--- @field damage number? What the attack's damage came to, once it has landed
--- @field defenderProtected boolean? Whether the Defending Pokémon is shielded from attack effects (Agility, Barrier)
local CONTEXT = {}
CONTEXT.__index = CONTEXT

PokemonBase.ContextMeta = CONTEXT

--- @param match CardEngine.Match
--- @param playerIndex number
--- @param source CardEngine.MatchCardInstance
--- @param extra table?
--- @return PokemonBase.Context
function PokemonBase.BuildContext(match, playerIndex, source, extra)
	local context = setmetatable({
		match = match,
		player = playerIndex,
		opponent = match:GetOpponentIndex(playerIndex),
		source = source,
	}, CONTEXT)

	for key, value in pairs(extra or {}) do
		context[key] = value
	end

	return context
end

--- Whether an effect may touch a Pokémon. Everything done to the Defending Pokémon goes through
--- this, so Agility and Barrier turn it aside in one place.
--- @param target CardEngine.MatchCardInstance|number|nil
--- @return boolean
function CONTEXT:CanAffect(target)
	local instance = target and self.match:ResolveInstance(target)

	if (not instance) then
		return false
	end

	return not (self.defenderProtected and self.defender and instance.id == self.defender.id)
end

--- Flips coins
--- @param count number? (default: 1)
--- @param label string? A language key saying what the flip is for
--- @return number heads
--- @return number[] results
function CONTEXT:FlipCoin(count, label)
	return self.match:FlipCoin(count or 1, label, self.source)
end

--- Flips one coin
--- @param label string?
--- @return boolean # Whether it came up heads
function CONTEXT:FlipHeads(label)
	return self:FlipCoin(1, label) == 1
end

function CONTEXT:GetOwnPokemon()
	return PokemonBase.GetPokemonInPlay(self.match, self.player)
end

function CONTEXT:GetOpponentPokemon()
	return PokemonBase.GetPokemonInPlay(self.match, self.opponent)
end

function CONTEXT:GetOwnBench()
	return self.match:GetZoneInstances("Bench", self.player)
end

function CONTEXT:GetOpponentBench()
	return self.match:GetZoneInstances("Bench", self.opponent)
end

function CONTEXT:GetOwnActive()
	return PokemonBase.GetActive(self.match, self.player)
end

function CONTEXT:GetOpponentActive()
	return PokemonBase.GetActive(self.match, self.opponent)
end

--- The Pokémon in a list that pass a test
--- @param instances CardEngine.MatchCardInstance[]
--- @param predicate fun(instance: CardEngine.MatchCardInstance): boolean
--- @return CardEngine.MatchCardInstance[]
function CONTEXT:Filter(instances, predicate)
	local kept = {}

	for _, instance in ipairs(instances) do
		if (predicate(instance)) then
			table.insert(kept, instance)
		end
	end

	return kept
end

--- Asks the player to pick from some cards
--- @param candidates CardEngine.MatchCardInstance[]
--- @param promptKey string
--- @param count number? (default: 1)
--- @param optional boolean?
--- @param reveal boolean? For cards they could not otherwise see
--- @param chooser number? Who is asked (default: the player)
--- @return CardEngine.MatchCardInstance|CardEngine.MatchCardInstance[]|nil
function CONTEXT:Choose(candidates, promptKey, count, optional, reveal, chooser)
	return self.match:PromptInstance(chooser or self.player, promptKey, candidates, count or 1, optional, reveal)
end

--- Asks for several cards and always hands back a list
--- @return CardEngine.MatchCardInstance[]
function CONTEXT:ChooseList(candidates, promptKey, count, optional, reveal, chooser)
	local chosen = {}

	for _, instance in ipairs(self.match:AsInstanceList(
		self:Choose(candidates, promptKey, count, optional, reveal, chooser))) do
		if (instance) then
			table.insert(chosen, instance)
		end
	end

	return chosen
end

--- @param candidates CardEngine.MatchCardInstance[]?
--- @param promptKey string?
function CONTEXT:ChooseOwnPokemon(candidates, promptKey)
	return self:Choose(candidates or self:GetOwnPokemon(), promptKey or Key("prompt_choose_own_pokemon"), 1)
end

--- @param candidates CardEngine.MatchCardInstance[]?
--- @param promptKey string?
function CONTEXT:ChooseOpponentPokemon(candidates, promptKey)
	return self:Choose(candidates or self:GetOpponentPokemon(),
		promptKey or Key("prompt_choose_opponent_pokemon"), 1)
end

--- Asks the player a yes or no question
--- @param promptKey string
--- @return boolean
function CONTEXT:Confirm(promptKey)
	return self.match:PromptConfirm(self.player, promptKey)
end

--- Asks the player to pick one of some named options
--- @param options CardEngine.MatchPromptOption[]
--- @param promptKey string
--- @param optional boolean?
--- @return string|number|nil
function CONTEXT:ChooseOption(options, promptKey, optional)
	return self.match:PromptOption(self.player, promptKey, options, optional)
end

--- Asks the player to pick a type other than Colorless
--- @param promptKey string?
--- @param exclude string? A type not to offer
--- @return string
function CONTEXT:ChooseType(promptKey, exclude)
	local options = {}

	for _, energyType in ipairs(PokemonBase.CHOOSABLE_TYPES) do
		if (energyType ~= exclude) then
			table.insert(options, { value = energyType, label = Key("type_" .. string.lower(energyType)) })
		end
	end

	return self:ChooseOption(options, promptKey or Key("prompt_choose_type")) or options[1].value
end

--- Deals plain damage, with no Weakness or Resistance: to the Bench, the attacker itself, or on top of an attack's own.
--- @param target CardEngine.MatchCardInstance|number
--- @param amount number
--- @return number
function CONTEXT:Damage(target, amount)
	if (not self:CanAffect(target)) then
		return 0
	end

	return (PokemonBase.DealDamage(self.match, target, amount, {
		reason = self.attack and self.attack.Name or nil,
	}))
end

--- The attacking Pokémon hurting itself
--- @param amount number
--- @return number
function CONTEXT:DamageSelf(amount)
	return self:Damage(self.attacker or self.source, amount)
end

--- Deals damage to every Pokémon on a player's Bench
--- @param playerIndex number
--- @param amount number
function CONTEXT:DamageBench(playerIndex, amount)
	for _, instance in ipairs(self.match:GetZoneInstances("Bench", playerIndex)) do
		self:Damage(instance, amount)
	end
end

--- @param target CardEngine.MatchCardInstance|number
--- @param amount number? nil for all of it
--- @return number
function CONTEXT:Heal(target, amount)
	return PokemonBase.Heal(self.match, target, amount)
end

--- @param target CardEngine.MatchCardInstance|number
--- @return number
function CONTEXT:GetDamageOn(target)
	return PokemonBase.GetDamage(self.match, target)
end

--- @param target CardEngine.MatchCardInstance|number
--- @return number
function CONTEXT:GetRemainingHP(target)
	return PokemonBase.GetRemainingHP(self.match, target)
end

--- @param target CardEngine.MatchCardInstance|number
--- @param condition string Asleep, Confused, Paralyzed or Poisoned
--- @param options table? `poisonDamage`
--- @return boolean
function CONTEXT:ApplyCondition(target, condition, options)
	if (not self:CanAffect(target)) then
		return false
	end

	local applied = PokemonBase.ApplyCondition(self.match, target, condition, options)

	if (applied and self.attackRecord and self.defender and self.match:ResolveInstance(target).id == self.defender.id) then
		table.insert(self.attackRecord.conditions, { condition = condition, options = options })
	end

	return applied
end

--- @param target CardEngine.MatchCardInstance|number
--- @param condition string
--- @return boolean
function CONTEXT:HasCondition(target, condition)
	return PokemonBase.HasCondition(self.match, target, condition)
end

--- @param target CardEngine.MatchCardInstance|number
--- @return number
function CONTEXT:CureConditions(target)
	return PokemonBase.CureAllConditions(self.match, target)
end

--- Units of Energy on a Pokémon, optionally of one type
--- @param target CardEngine.MatchCardInstance|number
--- @param energyType string?
--- @return number
function CONTEXT:CountEnergy(target, energyType)
	return PokemonBase.CountEnergy(self.match, target, energyType)
end

--- Energy cards on a Pokémon, optionally providing one type
--- @param target CardEngine.MatchCardInstance|number
--- @param energyType string?
--- @return CardEngine.MatchCardInstance[]
function CONTEXT:GetEnergyCards(target, energyType)
	return PokemonBase.GetEnergyCards(self.match, target, energyType)
end

--- Discards Energy cards from a Pokémon, asking which when there is a choice. An attack's discard
--- cost is checked before the attack is allowed, so there is always enough here.
--- @param target CardEngine.MatchCardInstance|number
--- @param count number|nil How many cards, or nil for all of them
--- @param energyType string? Only cards providing this type
--- @param chooser number? Who picks (default: the player)
--- @return number # How many were discarded
function CONTEXT:DiscardEnergy(target, count, energyType, chooser)
	if (not self:CanAffect(target)) then
		return 0
	end

	local energy = self:GetEnergyCards(target, energyType)
	local chosen = energy

	if (count and #energy > count) then
		chosen = self:ChooseList(energy, Key("prompt_discard_energy"), count, false, false, chooser)
	elseif (count) then
		chosen = { unpack(energy, 1, math.min(count, #energy)) }
	end

	for _, instance in ipairs(chosen) do
		PokemonBase.DiscardAttached(self.match, instance)
	end

	return #chosen
end

--- Attaches a card to a Pokémon
--- @param card CardEngine.MatchCardInstance|number
--- @param target CardEngine.MatchCardInstance|number
function CONTEXT:Attach(card, target)
	CardEngine.Match.AttachCard(self.match, card, target)
end

--- Draws cards
--- @param count number
--- @param playerIndex number? (default: the player)
--- @return CardEngine.MatchCardInstance[]
function CONTEXT:Draw(count, playerIndex)
	return CardEngine.Match.MoveTopCards(self.match, playerIndex or self.player, count, "Deck", "Hand")
end

--- The cards in a player's hand, leaving out the card being played
--- @param playerIndex number? (default: the player)
--- @return CardEngine.MatchCardInstance[]
function CONTEXT:GetHand(playerIndex)
	local hand = {}

	for _, instance in ipairs(self.match:GetZoneInstances("Hand", playerIndex or self.player)) do
		if (not self.source or instance.id ~= self.source.id) then
			table.insert(hand, instance)
		end
	end

	return hand
end

--- Asks the player to discard cards from their hand, other than the one being played
--- @param count number
--- @return CardEngine.MatchCardInstance[] # What was discarded
function CONTEXT:DiscardFromHand(count)
	local chosen = self:ChooseList(self:GetHand(), Key("prompt_discard_from_hand"), count)

	for _, instance in ipairs(chosen) do
		CardEngine.Match.MoveCard(self.match, instance, "Discard", self.player)
	end

	return chosen
end

--- Shuffles cards into their owner's deck
--- @param instances CardEngine.MatchCardInstance[]
--- @param playerIndex number? Whose deck (default: the player)
function CONTEXT:ShuffleIntoDeck(instances, playerIndex)
	playerIndex = playerIndex or self.player

	for _, instance in ipairs(instances) do
		CardEngine.Match.MoveCard(self.match, instance, "Deck", playerIndex, { faceDown = true })
	end

	CardEngine.Match.ShuffleZone(self.match, "Deck", playerIndex)
end

--- @param playerIndex number? (default: the player)
function CONTEXT:ShuffleDeck(playerIndex)
	CardEngine.Match.ShuffleZone(self.match, "Deck", playerIndex or self.player)
end

--- The cards in one of a player's zones that match some attributes
--- @param zoneKey string
--- @param attributes table?
--- @param playerIndex number? (default: the player)
--- @return CardEngine.MatchCardInstance[]
function CONTEXT:FindIn(zoneKey, attributes, playerIndex)
	return CardEngine.Match.FindInZone(self.match, zoneKey, playerIndex or self.player, attributes)
end

--- Lets the player search their deck. Only they see it; the opponent is told a search happened and,
--- with `revealToOpponent`, what came out.
--- @param attributes table? What the card has to be, e.g. { Category = "Pokemon" }
--- @param count number?
--- @param revealToOpponent boolean?
--- @return CardEngine.MatchCardInstance[]
function CONTEXT:SearchDeck(attributes, count, revealToOpponent)
	local candidates = self:FindIn("Deck", attributes)

	if (#candidates == 0) then
		return {}
	end

	local found = self:ChooseList(candidates, Key("prompt_search_deck"), count or 1, true, true)

	if (revealToOpponent and #found > 0) then
		self:Reveal(found, { self.opponent })
	end

	return found
end

--- Asks the player to pick cards from a discard pile, which everyone can see
--- @param attributes table?
--- @param count number?
--- @param optional boolean?
--- @param playerIndex number? Whose discard pile (default: the player's)
--- @return CardEngine.MatchCardInstance[]
function CONTEXT:ChooseFromDiscard(attributes, count, optional, playerIndex)
	return self:ChooseList(self:FindIn("Discard", attributes, playerIndex),
		Key("prompt_choose_from_discard"), count or 1, optional, true)
end

--- Moves a card
--- @param instance CardEngine.MatchCardInstance|number
--- @param zoneKey string
--- @param options table?
--- @param playerIndex number?
function CONTEXT:MoveCard(instance, zoneKey, options, playerIndex)
	CardEngine.Match.MoveCard(self.match, instance, zoneKey, playerIndex or self.player, options)
end

--- Shows cards to players who could not otherwise see them
--- @param instances CardEngine.MatchCardInstance[]
--- @param viewers number[]? (default: everyone)
function CONTEXT:Reveal(instances, viewers)
	local card = self.source and self.match:GetInstanceCard(self.source)

	CardEngine.Match.RevealCards(self.match, instances, viewers, Key("log_revealed_by"), {
		player = self.match:GetPlayer(self.player).name,
		card = card and card:GetName() or "?",
	}, self.player)
end

--- Puts an effect on a Pokémon until the end of the opponent's next turn
--- @param effectName string
--- @param args table?
--- @param target CardEngine.MatchCardInstance|number|nil (default: the attacker)
function CONTEXT:AddEffectUntilOpponentTurnEnds(effectName, args, target)
	target = target or self.attacker or self.source

	if (not self:CanAffect(target)) then
		return nil
	end

	return self.match:AddEffect({
		name = effectName,
		args = args,
		target = self.match:ResolveInstance(target).id,
		expiry = { Event = "TurnEnd", Player = self.opponent },
	})
end

--- Puts an effect on a Pokémon until the end of the player's own turn
--- @param effectName string
--- @param args table?
--- @param target CardEngine.MatchCardInstance|number|nil (default: the source)
function CONTEXT:AddEffectUntilOwnTurnEnds(effectName, args, target)
	target = target or self.source

	return self.match:AddEffect({
		name = effectName,
		args = args,
		target = self.match:ResolveInstance(target).id,
		expiry = { Event = "TurnEnd", Player = self.player },
	})
end

--- Puts an effect on a Pokémon for as long as it stays where it is
--- @param effectName string
--- @param args table?
--- @param target CardEngine.MatchCardInstance|number
function CONTEXT:AddLastingEffect(effectName, args, target)
	if (not self:CanAffect(target)) then
		return nil
	end

	return self.match:AddEffect({
		name = effectName,
		args = args,
		target = self.match:ResolveInstance(target).id,
	})
end

--- Sets something on a card's instance state
--- @param target CardEngine.MatchCardInstance|number
--- @param key string
--- @param value any
function CONTEXT:SetState(target, key, value)
	CardEngine.Match.SetInstanceState(self.match, target, key, value)
end

--- @param target CardEngine.MatchCardInstance|number
--- @param key string
--- @return any
function CONTEXT:GetState(target, key)
	return self.match:GetInstanceState(target, key)
end

--- @param languageKey string
--- @param params table?
function CONTEXT:Log(languageKey, params)
	self.match:AddLogMessage(languageKey, params)
end

--- @param instance CardEngine.MatchCardInstance|number
--- @return CardEngine.Card?
function CONTEXT:GetCard(instance)
	return self.match:GetInstanceCard(instance)
end

--- The name of the card an instance is, for the log
--- @param instance CardEngine.MatchCardInstance|number
--- @return string
function CONTEXT:NameOf(instance)
	local card = self:GetCard(instance)

	return card and card:GetName() or "?"
end
