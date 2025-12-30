local CARD = CARD
CARD.Name = "ce_expansion_pokemon_base_set_electabuzz"
CARD.Description = "ce_expansion_pokemon_base_set_electabuzz_description"
CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_electabuzz"
CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON
CARD.Attributes = {
	Category = "Pokemon",
	Id = "base1-20",
	Illustrator = "Ken Sugimori",
	LocalId = "20",
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
		125
		},
	Hp = 70,
	Types = {
		"Lightning"
		},
	Stage = "Basic",
	Attacks = {
		{
			Cost = {
				"Lightning"
				},
			Name = "Thundershock",
			Effect = "Flip a coin. If heads, the Defending Pokémon is now Paralyzed.",
			Damage = 10
			},
		{
			Cost = {
				"Lightning",
				"Colorless"
				},
			Name = "Thunderpunch",
			Effect = "Flip a coin. If heads, this attack does 30 damage plus 10 more damage; if tails, this attack does 30 damage and Electabuzz does 10 damage to itself.",
			Damage = "30+"
			}
		},
	Weaknesses = {
		{
			Type = "Fighting",
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
			Avg = 10.61,
			Low = 0.39,
			Trend = 16.68,
			Avg1 = 1.5,
			Avg7 = 18.39,
			Avg30 = 11.23,
			AvgHolo = nil,
			LowHolo = nil,
			TrendHolo = 5.62,
			Avg1Holo = 8,
			Avg7Holo = 5.28,
			Avg30Holo = 3.14
			},
		Tcgplayer = {
			Updated = "2025-12-22T20:05:16.000Z",
			Unit = "USD",
			Normal = {
				LowPrice = 3,
				MidPrice = 5.46,
				HighPrice = 4321,
				MarketPrice = 7.07,
				DirectLowPrice = 5.12
				}
			}
		}
	}

CARD.HolographicStrength = Vector(1, 1, 1)
CARD.HolographicTexture = "card_engine/holo_rainbow_strong"
