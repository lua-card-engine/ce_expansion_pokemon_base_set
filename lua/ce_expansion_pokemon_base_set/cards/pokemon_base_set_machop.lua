local CARD = CARD
CARD.Name = "ce_expansion_pokemon_base_set_machop"
CARD.Description = "ce_expansion_pokemon_base_set_machop_description"
CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_machop"
CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
CARD.Attributes = {
	Category = "Pokemon",
	Id = "base1-52",
	Illustrator = "Mitsuhiro Arita",
	LocalId = "52",
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
	DexId = {
		66
	},
	Hp = 50,
	Types = {
		"Fighting"
	},
	Stage = "Basic",
	Attacks = {
		{
			Cost = {
				"Fighting"
			},
			Name = "Low Kick",
			Damage = 20
		}
	},
	Weaknesses = {
		{
			Type = "Psychic",
			Value = "×2"
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
			Avg = 1.79,
			Low = 0.02,
			Trend = 2.94,
			Avg1 = 0.19,
			Avg7 = 1.57,
			Avg30 = 1.93,
			AvgHolo = nil,
			LowHolo = nil,
			TrendHolo = 6.84,
			Avg1Holo = 0.05,
			Avg7Holo = 5.03,
			Avg30Holo = 5.03
		},
		Tcgplayer = {
			Updated = "2025-12-22T20:05:16.000Z",
			Unit = "USD",
			Normal = {
				LowPrice = 0.07,
				MidPrice = 0.4,
				HighPrice = 501.5,
				MarketPrice = 0.48,
				DirectLowPrice = 0.17
			}
		}
	}
}
