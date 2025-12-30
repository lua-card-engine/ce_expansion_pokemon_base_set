local CARD = CARD
CARD.Name = "ce_expansion_pokemon_base_set_charmander"
CARD.Description = "ce_expansion_pokemon_base_set_charmander_description"
CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_charmander"
CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON
CARD.Attributes = {
	Category = "Pokemon",
	Id = "base1-46",
	Illustrator = "Mitsuhiro Arita",
	LocalId = "46",
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
		4
		},
	Hp = 50,
	Types = {
		"Fire"
		},
	Stage = "Basic",
	Attacks = {
		{
			Cost = {
				"Colorless"
				},
			Name = "Scratch",
			Damage = 10
			},
		{
			Cost = {
				"Fire",
				"Colorless"
				},
			Name = "Ember",
			Effect = "Discard 1 Energy card attached to Charmander in order to use this attack.",
			Damage = 30
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
			Avg = 3.72,
			Low = 0.02,
			Trend = 5.96,
			Avg1 = 2.51,
			Avg7 = 5.25,
			Avg30 = 3.72,
			AvgHolo = nil,
			LowHolo = nil,
			TrendHolo = 7.04,
			Avg1Holo = 20,
			Avg7Holo = 6.42,
			Avg30Holo = 12.47
			},
		Tcgplayer = {
			Updated = "2025-12-22T20:05:16.000Z",
			Unit = "USD",
			Normal = {
				LowPrice = 0.2,
				MidPrice = 1,
				HighPrice = 100,
				MarketPrice = 1.72,
				DirectLowPrice = 0.62
				}
			}
		}
	}
