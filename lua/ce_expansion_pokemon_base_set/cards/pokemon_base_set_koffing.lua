local CARD = CARD
CARD.Name = "ce_expansion_pokemon_base_set_koffing"
CARD.Description = "ce_expansion_pokemon_base_set_koffing_description"
CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_koffing"
CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON
CARD.Attributes = {
	Category = "Pokemon",
	Id = "base1-51",
	Illustrator = "Mitsuhiro Arita",
	LocalId = "51",
	Rarity = "Common",
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
		109
		},
	Hp = 50,
	Types = {
		"Grass"
		},
	Stage = "Basic",
	Attacks = {
		{
			Cost = {
				"Grass",
				"Grass"
				},
			Name = "Foul Gas",
			Effect = "Flip a coin. If heads, the Defending Pokémon is now Poisoned; if tails, it is now Confused.",
			Damage = 10
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
			Avg = 1.18,
			Low = 0.02,
			Trend = 0.78,
			Avg1 = 0.85,
			Avg7 = 0.77,
			Avg30 = 1.19,
			AvgHolo = nil,
			LowHolo = nil,
			TrendHolo = 0.2,
			Avg1Holo = 0.2,
			Avg7Holo = 0.11,
			Avg30Holo = 0.11
			},
		Tcgplayer = {
			Updated = "2025-12-22T20:05:16.000Z",
			Unit = "USD",
			Normal = {
				LowPrice = 0.15,
				MidPrice = 0.49,
				HighPrice = 9999,
				MarketPrice = 0.52,
				DirectLowPrice = 0.3
				}
			}
		}
	}
