local CARD = CARD
CARD.Name = "ce_expansion_pokemon_base_set_growlithe"
CARD.Description = "ce_expansion_pokemon_base_set_growlithe_description"
CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_growlithe"
CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON
CARD.Attributes = {
	Category = "Pokemon",
	Id = "base1-28",
	Illustrator = "Ken Sugimori",
	LocalId = "28",
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
		58
		},
	Hp = 60,
	Types = {
		"Fire"
		},
	Stage = "Basic",
	Attacks = {
		{
			Cost = {
				"Fire",
				"Colorless"
				},
			Name = "Flare",
			Damage = 20
			}
		},
	Weaknesses = {
		{
			Type = "Water",
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
			Avg = 3.34,
			Low = 0.02,
			Trend = 1.8,
			Avg1 = 1.87,
			Avg7 = 1.74,
			Avg30 = 3.28,
			AvgHolo = nil,
			LowHolo = nil,
			TrendHolo = 3.27,
			Avg1Holo = 6,
			Avg7Holo = 2.15,
			Avg30Holo = 2.15
			},
		Tcgplayer = {
			Updated = "2025-12-22T20:05:16.000Z",
			Unit = "USD",
			Normal = {
				LowPrice = 0.2,
				MidPrice = 0.7,
				HighPrice = 9999,
				MarketPrice = 1.01,
				DirectLowPrice = 0.24
				}
			}
		}
	}
