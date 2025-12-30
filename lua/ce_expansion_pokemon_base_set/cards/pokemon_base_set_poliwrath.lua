local CARD = CARD
CARD.Name = "ce_expansion_pokemon_base_set_poliwrath"
CARD.Description = "ce_expansion_pokemon_base_set_poliwrath_description"
CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_poliwrath"
CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON
CARD.Attributes = {
	Category = "Pokemon",
	Id = "base1-13",
	Illustrator = "Ken Sugimori",
	LocalId = "13",
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
		62
		},
	Hp = 90,
	Types = {
		"Water"
		},
	EvolveFrom = "Poliwhirl",
	Stage = "Stage2",
	Attacks = {
		{
			Cost = {
				"Water",
				"Water",
				"Colorless"
				},
			Name = "Water Gun",
			Effect = "Does 30 damage plus 10 more damage for each Water Energy attached to Poliwrath but not used to pay for this attack's Energy cost. Extra Water Energy after the 2nd doesn't count.",
			Damage = "30+"
			},
		{
			Cost = {
				"Water",
				"Water",
				"Colorless",
				"Colorless"
				},
			Name = "Whirlpool",
			Effect = "If the Defending Pokémon has any Energy cards attached to it, choose 1 and discard it.",
			Damage = 40
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
			Avg = 28.91,
			Low = 3,
			Trend = 35.65,
			Avg1 = 11.51,
			Avg7 = 29.35,
			Avg30 = 30.75,
			AvgHolo = nil,
			LowHolo = nil,
			TrendHolo = 19.78,
			Avg1Holo = 8.96,
			Avg7Holo = 22.07,
			Avg30Holo = 19.08
			},
		Tcgplayer = {
			Updated = "2025-12-22T20:05:16.000Z",
			Unit = "USD",
			Holofoil = {
				LowPrice = 10.95,
				MidPrice = 15.99,
				HighPrice = 39.99,
				MarketPrice = 19.46,
				DirectLowPrice = 12.99
				}
			}
		}
	}

CARD.HolographicStrength = Vector(1, 1, 1)
CARD.HolographicTexture = "card_engine/holo_rainbow_strong"
