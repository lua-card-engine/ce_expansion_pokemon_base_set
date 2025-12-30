local CARD = CARD
CARD.Name = "ce_expansion_pokemon_base_set_magnemite"
CARD.Description = "ce_expansion_pokemon_base_set_magnemite_description"
CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_magnemite"
CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON
CARD.Attributes = {
	Category = "Pokemon",
	Id = "base1-53",
	Illustrator = "Keiji Kinebuchi",
	LocalId = "53",
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
		81
		},
	Hp = 40,
	Types = {
		"Lightning"
		},
	Stage = "Basic",
	Attacks = {
		{
			Cost = {
				"Lightning"
				},
			Name = "Thunder Wave",
			Effect = "Flip a coin. If heads, the Defending Pokémon is now Paralyzed.",
			Damage = 10
			},
		{
			Cost = {
				"Lightning",
				"Colorless"
				},
			Name = "Selfdestruct",
			Effect = "Does 10 damage to each Pokémon on each player's Bench. (Don't apply Weakness and Resistance for Benched Pokémon.) Magnemite does 40 damage to itself.",
			Damage = 40
			}
		},
	Weaknesses = {
		{
			Type = "Fighting",
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
			Avg = 2.1,
			Low = 0.02,
			Trend = 1.88,
			Avg1 = 0.36,
			Avg7 = 0.92,
			Avg30 = 2.05,
			AvgHolo = nil,
			LowHolo = nil,
			TrendHolo = 0.05,
			Avg1Holo = 0.05,
			Avg7Holo = 0.15,
			Avg30Holo = 0.15
			},
		Tcgplayer = {
			Updated = "2025-12-22T20:05:16.000Z",
			Unit = "USD",
			Normal = {
				LowPrice = 0.15,
				MidPrice = 0.48,
				HighPrice = 9999,
				MarketPrice = 0.48,
				DirectLowPrice = 0.3
				}
			}
		}
	}
