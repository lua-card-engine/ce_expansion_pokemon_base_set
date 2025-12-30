local CARD = CARD
CARD.Name = "ce_expansion_pokemon_base_set_porygon"
CARD.Description = "ce_expansion_pokemon_base_set_porygon_description"
CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_porygon"
CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON
CARD.Attributes = {
	Category = "Pokemon",
	Id = "base1-39",
	Illustrator = "Tomoaki Imakuni",
	LocalId = "39",
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
		137
		},
	Hp = 30,
	Types = {
		"Colorless"
		},
	Stage = "Basic",
	Attacks = {
		{
			Cost = {
				"Colorless"
				},
			Name = "Conversion 1",
			Effect = "If the Defending Pokémon has a Weakness, you may change it to a type of your choice other than Colorless."
			},
		{
			Cost = {
				"Colorless",
				"Colorless"
				},
			Name = "Conversion 2",
			Effect = "Change Porygon's Resistance to a type of your choice other than Colorless."
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
			Avg = 3.81,
			Low = 0.05,
			Trend = 5.82,
			Avg1 = 3.89,
			Avg7 = 4.3,
			Avg30 = 3.78,
			AvgHolo = nil,
			LowHolo = nil,
			TrendHolo = 3.5,
			Avg1Holo = 3.5,
			Avg7Holo = 2.25,
			Avg30Holo = 2.25
			},
		Tcgplayer = {
			Updated = "2025-12-22T20:05:16.000Z",
			Unit = "USD",
			Normal = {
				LowPrice = 0.7,
				MidPrice = 1.58,
				HighPrice = 24.95,
				MarketPrice = 2.29,
				DirectLowPrice = 4.49
				}
			}
		}
	}
