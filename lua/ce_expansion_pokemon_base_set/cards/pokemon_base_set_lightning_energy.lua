local CARD = CARD
CARD.Name = "ce_expansion_pokemon_base_set_lightning_energy"
CARD.Description = "ce_expansion_pokemon_base_set_lightning_energy_description"
CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_lightning_energy"
CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
CARD.Attributes = {
	Category = "Energy",
	Id = "base1-100",
	Illustrator = "Keiji Kinebuchi",
	LocalId = "100",
	Rarity = "Common",
	Set = {
		CardCount = {
			Official = 102,
			Total = 102
		},
		Id = "base1",
		Logo = "https://assets.tcgdex.net/en/base/base1/logo",
		Name = "Base Set"
	},
	Variants = {
		FirstEdition = true,
		Holo = false,
		Normal = true,
		Reverse = false,
		WPromo = false
	},
	VariantsDetailed = {
		{
			Type = "normal",
			Subtype = "unlimited",
			Size = "standard"
		},
		{
			Type = "normal",
			Subtype = "shadowless",
			Size = "standard",
			Stamp = {
				"1st-edition"
			}
		},
		{
			Type = "normal",
			Subtype = "shadowless",
			Size = "standard"
		},
		{
			Type = "normal",
			Subtype = "1999-2000-copyright",
			Size = "standard"
		}
	},
	Stage = "Basic",
	EnergyType = "Normal",
	Legal = {
		Standard = true,
		Expanded = true
	},
	Updated = "2025-11-14T00:13:03+01:00",
	Pricing = {
		Cardmarket = {
			Updated = "2025-12-22T01:48:03.000Z",
			Unit = "EUR",
			Avg = 0.69,
			Low = 0.02,
			Trend = 1.28,
			Avg1 = 0.43,
			Avg7 = 0.54,
			Avg30 = 0.73,
			AvgHolo = nil,
			LowHolo = nil,
			TrendHolo = 8.39,
			Avg1Holo = 4,
			Avg7Holo = 4.54,
			Avg30Holo = 4.5
		},
		Tcgplayer = {
			Updated = "2025-12-22T20:05:16.000Z",
			Unit = "USD",
			Normal = {
				LowPrice = 0.08,
				MidPrice = 0.36,
				HighPrice = 2.99,
				MarketPrice = 0.45,
				DirectLowPrice = 0.44
			}
		}
	}
}
