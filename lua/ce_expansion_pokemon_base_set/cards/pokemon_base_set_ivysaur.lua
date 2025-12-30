local CARD = CARD
CARD.Name = "ce_expansion_pokemon_base_set_ivysaur"
CARD.Description = "ce_expansion_pokemon_base_set_ivysaur_description"
CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_ivysaur"
CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON
CARD.Attributes = {
	Category = "Pokemon",
	Id = "base1-30",
	Illustrator = "Ken Sugimori",
	LocalId = "30",
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
		2
		},
	Hp = 60,
	Types = {
		"Grass"
		},
	EvolveFrom = "Barboach",
	Stage = "Stage1",
	Attacks = {
		{
			Cost = {
				"Grass",
				"Colorless",
				"Colorless"
				},
			Name = "Vine Whip",
			Damage = 30
			},
		{
			Cost = {
				"Grass",
				"Grass",
				"Grass"
				},
			Name = "Poisonpowder",
			Effect = "The Defending Pokémon is now Poisoned.",
			Damage = 20
			}
		},
	Weaknesses = {
		{
			Type = "Fire",
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
			Avg = 6.35,
			Low = 0.02,
			Trend = 5.54,
			Avg1 = 0.4,
			Avg7 = 7.54,
			Avg30 = 6.13,
			AvgHolo = nil,
			LowHolo = nil,
			TrendHolo = 2.43,
			Avg1Holo = 1,
			Avg7Holo = 3.04,
			Avg30Holo = 3.04
			},
		Tcgplayer = {
			Updated = "2025-12-22T20:05:16.000Z",
			Unit = "USD",
			Normal = {
				LowPrice = 0.55,
				MidPrice = 2.01,
				HighPrice = 9999,
				MarketPrice = 3.24,
				DirectLowPrice = 1.88
				}
			}
		}
	}
