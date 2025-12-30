local CARD = CARD
CARD.Name = "ce_expansion_pokemon_base_set_beedrill"
CARD.Description = "ce_expansion_pokemon_base_set_beedrill_description"
CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_beedrill"
CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON
CARD.Attributes = {
	Category = "Pokemon",
	Id = "base1-17",
	Illustrator = "Ken Sugimori",
	LocalId = "17",
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
		15
		},
	Hp = 80,
	Types = {
		"Grass"
		},
	EvolveFrom = "Kakuna",
	Stage = "Stage2",
	Attacks = {
		{
			Cost = {
				"Colorless",
				"Colorless",
				"Colorless"
				},
			Name = "Twineedle",
			Effect = "Flip 2 coins. This attack does 30 damage times the number of heads.",
			Damage = "30x"
			},
		{
			Cost = {
				"Grass",
				"Grass",
				"Grass"
				},
			Name = "Poison Sting",
			Effect = "Flip a coin. If heads, the Defending Pokémon is now Poisoned.",
			Damage = 40
			}
		},
	Weaknesses = {
		{
			Type = "Fire",
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
			Avg = 8.22,
			Low = 0.08,
			Trend = 19.25,
			Avg1 = 82.16,
			Avg7 = 21.59,
			Avg30 = 7.68,
			AvgHolo = nil,
			LowHolo = nil,
			TrendHolo = 1.52,
			Avg1Holo = 2.45,
			Avg7Holo = 1.17,
			Avg30Holo = 1.09
			},
		Tcgplayer = {
			Updated = "2025-12-22T20:05:16.000Z",
			Unit = "USD",
			Normal = {
				LowPrice = 0.22,
				MidPrice = 2,
				HighPrice = 9999,
				MarketPrice = 4.83,
				DirectLowPrice = nil
				}
			}
		}
	}

CARD.HolographicStrength = Vector(1, 1, 1)
CARD.HolographicTexture = "card_engine/holo_rainbow_strong"
