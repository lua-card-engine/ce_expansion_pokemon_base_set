local CARD = CARD
CARD.Name = "ce_expansion_pokemon_base_set_poliwhirl"
CARD.Description = "ce_expansion_pokemon_base_set_poliwhirl_description"
CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_poliwhirl"
CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON
CARD.Attributes = {
	Category = "Pokemon",
	Id = "base1-38",
	Illustrator = "Ken Sugimori",
	LocalId = "38",
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
		61
		},
	Hp = 60,
	Types = {
		"Water"
		},
	EvolveFrom = "Poliwag",
	Stage = "Stage1",
	Attacks = {
		{
			Cost = {
				"Water",
				"Water"
				},
			Name = "Amnesia",
			Effect = "Choose 1 of defenders attacks. Defender cannot use that attack next turn."
			},
		{
			Cost = {
				"Water",
				"Water",
				"Colorless"
				},
			Name = "Doubleslap",
			Effect = "Flip 2 coins. This attack does 30 damage times number of heads.",
			Damage = "30x"
			}
		},
	Weaknesses = {
		{
			Type = "Grass",
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
			Avg = 2.86,
			Low = 0.02,
			Trend = 2.07,
			Avg1 = 0.36,
			Avg7 = 1.28,
			Avg30 = 2.81,
			AvgHolo = nil,
			LowHolo = nil,
			TrendHolo = 43.68,
			Avg1Holo = 15,
			Avg7Holo = 22.54,
			Avg30Holo = 22.54
			},
		Tcgplayer = {
			Updated = "2025-12-22T20:05:16.000Z",
			Unit = "USD",
			Normal = {
				LowPrice = 0.2,
				MidPrice = 0.82,
				HighPrice = 9999,
				MarketPrice = 1.2,
				DirectLowPrice = 0.26
				}
			}
		}
	}
