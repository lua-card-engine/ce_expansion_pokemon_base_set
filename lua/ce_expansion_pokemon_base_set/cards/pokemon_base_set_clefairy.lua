local CARD = CARD
CARD.Name = "ce_expansion_pokemon_base_set_clefairy"
CARD.Description = "ce_expansion_pokemon_base_set_clefairy_description"
CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_clefairy"
CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON
CARD.Attributes = {
	Category = "Pokemon",
	Id = "base1-5",
	Illustrator = "Ken Sugimori",
	LocalId = "5",
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
		35
		},
	Hp = 40,
	Types = {
		"Colorless"
		},
	Stage = "Basic",
	Attacks = {
		{
			Cost = {
				"Colorless"
				},
			Name = "Sing",
			Effect = "Flip a coin. If heads, the Defending Pokémon is now Asleep."
			},
		{
			Cost = {
				"Colorless",
				"Colorless",
				"Colorless"
				},
			Name = "Metronome",
			Effect = "Choose 1 of Defending Pokémon's attacks. Metronome copies that attack except for its Energy costs and anything else required in order to use that attack, such as discarding energy cards. (No matter what type the defender is, Clefairy's type is still Colorless.)"
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
			Avg = 21.93,
			Low = 4.95,
			Trend = 17.52,
			Avg1 = 11.82,
			Avg7 = 20.31,
			Avg30 = 23.08,
			AvgHolo = nil,
			LowHolo = nil,
			TrendHolo = 14,
			Avg1Holo = 16.81,
			Avg7Holo = 11.97,
			Avg30Holo = 19.63
			},
		Tcgplayer = {
			Updated = "2025-12-22T20:05:16.000Z",
			Unit = "USD",
			Holofoil = {
				LowPrice = 11,
				MidPrice = 19.72,
				HighPrice = 95.98,
				MarketPrice = 24.97,
				DirectLowPrice = nil
				}
			}
		}
	}

CARD.HolographicStrength = Vector(1, 1, 1)
CARD.HolographicTexture = "card_engine/holo_rainbow_strong"
