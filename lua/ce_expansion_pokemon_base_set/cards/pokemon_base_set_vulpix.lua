local CARD = CARD
CARD.Name = "ce_expansion_pokemon_base_set_vulpix"
CARD.Description = "ce_expansion_pokemon_base_set_vulpix_description"
CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_vulpix"
CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON
CARD.Attributes = {
	Category = "Pokemon",
	Id = "base1-68",
	Illustrator = "Ken Sugimori",
	LocalId = "68",
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
		37
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
			Name = "Confuse Ray",
			Effect = "Flip a coin. If heads, the Defending Pokémon is now Confused.",
			Damage = 10
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
			Avg = 1.33,
			Low = 0.02,
			Trend = 1.9,
			Avg1 = 0.94,
			Avg7 = 0.8,
			Avg30 = 1.33,
			AvgHolo = nil,
			LowHolo = nil,
			TrendHolo = 1.25,
			Avg1Holo = 1.25,
			Avg7Holo = 1.25,
			Avg30Holo = 1.25
			},
		Tcgplayer = {
			Updated = "2025-12-22T20:05:16.000Z",
			Unit = "USD",
			Normal = {
				LowPrice = 0.1,
				MidPrice = 0.5,
				HighPrice = 49.99,
				MarketPrice = 0.63,
				DirectLowPrice = 0.66
				}
			}
		}
	}
