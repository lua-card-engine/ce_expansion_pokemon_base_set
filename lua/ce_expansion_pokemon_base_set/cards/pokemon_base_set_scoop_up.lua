local CARD = CARD
CARD.Name = "ce_expansion_pokemon_base_set_scoop_up"
CARD.Description = "ce_expansion_pokemon_base_set_scoop_up_description"
CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_scoop_up"
CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
CARD.Attributes = {
	Category = "Trainer",
	Id = "base1-78",
	Illustrator = "Keiji Kinebuchi",
	LocalId = "78",
	Rarity = "Rare",
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
	Legal = {
		Standard = false,
		Expanded = false
	},
	Updated = "2025-11-14T00:13:03+01:00",
	Pricing = {
		Cardmarket = {
			Updated = "2025-12-22T01:48:03.000Z",
			Unit = "EUR",
			Avg = 9.01,
			Low = 3,
			Trend = 10.62,
			Avg1 = 3,
			Avg7 = 10.59,
			Avg30 = 9.09,
			AvgHolo = nil,
			LowHolo = nil,
			TrendHolo = 5.39,
			Avg1Holo = 7,
			Avg7Holo = 2.9,
			Avg30Holo = 2.9
		},
		Tcgplayer = {
			Updated = "2025-12-22T20:05:16.000Z",
			Unit = "USD",
			Normal = {
				LowPrice = 3.89,
				MidPrice = 6.42,
				HighPrice = 29.99,
				MarketPrice = 7.26,
				DirectLowPrice = 6.17
			}
		}
	}
}

CARD.HolographicStrength = Vector(1, 1, 1)
CARD.HolographicTexture = "card_engine/holo_rainbow_strong"
