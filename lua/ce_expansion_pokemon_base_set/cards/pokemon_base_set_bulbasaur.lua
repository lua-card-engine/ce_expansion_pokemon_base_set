local CARD = CARD
CARD.Name = "ce_expansion_pokemon_base_set_bulbasaur"
CARD.Description = "ce_expansion_pokemon_base_set_bulbasaur_description"
CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_bulbasaur"
CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
CARD.Attributes = {
	Category = "Pokemon",
	Id = "base1-44",
	Illustrator = "Mitsuhiro Arita",
	LocalId = "44",
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
		1
	},
	Hp = 40,
	Types = {
		"Grass"
	},
	Stage = "Basic",
	Attacks = {
		{
			Cost = {
				"Grass",
				"Grass"
			},
			Name = "Leech Seed",
			Effect = "Unless all damage from this attack is prevented, you may remove 1 damage counter from Bulbasaur.",
			Damage = 20
		}
	},
	Weaknesses = {
		{
			Type = "Fire",
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
			Avg = 4.94,
			Low = 0.02,
			Trend = 6.07,
			Avg1 = 1.13,
			Avg7 = 3.66,
			Avg30 = 5.03,
			AvgHolo = nil,
			LowHolo = nil,
			TrendHolo = 15.37,
			Avg1Holo = 1.8,
			Avg7Holo = 13.07,
			Avg30Holo = 12.91
		},
		Tcgplayer = {
			Updated = "2025-12-22T20:05:16.000Z",
			Unit = "USD",
			Normal = {
				LowPrice = 0.29,
				MidPrice = 1.34,
				HighPrice = 501.5,
				MarketPrice = 2.23,
				DirectLowPrice = 1
			}
		}
	}
}
