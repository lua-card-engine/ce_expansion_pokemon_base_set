local CARD = CARD
CARD.Name = "ce_expansion_pokemon_base_set_zapdos"
CARD.Description = "ce_expansion_pokemon_base_set_zapdos_description"
CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_zapdos"
CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON
CARD.Attributes = {
	Category = "Pokemon",
	Id = "base1-16",
	Illustrator = "Ken Sugimori",
	LocalId = "16",
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
		145
		},
	Hp = 90,
	Types = {
		"Lightning"
		},
	Stage = "Basic",
	Attacks = {
		{
			Cost = {
				"Lightning",
				"Lightning",
				"Lightning",
				"Colorless"
				},
			Name = "Thunder",
			Effect = "Flip a coin. If tails, Zapdos does 30 damage to itself.",
			Damage = 60
			},
		{
			Cost = {
				"Lightning",
				"Lightning",
				"Lightning",
				"Lightning"
				},
			Name = "Thunderbolt",
			Effect = "Discard all Energy cards attached to Zapdos in order to use this attack.",
			Damage = 100
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
			Avg = 37.79,
			Low = 3.99,
			Trend = 30.72,
			Avg1 = 7.75,
			Avg7 = 41.41,
			Avg30 = 37.23,
			AvgHolo = nil,
			LowHolo = nil,
			TrendHolo = 16.02,
			Avg1Holo = 13.17,
			Avg7Holo = 21.35,
			Avg30Holo = 21.65
			},
		Tcgplayer = {
			Updated = "2025-12-22T20:05:16.000Z",
			Unit = "USD",
			Holofoil = {
				LowPrice = 19.98,
				MidPrice = 31.06,
				HighPrice = 9999,
				MarketPrice = 36.61,
				DirectLowPrice = nil
				}
			}
		}
	}

CARD.HolographicStrength = Vector(1, 1, 1)
CARD.HolographicTexture = "card_engine/holo_rainbow_strong"
