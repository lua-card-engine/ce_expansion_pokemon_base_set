local CARD = CARD
CARD.Name = "ce_expansion_pokemon_base_set_magmar"
CARD.Description = "ce_expansion_pokemon_base_set_magmar_description"
CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_magmar"
CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON
CARD.Attributes = {
	Category = "Pokemon",
	Id = "base1-36",
	Illustrator = "Ken Sugimori",
	LocalId = "36",
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
		126
		},
	Hp = 50,
	Types = {
		"Fire"
		},
	Stage = "Basic",
	Attacks = {
		{
			Cost = {
				"Fire",
				"Fire"
				},
			Name = "Fire Punch",
			Damage = 30
			},
		{
			Cost = {
				"Fire",
				"Fire",
				"Colorless"
				},
			Name = "Flamethrower",
			Effect = "Discard 1 Energy card attached to Magmar in order to use this attack.",
			Damage = 50
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
			Avg = 3.29,
			Low = 0.02,
			Trend = 3.29,
			Avg1 = 2.12,
			Avg7 = 3.71,
			Avg30 = 4.11,
			AvgHolo = nil,
			LowHolo = nil,
			TrendHolo = 0.13,
			Avg1Holo = 0.15,
			Avg7Holo = 0.11,
			Avg30Holo = 0.11
			},
		Tcgplayer = {
			Updated = "2025-12-22T20:05:16.000Z",
			Unit = "USD",
			Normal = {
				LowPrice = 0.25,
				MidPrice = 1.5,
				HighPrice = 5.99,
				MarketPrice = 2.29,
				DirectLowPrice = 0.75
				}
			}
		}
	}
