-- What a player can do on their turn. Card Engine checks turn and phase, then IsLegal, before it
-- runs Perform, so these are the whole rules on what a player may do. IsLegal also runs on the
-- client's filtered view to grey out buttons, where an unidentifiable card is "maybe".
-- In the 1999 rules only attaching an Energy card from the hand is limited per turn.

CardEngine.ExpansionSets.PokemonBase = CardEngine.ExpansionSets.PokemonBase or {}

local PokemonBase = CardEngine.ExpansionSets.PokemonBase
local Key = PokemonBase.Key

--- The card a player is trying to play, if it really is in their hand
--- @param match CardEngine.Match
--- @param playerIndex number
--- @param instanceID number?
--- @return CardEngine.MatchCardInstance?
--- @return CardEngine.Card?
local function getHandCard(match, playerIndex, instanceID)
	local instance = instanceID and match:GetInstance(instanceID)

	if (not instance or instance.zone ~= "Hand" or instance.controller ~= playerIndex) then
		return nil, nil
	end

	return instance, match:GetInstanceCard(instance)
end

--- One of the player's own Pokémon in play
--- @param match CardEngine.Match
--- @param playerIndex number
--- @param instanceID number?
--- @return CardEngine.MatchCardInstance?
local function getOwnPokemon(match, playerIndex, instanceID)
	local instance = instanceID and match:GetInstance(instanceID)

	if (not instance or instance.controller ~= playerIndex or not PokemonBase.IsInPlay(match, instance)) then
		return nil
	end

	return instance
end

--- Whether a player is holding a card that passes a test
--- @param match CardEngine.Match
--- @param playerIndex number
--- @param predicate fun(card: CardEngine.Card, instance: CardEngine.MatchCardInstance): boolean
--- @return boolean
function PokemonBase.HandHas(match, playerIndex, predicate)
	for _, instance in ipairs(match:GetZoneInstances("Hand", playerIndex)) do
		local card = match:GetInstanceCard(instance)

		if (card and predicate(card, instance)) then
			return true
		end
	end

	return false
end

--- The name of the card an instance is, for the log
--- @param match CardEngine.Match
--- @param instanceOrID CardEngine.MatchCardInstance|number
--- @return string
function PokemonBase.NameOf(match, instanceOrID)
	local card = match:GetInstanceCard(instanceOrID)

	return card and card:GetName() or CardEngine.T(Key("log_a_card"))
end

--- The name of a seat, for the log
--- @param match CardEngine.Match
--- @param playerIndex number
--- @return string
function PokemonBase.PlayerName(match, playerIndex)
	local matchPlayer = match:GetPlayer(playerIndex)

	return matchPlayer and matchPlayer.name or "?"
end

--- Whether a Pokémon in play could evolve at all this turn, whatever into
--- @param match CardEngine.Match
--- @param target CardEngine.MatchCardInstance
--- @return boolean
--- @return string? reason
function PokemonBase.CanEvolveThisTurn(match, target)
	if (PokemonBase.IsDoll(match, target)) then
		return false, Key("reason_doll_cannot_evolve")
	end

	if (match:GetInstanceState(target, "playedOnTurn") == match:GetTurn()) then
		return false, Key("reason_played_this_turn")
	end

	if (match:GetInstanceState(target, "evolvedOnTurn") == match:GetTurn()) then
		return false, Key("reason_evolved_this_turn")
	end

	return true
end

--- Whether a card from the hand can evolve a Pokémon in play
--- @param match CardEngine.Match
--- @param card CardEngine.Card? nil when the viewer cannot see it
--- @param target CardEngine.MatchCardInstance
--- @return boolean
--- @return string? reason
function PokemonBase.CanEvolve(match, card, target)
	if (not card) then
		return true
	end

	if (not PokemonBase.IsEvolutionCard(card)) then
		return false, Key("reason_not_evolution")
	end

	local targetCard = match:GetInstanceCard(target)

	if (targetCard and targetCard:GetUniqueID() ~= card:GetAttribute("EvolvesFromCard")) then
		return false, Key("reason_wrong_evolution")
	end

	return PokemonBase.CanEvolveThisTurn(match, target)
end

--- Puts an Evolution card on top of a Pokémon. Energy, damage and everything else attached comes
--- with it; Special Conditions and the effects of attacks do not.
--- @param match CardEngine.Match
--- @param instanceOrID CardEngine.MatchCardInstance|number The card from the hand
--- @param targetOrID CardEngine.MatchCardInstance|number The Pokémon in play
--- @return boolean
function PokemonBase.Evolve(match, instanceOrID, targetOrID)
	local instance = match:ResolveInstance(instanceOrID)
	local target = match:ResolveInstance(targetOrID)

	if (not instance or not target) then
		return false
	end

	local playerIndex = target.controller

	PokemonBase.CureAllConditions(match, target)

	if (not CardEngine.Match.StackCard(match, instance, target)) then
		return false
	end

	CardEngine.Match.SetInstanceState(match, instance, "evolvedOnTurn", match:GetTurn())

	match:AddLogMessage(Key("log_evolved"), {
		player = PokemonBase.PlayerName(match, playerIndex),
		from = PokemonBase.NameOf(match, target),
		card = PokemonBase.NameOf(match, instance),
	})

	return true
end

--- Whether a Trainer card can be played right now, by what its own script says
--- @param match CardEngine.Match
--- @param playerIndex number
--- @param instance CardEngine.MatchCardInstance
--- @param card CardEngine.Card?
--- @return boolean
--- @return string? reason
function PokemonBase.CanPlayTrainer(match, playerIndex, instance, card)
	if (not card) then
		return true
	end

	if (not PokemonBase.IsTrainerCard(card) or PokemonBase.IsPlayableAsBasic(card)) then
		return false, Key("reason_not_trainer")
	end

	local script = PokemonBase.GetCardScript(card)

	if (not script or not isfunction(script.OnPlay)) then
		return false, Key("reason_not_scripted")
	end

	if (isfunction(script.CanPlay)) then
		return script.CanPlay(match, playerIndex, instance)
	end

	return true
end

--- Whether the Active Pokémon can retreat at all right now
--- @param match CardEngine.Match
--- @param playerIndex number
--- @return boolean
--- @return string? reason
function PokemonBase.CanRetreat(match, playerIndex)
	local active = PokemonBase.GetActive(match, playerIndex)

	if (not active) then
		return false, Key("reason_no_active")
	end

	if (PokemonBase.IsDoll(match, active)) then
		return false, Key("reason_doll_cannot_retreat")
	end

	if (match:GetPlayerState(playerIndex, "retreatFailed")) then
		return false, Key("reason_retreat_failed")
	end

	local prevented, condition = PokemonBase.IsPreventedBy(match, active, "PreventsRetreat")

	if (prevented) then
		return false, PokemonBase.CONDITIONS[condition].Label
	end

	if (#match:GetZoneInstances("Bench", playerIndex) == 0) then
		return false, Key("reason_empty_bench")
	end

	if (PokemonBase.CountEnergy(match, active) < PokemonBase.GetRetreatCost(match, active)) then
		return false, Key("reason_retreat_cost")
	end

	return true
end

--- Discards Energy cards until they add up to a cost, asking which when there is a choice. Double
--- Colorless counts for two.
--- @param match CardEngine.Match
--- @param playerIndex number
--- @param instance CardEngine.MatchCardInstance
--- @param cost number
--- @param promptKey string
function PokemonBase.PayEnergyCost(match, playerIndex, instance, cost, promptKey)
	local paid = 0

	while (paid < cost) do
		local energy = PokemonBase.GetEnergyCards(match, instance)

		if (#energy == 0) then
			return
		end

		local chosen = match:PromptInstance(playerIndex, promptKey, energy, 1) or energy[1]

		paid = paid + #PokemonBase.GetProvides(match, chosen, instance)

		PokemonBase.DiscardAttached(match, chosen)
	end
end

--- Whether the Active Pokémon may use one of its attacks
--- @param match CardEngine.Match
--- @param playerIndex number
--- @param attackIndex number
--- @return boolean
--- @return string? reason
function PokemonBase.CanUseAttack(match, playerIndex, attackIndex)
	local active = PokemonBase.GetActive(match, playerIndex)

	if (not active) then
		return false, Key("reason_no_active")
	end

	local prevented, condition = PokemonBase.IsPreventedBy(match, active, "PreventsAttack")

	if (prevented) then
		return false, PokemonBase.CONDITIONS[condition].Label
	end

	local opponent = match:GetOpponentIndex(playerIndex)
	local defender = opponent and PokemonBase.GetActive(match, opponent)

	if (not defender) then
		return false, Key("reason_no_defender")
	end

	local attack = PokemonBase.GetAttacks(match, active)[attackIndex]

	if (not attack) then
		return false, Key("reason_no_such_attack")
	end

	if (match:Query("AttackAllowed", { instance = active, player = playerIndex, attackIndex = attackIndex }, true) ~= true) then
		return false, Key("reason_attack_disabled")
	end

	if (not PokemonBase.CanPayAttackCost(match, active, attack)) then
		return false, Key("reason_not_enough_energy")
	end

	local script = PokemonBase.GetAttackScript(match:GetInstanceCard(active), attackIndex)

	if (script and isfunction(script.CanUse)) then
		return script.CanUse(match, playerIndex, active, defender)
	end

	return true
end

PokemonBase.Actions = {}

--- Attach 1 Energy card from the hand to 1 of your Pokémon. Once per turn.
PokemonBase.Actions.AttachEnergy = {
	Phase = "Main",

	IsAvailable = function(match, playerIndex)
		if (match:GetPlayerState(playerIndex, "attachedEnergy")) then
			return false, Key("reason_already_attached")
		end

		if (not PokemonBase.HandHas(match, playerIndex, PokemonBase.IsEnergyCard)) then
			return false, Key("reason_no_energy_in_hand")
		end

		return true
	end,

	IsLegal = function(match, playerIndex, params)
		if (match:GetPlayerState(playerIndex, "attachedEnergy")) then
			return false, Key("reason_already_attached")
		end

		local instance, card = getHandCard(match, playerIndex, params.card)

		if (not instance) then
			return false, Key("reason_not_in_hand")
		end

		if (card and not PokemonBase.IsEnergyCard(card)) then
			return false, Key("reason_not_energy")
		end

		if (not getOwnPokemon(match, playerIndex, params.target)) then
			return false, Key("reason_no_such_pokemon")
		end

		return true
	end,

	Perform = function(match, playerIndex, params)
		local instance = match:GetInstance(params.card)
		local target = match:GetInstance(params.target)

		CardEngine.Match.AttachCard(match, instance, target)
		CardEngine.Match.SetPlayerState(match, playerIndex, "attachedEnergy", true)

		match:AddLogMessage(Key("log_attached"), {
			player = PokemonBase.PlayerName(match, playerIndex),
			card = PokemonBase.NameOf(match, instance),
			target = PokemonBase.NameOf(match, target),
		})
	end,
}

--- Put a Basic Pokémon (or Clefairy Doll) from the hand onto the Bench
PokemonBase.Actions.PlayBasic = {
	Phase = "Main",

	IsAvailable = function(match, playerIndex)
		if (not match:HasZoneSpace("Bench", playerIndex)) then
			return false, Key("reason_bench_full")
		end

		if (not PokemonBase.HandHas(match, playerIndex, PokemonBase.IsPlayableAsBasic)) then
			return false, Key("reason_no_basic_in_hand")
		end

		return true
	end,

	IsLegal = function(match, playerIndex, params)
		local instance, card = getHandCard(match, playerIndex, params.card)

		if (not instance) then
			return false, Key("reason_not_in_hand")
		end

		if (card and not PokemonBase.IsPlayableAsBasic(card)) then
			return false, Key("reason_not_basic")
		end

		if (not match:HasZoneSpace("Bench", playerIndex)) then
			return false, Key("reason_bench_full")
		end

		return true
	end,

	Perform = function(match, playerIndex, params)
		local instance = match:GetInstance(params.card)

		CardEngine.Match.MoveCard(match, instance, "Bench", playerIndex, { faceDown = false })
		CardEngine.Match.SetInstanceState(match, instance, "playedOnTurn", match:GetTurn())

		match:AddLogMessage(Key("log_benched"), {
			player = PokemonBase.PlayerName(match, playerIndex),
			card = PokemonBase.NameOf(match, instance),
		})
	end,
}

--- Evolve a Pokémon by putting the next stage on top of it
PokemonBase.Actions.Evolve = {
	Phase = "Main",

	IsAvailable = function(match, playerIndex)
		for _, target in ipairs(PokemonBase.GetPokemonInPlay(match, playerIndex)) do
			for _, instance in ipairs(match:GetZoneInstances("Hand", playerIndex)) do
				local card = match:GetInstanceCard(instance)

				if (card and PokemonBase.IsEvolutionCard(card) and PokemonBase.CanEvolve(match, card, target)) then
					return true
				end
			end
		end

		return false, Key("reason_nothing_to_evolve")
	end,

	IsLegal = function(match, playerIndex, params)
		local instance, card = getHandCard(match, playerIndex, params.card)

		if (not instance) then
			return false, Key("reason_not_in_hand")
		end

		local target = getOwnPokemon(match, playerIndex, params.target)

		if (not target) then
			return false, Key("reason_no_such_pokemon")
		end

		return PokemonBase.CanEvolve(match, card, target)
	end,

	Perform = function(match, playerIndex, params)
		PokemonBase.Evolve(match, params.card, params.target)
	end,
}

--- Play a Trainer card. As many as the player likes.
PokemonBase.Actions.PlayTrainer = {
	Phase = "Main",

	IsAvailable = function(match, playerIndex)
		if (not PokemonBase.HandHas(match, playerIndex, function(card, instance)
				return (PokemonBase.CanPlayTrainer(match, playerIndex, instance, card))
			end)) then
			return false, Key("reason_no_trainer_to_play")
		end

		return true
	end,

	IsLegal = function(match, playerIndex, params)
		local instance, card = getHandCard(match, playerIndex, params.card)

		if (not instance) then
			return false, Key("reason_not_in_hand")
		end

		return PokemonBase.CanPlayTrainer(match, playerIndex, instance, card)
	end,

	Perform = function(match, playerIndex, params)
		local instance = match:GetInstance(params.card)
		local card = match:GetInstanceCard(instance)
		local script = PokemonBase.GetCardScript(card)

		match:AddLogMessage(Key("log_played_trainer"), {
			player = PokemonBase.PlayerName(match, playerIndex),
			card = card:GetName(),
		})

		local played = script.OnPlay(PokemonBase.BuildContext(match, playerIndex, instance))

		-- A card with nothing to do stays in the hand
		if (played == false) then
			return
		end

		-- PlusPower and Defender stay attached; the rest is discarded once resolved
		if (instance.zone == "Hand") then
			CardEngine.Match.MoveCard(match, instance, "Discard", playerIndex)
		end

		PokemonBase.CheckKnockOuts(match)
	end,
}

--- Use a Pokémon Power
PokemonBase.Actions.UsePower = {
	Phase = "Main",

	IsAvailable = function(match, playerIndex)
		if (not PokemonBase.HasUsablePower(match, playerIndex)) then
			return false, Key("reason_no_power")
		end

		return true
	end,

	IsLegal = function(match, playerIndex, params)
		return PokemonBase.CanUsePower(match, playerIndex, params.card)
	end,

	Perform = function(match, playerIndex, params)
		PokemonBase.UsePower(match, playerIndex, params.card)
		PokemonBase.CheckKnockOuts(match)
	end,
}

--- Retreat: pay the Retreat Cost in Energy to swap the Active Pokémon with a benched one. A
--- Confused Pokémon pays, then flips; tails and it stays where it is.
PokemonBase.Actions.Retreat = {
	Phase = "Main",

	IsAvailable = function(match, playerIndex)
		return PokemonBase.CanRetreat(match, playerIndex)
	end,

	IsLegal = function(match, playerIndex, params)
		local legal, reason = PokemonBase.CanRetreat(match, playerIndex)

		if (not legal) then
			return false, reason
		end

		local benched = params.target and match:GetInstance(params.target)

		if (not benched or benched.zone ~= "Bench" or benched.controller ~= playerIndex
				or not PokemonBase.IsInPlay(match, benched)) then
			return false, Key("reason_no_such_pokemon")
		end

		return true
	end,

	Perform = function(match, playerIndex, params)
		local active = PokemonBase.GetActive(match, playerIndex)
		local benched = match:GetInstance(params.target)

		PokemonBase.PayEnergyCost(match, playerIndex, active, PokemonBase.GetRetreatCost(match, active),
			Key("prompt_retreat_energy"))

		if (PokemonBase.HasCondition(match, active, "Confused")) then
			if (match:FlipCoin(1, Key("flip_confused_retreat"), active) ~= 1) then
				CardEngine.Match.SetPlayerState(match, playerIndex, "retreatFailed", true)

				match:AddLogMessage(Key("log_retreat_failed"), {
					player = PokemonBase.PlayerName(match, playerIndex),
					card = PokemonBase.NameOf(match, active),
				})

				return
			end
		end

		PokemonBase.SwapWithActive(match, benched)

		match:AddLogMessage(Key("log_retreated"), {
			player = PokemonBase.PlayerName(match, playerIndex),
			card = PokemonBase.NameOf(match, active),
			target = PokemonBase.NameOf(match, benched),
		})
	end,
}

--- Discard Clefairy Doll from play, which it says may be done at any time during the turn
PokemonBase.Actions.DiscardDoll = {
	Phase = "Main",

	IsAvailable = function(match, playerIndex)
		for _, instance in ipairs(PokemonBase.GetPokemonInPlay(match, playerIndex)) do
			if (PokemonBase.IsDoll(match, instance)) then
				return true
			end
		end

		return false, Key("reason_no_doll")
	end,

	IsLegal = function(match, playerIndex, params)
		local instance = getOwnPokemon(match, playerIndex, params.card)

		if (not instance or not PokemonBase.IsDoll(match, instance)) then
			return false, Key("reason_no_doll")
		end

		return true
	end,

	Perform = function(match, playerIndex, params)
		local instance = match:GetInstance(params.card)

		match:AddLogMessage(Key("log_discarded_doll"), {
			player = PokemonBase.PlayerName(match, playerIndex),
			card = PokemonBase.NameOf(match, instance),
		})

		PokemonBase.PutOutOfPlay(match, instance)
		PokemonBase.CheckKnockOuts(match)
	end,
}

--- Attack with the Active Pokémon, which ends the turn
PokemonBase.Actions.Attack = {
	Phase = "Main",
	EndsTurn = true,

	IsAvailable = function(match, playerIndex)
		local active = PokemonBase.GetActive(match, playerIndex)

		if (not active) then
			return false, Key("reason_no_active")
		end

		local prevented, condition = PokemonBase.IsPreventedBy(match, active, "PreventsAttack")

		if (prevented) then
			return false, PokemonBase.CONDITIONS[condition].Label
		end

		return true
	end,

	IsLegal = function(match, playerIndex, params)
		return PokemonBase.CanUseAttack(match, playerIndex, tonumber(params.attack) or 0)
	end,

	Perform = function(match, playerIndex, params)
		PokemonBase.ResolveAttack(match, playerIndex, tonumber(params.attack))
	end,
}

--- End the turn without attacking
PokemonBase.Actions.EndTurn = {
	Phase = "Main",
	EndsTurn = true,
	InstantHandover = true,

	IsLegal = function()
		return true
	end,

	Perform = function(match, playerIndex)
		PokemonBase.EndTurn(match, playerIndex)
	end,
}
