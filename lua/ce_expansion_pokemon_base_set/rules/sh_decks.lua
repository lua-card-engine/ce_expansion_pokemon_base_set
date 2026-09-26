-- The four preconstructed Base Set theme decks, card for card. The practice opponent brings them
-- and the rules checks play them, so a list that drifts out of legality fails the self-test.

CardEngine.ExpansionSets.PokemonBase = CardEngine.ExpansionSets.PokemonBase or {}

local PokemonBase = CardEngine.ExpansionSets.PokemonBase
local Key = PokemonBase.Key

--- Each deck's cards, by card name without the set prefix
PokemonBase.THEME_DECKS = {
	brushfire = {
		ninetales = 1, weedle = 4, tangela = 2, nidoran = 4, arcanine = 1, growlithe = 2,
		charmeleon = 2, vulpix = 2, charmander = 4,
		lass = 1, pluspower = 1, energy_retrieval = 2, switch = 1, potion = 3, gust_of_wind = 1,
		energy_removal = 1,
		grass_energy = 10, fire_energy = 18,
	},

	overgrowth = {
		gyarados = 1, magikarp = 2, starmie = 3, staryu = 4, beedrill = 1, kakuna = 2, ivysaur = 2,
		weedle = 4, bulbasaur = 4,
		potion = 1, bill = 2, super_potion = 2, switch = 2, gust_of_wind = 2,
		water_energy = 12, grass_energy = 16,
	},

	zap = {
		mewtwo = 1, kadabra = 1, jynx = 2, haunter = 2, gastly = 3, drowzee = 2, abra = 3, pikachu = 4,
		magnemite = 3,
		computer_search = 1, defender = 1, super_potion = 1, professor_oak = 1, switch = 2, potion = 1,
		gust_of_wind = 2, bill = 2,
		lightning_energy = 12, psychic_energy = 16,
	},

	blackout = {
		hitmonchan = 1, farfetch_d = 2, wartortle = 2, squirtle = 4, staryu = 3, onix = 3, sandshrew = 3,
		machoke = 2, machop = 4,
		super_energy_removal = 1, pluspower = 1, professor_oak = 1, gust_of_wind = 1, energy_removal = 4,
		fighting_energy = 16, water_energy = 12,
	},
}

--- The order the decks are listed in
PokemonBase.THEME_DECK_ORDER = { "brushfire", "overgrowth", "zap", "blackout" }

--- Builds one of the theme decks in the shape Card Engine expects. A fresh copy each time, since a
--- match takes a deck apart.
--- @param key string One of THEME_DECK_ORDER
--- @param deckID string? What to call it (default: the set's own ID for it)
--- @return table
--- @realm shared
function PokemonBase.BuildThemeDeck(key, deckID)
	local cards = {}

	for name, count in pairs(PokemonBase.THEME_DECKS[key]) do
		cards[PokemonBase.CARD_PREFIX .. name] = count
	end

	return {
		id = deckID or (PokemonBase.EXPANSION_SET_ID .. "_" .. key),
		name = Key("deck_" .. key),
		expansion_set = PokemonBase.EXPANSION_SET_ID,
		cards = cards,
	}
end
