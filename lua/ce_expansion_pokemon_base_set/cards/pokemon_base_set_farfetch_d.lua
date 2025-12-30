local CARD = CARD
CARD.Name = "ce_expansion_pokemon_base_set_farfetch_d"
CARD.Description = "ce_expansion_pokemon_base_set_farfetch_d_description"
CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_farfetch_d"
CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON
CARD.Attributes = {
	Category = "Pokemon",
	Id = "base1-27",
	Illustrator = "Ken Sugimori",
	LocalId = "27",
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
		83
		},
	Hp = 50,
	Types = {
		"Colorless"
		},
	Stage = "Basic",
	Attacks = {
		{
			Cost = {
				"Colorless"
				},
			Name = "Leek Slap",
			Effect = "Flip a coin. If tails, this attack does nothing. Either way, you can't use this attack again as long as Farfetch'd stays in play (even putting Farfetch'd on the Bench won't let you use it again.)",
			Damage = 30
			},
		{
			Cost = {
				"Colorless",
				"Colorless",
				"Colorless"
				},
			Name = "Pot Smash",
			Damage = 30
			}
		},
	Weaknesses = {
		{
			Type = "Lightning",
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
			Avg = 3.15,
			Low = 0.02,
			Trend = 9.19,
			Avg1 = 3.5,
			Avg7 = 7.83,
			Avg30 = 3.07,
			AvgHolo = nil,
			LowHolo = nil,
			TrendHolo = 8.04,
			Avg1Holo = 5,
			Avg7Holo = 5.76,
			Avg30Holo = 5.76
			},
		Tcgplayer = {
			Updated = "2025-12-22T20:05:16.000Z",
			Unit = "USD",
			Normal = {
				LowPrice = 0.1,
				MidPrice = 0.75,
				HighPrice = 19.98,
				MarketPrice = 0.94,
				DirectLowPrice = 19.72
				}
			}
		}
	}
