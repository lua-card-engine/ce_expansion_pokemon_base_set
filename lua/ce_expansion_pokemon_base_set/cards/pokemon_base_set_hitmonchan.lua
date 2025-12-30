local CARD = CARD
CARD.Name = "ce_expansion_pokemon_base_set_hitmonchan"
CARD.Description = "ce_expansion_pokemon_base_set_hitmonchan_description"
CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_hitmonchan"
CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON
CARD.Attributes = {
	Category = "Pokemon",
	Id = "base1-7",
	Illustrator = "Ken Sugimori",
	LocalId = "7",
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
		Holo = true,
		Normal = false,
		Reverse = false,
		WPromo = false
		},
	VariantsDetailed = {
		{
			Type = "holo",
			Subtype = "unlimited",
			Size = "standard"
			},
		{
			Type = "holo",
			Subtype = "shadowless",
			Size = "standard",
			Stamp = {
				"1st-edition"
				}
			},
		{
			Type = "holo",
			Subtype = "shadowless",
			Size = "standard"
			},
		{
			Type = "holo",
			Subtype = "1999-2000-copyright",
			Size = "standard"
			}
		},
	DexId = {
		107
		},
	Hp = 70,
	Types = {
		"Fighting"
		},
	Stage = "Basic",
	Attacks = {
		{
			Cost = {
				"Fighting"
				},
			Name = "Jab",
			Damage = 20
			},
		{
			Cost = {
				"Fighting",
				"Fighting",
				"Colorless"
				},
			Name = "Special Punch",
			Damage = 40
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
			Avg = 13.68,
			Low = 0.95,
			Trend = 21.29,
			Avg1 = 2.38,
			Avg7 = 17.82,
			Avg30 = 13.69,
			AvgHolo = nil,
			LowHolo = nil,
			TrendHolo = 9.47,
			Avg1Holo = 5.1,
			Avg7Holo = 6.59,
			Avg30Holo = 8.13
			},
		Tcgplayer = {
			Updated = "2025-12-22T20:05:16.000Z",
			Unit = "USD",
			Holofoil = {
				LowPrice = 5.98,
				MidPrice = 10.99,
				HighPrice = 34.98,
				MarketPrice = 18.86,
				DirectLowPrice = nil
				}
			}
		}
	}

CARD.HolographicStrength = Vector(1, 1, 1)
CARD.HolographicTexture = "card_engine/holo_rainbow_strong"
