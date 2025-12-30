local CARD = CARD
CARD.Name = "ce_expansion_pokemon_base_set_gyarados"
CARD.Description = "ce_expansion_pokemon_base_set_gyarados_description"
CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_gyarados"
CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON
CARD.Attributes = {
	Category = "Pokemon",
	Id = "base1-6",
	Illustrator = "Mitsuhiro Arita",
	LocalId = "6",
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
		130
		},
	Hp = 100,
	Types = {
		"Water"
		},
	EvolveFrom = "Magikarp",
	Stage = "Stage1",
	Attacks = {
		{
			Cost = {
				"Water",
				"Water",
				"Water"
				},
			Name = "Dragon Rage",
			Damage = 50
			},
		{
			Cost = {
				"Water",
				"Water",
				"Water",
				"Water"
				},
			Name = "Bubblebeam",
			Effect = "Flip a coin. If heads, the Defending Pokémon is now Paralyzed.",
			Damage = 40
			}
		},
	Weaknesses = {
		{
			Type = "Grass",
			Value = "×2"
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
			Avg = 37.01,
			Low = 0.99,
			Trend = 15.46,
			Avg1 = 4.25,
			Avg7 = 14,
			Avg30 = 35.55,
			AvgHolo = nil,
			LowHolo = nil,
			TrendHolo = 14.3,
			Avg1Holo = 12.94,
			Avg7Holo = 13.88,
			Avg30Holo = 12.87
			},
		Tcgplayer = {
			Updated = "2025-12-22T20:05:16.000Z",
			Unit = "USD",
			Holofoil = {
				LowPrice = 14.2,
				MidPrice = 29.99,
				HighPrice = 167.15,
				MarketPrice = 34.69,
				DirectLowPrice = nil
				}
			}
		}
	}

CARD.HolographicStrength = Vector(1, 1, 1)
CARD.HolographicTexture = "card_engine/holo_rainbow_strong"
