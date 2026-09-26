-- Card kinds, types and Energy. Shared, because the board greys out attacks a Pokémon can't pay for
-- using exactly these functions.

CardEngine.ExpansionSets.PokemonBase = CardEngine.ExpansionSets.PokemonBase or {}

local PokemonBase = CardEngine.ExpansionSets.PokemonBase

--- The unique ID every card in this set starts with
PokemonBase.CARD_PREFIX = "pokemon_base_set_"

--- The Energy types, in the order the game prints them
PokemonBase.TYPES = { "Grass", "Fire", "Water", "Lightning", "Psychic", "Fighting", "Colorless" }

--- The types a player can pick when a card says "a type of your choice other than Colorless"
PokemonBase.CHOOSABLE_TYPES = { "Grass", "Fire", "Water", "Lightning", "Psychic", "Fighting" }

--- The colour each type is drawn in
PokemonBase.TYPE_COLORS = {
	Grass = Color(90, 170, 70),
	Fire = Color(230, 90, 50),
	Water = Color(70, 140, 230),
	Lightning = Color(240, 210, 50),
	Psychic = Color(160, 90, 190),
	Fighting = Color(180, 110, 60),
	Colorless = Color(220, 220, 220),
}

--- @param card CardEngine.Card?
--- @return boolean
function PokemonBase.IsPokemonCard(card)
	return card ~= nil and card:GetAttribute("Category") == "Pokemon"
end

--- Whether a card can be put into play from the hand on its own: a Basic Pokémon, or a Trainer that
--- says to play it as one (Clefairy Doll)
--- @param card CardEngine.Card?
--- @return boolean
function PokemonBase.IsPlayableAsBasic(card)
	if (not card) then
		return false
	end

	if (card:GetAttribute("PlayableAsBasic") == true) then
		return true
	end

	return PokemonBase.IsPokemonCard(card) and card:GetAttribute("Stage") == "Basic"
end

--- Whether a card is an Evolution card (Stage 1 or Stage 2)
--- @param card CardEngine.Card?
--- @return boolean
function PokemonBase.IsEvolutionCard(card)
	return PokemonBase.IsPokemonCard(card) and card:GetAttribute("EvolvesFromCard") ~= nil
end

--- @param card CardEngine.Card?
--- @return boolean
function PokemonBase.IsTrainerCard(card)
	return card ~= nil and card:GetAttribute("Category") == "Trainer"
end

--- @param card CardEngine.Card?
--- @return boolean
function PokemonBase.IsEnergyCard(card)
	return card ~= nil and card:GetAttribute("Category") == "Energy"
end

--- Whether a card is a basic Energy card. Double Colorless Energy is not.
--- @param card CardEngine.Card?
--- @return boolean
function PokemonBase.IsBasicEnergyCard(card)
	return PokemonBase.IsEnergyCard(card) and card:GetAttribute("EnergyType") == "Normal"
end

--- Whether a basic Energy card is of one type
--- @param card CardEngine.Card?
--- @param energyType string
--- @return boolean
function PokemonBase.IsBasicEnergyOfType(card, energyType)
	if (not PokemonBase.IsBasicEnergyCard(card)) then
		return false
	end

	return (card:GetAttribute("Provides") or {})[1] == energyType
end

--- The Stage of a card as a number: 0 for Basic, 1 and 2 for the evolutions
--- @param card CardEngine.Card?
--- @return number
function PokemonBase.GetStageNumber(card)
	local stage = card and card:GetAttribute("Stage")

	if (stage == "Stage1") then
		return 1
	elseif (stage == "Stage2") then
		return 2
	end

	return 0
end

--- The types of a Pokémon in play. Clefairy Doll is treated as Colorless.
--- @param match CardEngine.Match
--- @param instanceOrID CardEngine.MatchCardInstance|number
--- @return string[]
function PokemonBase.GetTypes(match, instanceOrID)
	return match:GetInstanceAttribute(instanceOrID, "Types", nil) or { "Colorless" }
end

--- Whether a Pokémon in play is of a type
--- @param match CardEngine.Match
--- @param instanceOrID CardEngine.MatchCardInstance|number
--- @param pokemonType string
--- @return boolean
function PokemonBase.IsOfType(match, instanceOrID, pokemonType)
	return table.HasValue(PokemonBase.GetTypes(match, instanceOrID), pokemonType)
end

--- The type a Pokémon is weak to, after anything that changes it (Conversion 1)
--- @param match CardEngine.Match
--- @param instanceOrID CardEngine.MatchCardInstance|number
--- @return string?
function PokemonBase.GetWeakness(match, instanceOrID)
	local weaknesses = match:GetInstanceAttribute(instanceOrID, "Weaknesses", nil) or {}
	local printed = weaknesses[1] and weaknesses[1].Type or nil
	local instance = match:ResolveInstance(instanceOrID)

	return match:Query("Weakness", {
		instance = instance,
		player = instance and instance.controller,
	}, printed)
end

--- The type a Pokémon resists, after anything that changes it (Conversion 2)
--- @param match CardEngine.Match
--- @param instanceOrID CardEngine.MatchCardInstance|number
--- @return string?
function PokemonBase.GetResistance(match, instanceOrID)
	local resistances = match:GetInstanceAttribute(instanceOrID, "Resistances", nil) or {}
	local printed = resistances[1] and resistances[1].Type or nil
	local instance = match:ResolveInstance(instanceOrID)

	return match:Query("Resistance", {
		instance = instance,
		player = instance and instance.controller,
	}, printed)
end

--- A Pokémon's attacks, as printed
--- @param match CardEngine.Match
--- @param instanceOrID CardEngine.MatchCardInstance|number
--- @return table[]
function PokemonBase.GetAttacks(match, instanceOrID)
	return match:GetInstanceAttribute(instanceOrID, "Attacks", nil) or {}
end

--- The damage printed on an attack, as a number. "30+", "10×" and "50-" all read as their number.
--- @param attack table
--- @return number
function PokemonBase.GetPrintedDamage(attack)
	if (not attack or attack.Damage == nil) then
		return 0
	end

	return tonumber(string.match(tostring(attack.Damage), "%d+")) or 0
end

--- The Pokémon Power printed on a card, if it has one
--- @param card CardEngine.Card?
--- @return table?
function PokemonBase.GetPrintedPower(card)
	local abilities = card and card:GetAttribute("Abilities")

	return abilities and abilities[1] or nil
end

-- A Pokémon's Energy is counted in units rather than cards: Double Colorless is one card providing
-- two Colorless, and Buzzap makes an Electrode provide two of a type. Paying for an attack asks
-- whether the units cover the cost; discarding takes cards.

--- Whether an attached card counts as Energy: Energy cards do, and so does an Electrode that used Buzzap
--- @param match CardEngine.Match
--- @param instanceOrID CardEngine.MatchCardInstance|number
--- @return boolean
function PokemonBase.IsAttachedEnergy(match, instanceOrID)
	if (match:GetInstanceState(instanceOrID, "buzzapType")) then
		return true
	end

	return PokemonBase.IsEnergyCard(match:GetInstanceCard(instanceOrID))
end

--- What one attached Energy card provides, before anything on its host changes it
--- @param match CardEngine.Match
--- @param energyOrID CardEngine.MatchCardInstance|number
--- @return string[]
function PokemonBase.GetPrintedProvides(match, energyOrID)
	local buzzapType = match:GetInstanceState(energyOrID, "buzzapType")

	if (buzzapType) then
		return { buzzapType, buzzapType }
	end

	local provides = match:GetInstanceAttribute(energyOrID, "Provides", nil)

	if (provides) then
		return table.Copy(provides)
	end

	-- A card the viewer can't identify provides one unit, enough for the board to count it
	return { "Colorless" }
end

--- What one attached Energy card provides to the Pokémon it is on, after anything in force
--- changes it (Energy Burn)
--- @param match CardEngine.Match
--- @param energyOrID CardEngine.MatchCardInstance|number
--- @param hostOrID CardEngine.MatchCardInstance|number
--- @return string[]
function PokemonBase.GetProvides(match, energyOrID, hostOrID)
	local host = match:ResolveInstance(hostOrID)

	return match:Query("EnergyProvided", {
		instance = host,
		player = host and host.controller,
		energy = match:ResolveInstance(energyOrID),
	}, PokemonBase.GetPrintedProvides(match, energyOrID))
end

--- The Energy cards attached to a Pokémon, optionally only those providing a type
--- @param match CardEngine.Match
--- @param instanceOrID CardEngine.MatchCardInstance|number
--- @param energyType string? Only cards that provide this type (after Energy Burn and the like)
--- @return CardEngine.MatchCardInstance[]
function PokemonBase.GetEnergyCards(match, instanceOrID, energyType)
	local energy = {}

	for _, attached in ipairs(match:GetAttached(instanceOrID)) do
		if (PokemonBase.IsAttachedEnergy(match, attached)) then
			if (not energyType or table.HasValue(PokemonBase.GetProvides(match, attached, instanceOrID), energyType)) then
				table.insert(energy, attached)
			end
		end
	end

	return energy
end

--- The basic Energy cards of one printed type attached to a Pokémon. Rain Dance and Energy Trans
--- move cards, so they care what the card is, not what it happens to provide right now.
--- @param match CardEngine.Match
--- @param instanceOrID CardEngine.MatchCardInstance|number
--- @param energyType string
--- @return CardEngine.MatchCardInstance[]
function PokemonBase.GetBasicEnergyCardsOfType(match, instanceOrID, energyType)
	local energy = {}

	for _, attached in ipairs(match:GetAttached(instanceOrID)) do
		if (PokemonBase.IsBasicEnergyOfType(match:GetInstanceCard(attached), energyType)) then
			table.insert(energy, attached)
		end
	end

	return energy
end

--- Every unit of Energy a Pokémon has, as a list of types
--- @param match CardEngine.Match
--- @param instanceOrID CardEngine.MatchCardInstance|number
--- @return string[]
function PokemonBase.GetEnergyUnits(match, instanceOrID)
	local units = {}

	for _, energy in ipairs(PokemonBase.GetEnergyCards(match, instanceOrID)) do
		for _, unit in ipairs(PokemonBase.GetProvides(match, energy, instanceOrID)) do
			table.insert(units, unit)
		end
	end

	return units
end

--- How many units of Energy a Pokémon has, optionally only of one type
--- @param match CardEngine.Match
--- @param instanceOrID CardEngine.MatchCardInstance|number
--- @param energyType string?
--- @return number
function PokemonBase.CountEnergy(match, instanceOrID, energyType)
	local count = 0

	for _, unit in ipairs(PokemonBase.GetEnergyUnits(match, instanceOrID)) do
		if (not energyType or unit == energyType) then
			count = count + 1
		end
	end

	return count
end

--- Whether some Energy units cover a cost. Typed symbols are matched first, so a unit that could
--- only pay for one is never spent on a Colorless symbol.
--- @param units string[]
--- @param cost string[]
--- @return boolean
function PokemonBase.CanPayCost(units, cost)
	local available = {}
	local total = 0

	for _, unit in ipairs(units) do
		available[unit] = (available[unit] or 0) + 1
		total = total + 1
	end

	local colorless = 0

	for _, symbol in ipairs(cost or {}) do
		if (symbol == "Colorless") then
			colorless = colorless + 1
		else
			if ((available[symbol] or 0) <= 0) then
				return false
			end

			available[symbol] = available[symbol] - 1
			total = total - 1
		end
	end

	return total >= colorless
end

--- Whether a Pokémon has the Energy for one of its attacks
--- @param match CardEngine.Match
--- @param instanceOrID CardEngine.MatchCardInstance|number
--- @param attack table
--- @return boolean
function PokemonBase.CanPayAttackCost(match, instanceOrID, attack)
	return PokemonBase.CanPayCost(PokemonBase.GetEnergyUnits(match, instanceOrID), attack and attack.Cost)
end

--- How many units of a type a Pokémon has beyond what an attack's cost needs (Hydro Pump, Water
--- Gun). Colorless symbols are paid with other Energy first, which favours the attacker.
--- @param match CardEngine.Match
--- @param instanceOrID CardEngine.MatchCardInstance|number
--- @param energyType string
--- @param cost string[]
--- @param max number? The most that count
--- @return number
function PokemonBase.CountExtraEnergy(match, instanceOrID, energyType, cost, max)
	local ofType, other = 0, 0

	for _, unit in ipairs(PokemonBase.GetEnergyUnits(match, instanceOrID)) do
		if (unit == energyType) then
			ofType = ofType + 1
		else
			other = other + 1
		end
	end

	local typedNeed, colorlessNeed = 0, 0

	for _, symbol in ipairs(cost or {}) do
		if (symbol == energyType) then
			typedNeed = typedNeed + 1
		elseif (symbol == "Colorless") then
			colorlessNeed = colorlessNeed + 1
		else
			-- A symbol of some third type takes one of the other units
			other = other - 1
		end
	end

	local extra = ofType - typedNeed - math.max(0, colorlessNeed - math.max(0, other))

	return math.Clamp(extra, 0, max or math.huge)
end

--- What it costs a Pokémon to retreat, after anything that changes it
--- @param match CardEngine.Match
--- @param instanceOrID CardEngine.MatchCardInstance|number
--- @return number
function PokemonBase.GetRetreatCost(match, instanceOrID)
	local instance = match:ResolveInstance(instanceOrID)
	local printed = match:GetInstanceAttribute(instanceOrID, "RetreatCost", 0)

	local cost = match:Query("RetreatCost", {
		instance = instance,
		player = instance and instance.controller,
	}, printed)

	return math.max(0, math.floor(cost))
end
