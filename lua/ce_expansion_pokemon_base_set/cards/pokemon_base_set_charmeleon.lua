local CARD = CARD
CARD.Name = "ce_expansion_pokemon_base_set_charmeleon"
CARD.Description = "ce_expansion_pokemon_base_set_charmeleon_description"
CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_charmeleon"
CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON
CARD.Attributes = {
	Category = "Pokemon",
	Id = "base1-24",
	Illustrator = "Mitsuhiro Arita",
	LocalId = "24",
	Rarity = "Uncommon",
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
		5
		},
	Hp = 80,
	Types = {
		"Fire"
		},
	EvolveFrom = "Charmander",
	Stage = "Stage1",
	Attacks = {
		{
			Cost = {
				"Colorless",
				"Colorless",
				"Colorless"
				},
			Name = "Slash",
			Damage = 30
			},
		{
			Cost = {
				"Fire",
				"Fire",
				"Colorless"
				},
			Name = "Flamethrower",
			Effect = "Discard 1 Energy card attached to Charmeleon in order to use this attack.",
			Damage = 50
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
			Avg = 6.04,
			Low = 0.02,
			Trend = 9.51,
			Avg1 = 1.71,
			Avg7 = 12.66,
			Avg30 = 6.13,
			AvgHolo = nil,
			LowHolo = nil,
			TrendHolo = 13.83,
			Avg1Holo = 5.5,
			Avg7Holo = 10.64,
			Avg30Holo = 7.85
			},
		Tcgplayer = {
			Updated = "2025-12-22T20:05:16.000Z",
			Unit = "USD",
			Normal = {
				LowPrice = 0.25,
				MidPrice = 0.9,
				HighPrice = 9999,
				MarketPrice = 2.12,
				DirectLowPrice = 0.65
				}
			}
		}
	}
