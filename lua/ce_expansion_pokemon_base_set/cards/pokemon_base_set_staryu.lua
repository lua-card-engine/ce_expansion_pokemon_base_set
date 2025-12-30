local CARD = CARD
CARD.Name = "ce_expansion_pokemon_base_set_staryu"
CARD.Description = "ce_expansion_pokemon_base_set_staryu_description"
CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_staryu"
CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON
CARD.Attributes = {
	Category = "Pokemon",
	Id = "base1-65",
	Illustrator = "Keiji Kinebuchi",
	LocalId = "65",
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
		120
		},
	Hp = 40,
	Types = {
		"Water"
		},
	Stage = "Basic",
	Attacks = {
		{
			Cost = {
				"Water"
				},
			Name = "Slap",
			Damage = 20
			}
		},
	Weaknesses = {
		{
			Type = "Lightning",
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
			Avg = 0.71,
			Low = 0.02,
			Trend = 0.31,
			Avg1 = 0.22,
			Avg7 = 0.41,
			Avg30 = 0.7,
			AvgHolo = nil,
			LowHolo = nil,
			TrendHolo = 0.49,
			Avg1Holo = 0.49,
			Avg7Holo = 0.49,
			Avg30Holo = 0.49
			},
		Tcgplayer = {
			Updated = "2025-12-22T20:05:16.000Z",
			Unit = "USD",
			Normal = {
				LowPrice = 0.1,
				MidPrice = 0.42,
				HighPrice = 501.5,
				MarketPrice = 0.52,
				DirectLowPrice = 0.54
				}
			}
		}
	}
