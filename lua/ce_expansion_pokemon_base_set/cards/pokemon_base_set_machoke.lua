local CARD = CARD
CARD.Name = "ce_expansion_pokemon_base_set_machoke"
CARD.Description = "ce_expansion_pokemon_base_set_machoke_description"
CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_machoke"
CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
CARD.Attributes = {
	Category = "Pokemon",
	Id = "base1-34",
	Illustrator = "Ken Sugimori",
	LocalId = "34",
	Rarity = "Uncommon",
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
		67
	},
	Hp = 80,
	Types = {
		"Fighting"
	},
	EvolveFrom = "Machop",
	Stage = "Stage1",
	Attacks = {
		{
			Cost = {
				"Fighting",
				"Fighting",
				"Colorless"
			},
			Name = "Karate Chop",
			Effect = "Does 50 damage minus 10 for each damage counter on Machoke.",
			Damage = "50-"
		},
		{
			Cost = {
				"Fighting",
				"Fighting",
				"Colorless",
				"Colorless"
			},
			Name = "Submission",
			Effect = "Machoke does 20 damage to itself.",
			Damage = 60
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
			Avg = 1.04,
			Low = 0.02,
			Trend = 1.17,
			Avg1 = 0.25,
			Avg7 = 0.61,
			Avg30 = 1.04,
			AvgHolo = nil,
			LowHolo = nil,
			TrendHolo = 0.2,
			Avg1Holo = 0.2,
			Avg7Holo = 0.2,
			Avg30Holo = 0.2
		},
		Tcgplayer = {
			Updated = "2025-12-22T20:05:16.000Z",
			Unit = "USD",
			Normal = {
				LowPrice = 0.15,
				MidPrice = 0.57,
				HighPrice = 9999,
				MarketPrice = 0.83,
				DirectLowPrice = nil
			}
		}
	}
}
