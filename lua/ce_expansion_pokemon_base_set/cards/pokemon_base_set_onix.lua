local CARD = CARD
CARD.Name = "ce_expansion_pokemon_base_set_onix"
CARD.Description = "ce_expansion_pokemon_base_set_onix_description"
CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_onix"
CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON
CARD.Attributes = {
	Category = "Pokemon",
	Id = "base1-56",
	Illustrator = "Ken Sugimori",
	LocalId = "56",
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
		95
		},
	Hp = 90,
	Types = {
		"Fighting"
		},
	Stage = "Basic",
	Attacks = {
		{
			Cost = {
				"Fighting"
				},
			Name = "Rock Throw",
			Damage = 10
			},
		{
			Cost = {
				"Fighting",
				"Fighting"
				},
			Name = "Harden",
			Effect = "During opponent's next turn, whenever 30 or less damage is done to Onix (after applying Weakness and Resistance), prevent that damage. (Any other effects of attacks still happen.)"
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
			Avg = 1.03,
			Low = 0.02,
			Trend = 0.7,
			Avg1 = 0.22,
			Avg7 = 0.86,
			Avg30 = 1.04,
			AvgHolo = nil,
			LowHolo = nil,
			TrendHolo = 0.02,
			Avg1Holo = 0.02,
			Avg7Holo = 0.1,
			Avg30Holo = 0.1
			},
		Tcgplayer = {
			Updated = "2025-12-22T20:05:16.000Z",
			Unit = "USD",
			Normal = {
				LowPrice = 0.1,
				MidPrice = 0.54,
				HighPrice = 501.5,
				MarketPrice = 0.7,
				DirectLowPrice = 0.3
				}
			}
		}
	}
