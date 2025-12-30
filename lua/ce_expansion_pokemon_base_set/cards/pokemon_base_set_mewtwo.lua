local CARD = CARD
CARD.Name = "ce_expansion_pokemon_base_set_mewtwo"
CARD.Description = "ce_expansion_pokemon_base_set_mewtwo_description"
CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_mewtwo"
CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON
CARD.Attributes = {
	Category = "Pokemon",
	Id = "base1-10",
	Illustrator = "Ken Sugimori",
	LocalId = "10",
	Rarity = "Rare",
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
		Holo = true,
		Normal = false,
		Reverse = false,
		WPromo = false
		},
	VariantsDetailed = {
		{
			Type = "holo",
			Subtype = "unlimited",
			Size = "standard"
			},
		{
			Type = "holo",
			Subtype = "shadowless",
			Size = "standard",
			Stamp = {
				"1st-edition"
				}
			},
		{
			Type = "holo",
			Subtype = "shadowless",
			Size = "standard"
			},
		{
			Type = "holo",
			Subtype = "1999-2000-copyright",
			Size = "standard"
			}
		},
	DexId = {
		150
		},
	Hp = 60,
	Types = {
		"Psychic"
		},
	Stage = "Basic",
	Attacks = {
		{
			Cost = {
				"Psychic",
				"Colorless"
				},
			Name = "Psychic",
			Effect = "Does 10 damage plus 10 more damage for each Energy card attached to the Defending Pokémon.",
			Damage = "10+"
			},
		{
			Cost = {
				"Psychic",
				"Psychic"
				},
			Name = "Barrier",
			Effect = "Discard 1 Energy card attached to Mewtwo in order to use this attack. During your opponent's next turn, prevent all effects of attacks, including damage, done to Mewtwo."
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
			Avg = 28.36,
			Low = 1.1,
			Trend = 28.6,
			Avg1 = 10.91,
			Avg7 = 22.9,
			Avg30 = 28.05,
			AvgHolo = nil,
			LowHolo = nil,
			TrendHolo = 16.9,
			Avg1Holo = 3.87,
			Avg7Holo = 10.59,
			Avg30Holo = 14.57
			},
		Tcgplayer = {
			Updated = "2025-12-22T20:05:16.000Z",
			Unit = "USD",
			Holofoil = {
				LowPrice = 18,
				MidPrice = 35.2,
				HighPrice = 3000,
				MarketPrice = 42.01,
				DirectLowPrice = nil
				}
			}
		}
	}

CARD.HolographicStrength = Vector(1, 1, 1)
CARD.HolographicTexture = "card_engine/holo_rainbow_strong"
