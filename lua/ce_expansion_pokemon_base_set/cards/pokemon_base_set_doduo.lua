local CARD = CARD
CARD.Name = "ce_expansion_pokemon_base_set_doduo"
CARD.Description = "ce_expansion_pokemon_base_set_doduo_description"
CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_doduo"
CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
CARD.Attributes = {
	Category = "Pokemon",
	Id = "base1-48",
	Illustrator = "Mitsuhiro Arita",
	LocalId = "48",
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
		84
	},
	Hp = 50,
	Types = {
		"Colorless"
	},
	Stage = "Basic",
	Attacks = {
		{
			Cost = {
				"Colorless"
			},
			Name = "Fury Attack",
			Effect = "Flip 2 coins. This attack does 10 damage times the number of heads.",
			Damage = "10x"
		}
	},
	Weaknesses = {
		{
			Type = "Lightning",
			Value = "×2"
		}
	},
	Resistances = {
		{
			Type = "Fighting",
			Value = "-30"
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
			Avg = 3.92,
			Low = 0.02,
			Trend = 3.24,
			Avg1 = 0.5,
			Avg7 = 1.66,
			Avg30 = 3.86,
			AvgHolo = nil,
			LowHolo = nil,
			TrendHolo = 0.02,
			Avg1Holo = 0.02,
			Avg7Holo = 0.16,
			Avg30Holo = 0.16
		},
		Tcgplayer = {
			Updated = "2025-12-22T20:05:16.000Z",
			Unit = "USD",
			Normal = {
				LowPrice = 0.15,
				MidPrice = 0.65,
				HighPrice = 9.88,
				MarketPrice = 0.9,
				DirectLowPrice = 0.45
			}
		}
	}
}
