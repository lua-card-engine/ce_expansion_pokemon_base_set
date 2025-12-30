local CARD = CARD
CARD.Name = "ce_expansion_pokemon_base_set_abra"
CARD.Description = "ce_expansion_pokemon_base_set_abra_description"
CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_abra"
CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON
CARD.Attributes = {
	Category = "Pokemon",
	Id = "base1-43",
	Illustrator = "Mitsuhiro Arita",
	LocalId = "43",
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
		63
		},
	Hp = 30,
	Types = {
		"Psychic"
		},
	Stage = "Basic",
	Attacks = {
		{
			Cost = {
				"Colorless"
				},
			Name = "Psyshock",
			Effect = "Flip a coin. If heads, the Defending Pokémon is now Paralyzed.",
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
			Avg = 0.9,
			Low = 0.02,
			Trend = 0.84,
			Avg1 = 1.9,
			Avg7 = 1.13,
			Avg30 = 1.05,
			AvgHolo = nil,
			LowHolo = nil,
			TrendHolo = 0.04,
			Avg1Holo = 0.1,
			Avg7Holo = 0.12,
			Avg30Holo = 0.12
			},
		Tcgplayer = {
			Updated = "2025-12-22T20:05:16.000Z",
			Unit = "USD",
			Normal = {
				LowPrice = 0.11,
				MidPrice = 0.52,
				HighPrice = 9999,
				MarketPrice = 0.98,
				DirectLowPrice = 0.46
				}
			}
		}
	}
