local CARD = CARD
CARD.Name = "ce_expansion_pokemon_base_set_chansey"
CARD.Description = "ce_expansion_pokemon_base_set_chansey_description"
CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_chansey"
CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON
CARD.Attributes = {
	Category = "Pokemon",
	Id = "base1-3",
	Illustrator = "Ken Sugimori",
	LocalId = "3",
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
		113
		},
	Hp = 120,
	Types = {
		"Colorless"
		},
	Stage = "Basic",
	Attacks = {
		{
			Cost = {
				"Colorless",
				"Colorless"
				},
			Name = "Scrunch",
			Effect = "Flip a coin. If heads, prevent all damage done to Chansey during your opponent's next turn. (Any other effects of attacks still happen.)"
			},
		{
			Cost = {
				"Colorless",
				"Colorless",
				"Colorless",
				"Colorless"
				},
			Name = "Double-edge",
			Effect = "Chansey does 80 damage to itself.",
			Damage = 80
			}
		},
	Weaknesses = {
		{
			Type = "Fighting",
			Value = "×2"
			}
		},
	Resistances = {
		{
			Type = "Psychic",
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
			Avg = 24.4,
			Low = 3.5,
			Trend = 27.18,
			Avg1 = 29.99,
			Avg7 = 23.5,
			Avg30 = 24.26,
			AvgHolo = nil,
			LowHolo = nil,
			TrendHolo = 21.43,
			Avg1Holo = 17.45,
			Avg7Holo = 21.22,
			Avg30Holo = 19.23
			},
		Tcgplayer = {
			Updated = "2025-12-22T20:05:16.000Z",
			Unit = "USD",
			Holofoil = {
				LowPrice = 16,
				MidPrice = 21.87,
				HighPrice = 71.99,
				MarketPrice = 26.49,
				DirectLowPrice = nil
				}
			}
		}
	}

CARD.HolographicStrength = Vector(1, 1, 1)
CARD.HolographicTexture = "card_engine/holo_rainbow_strong"
