local CARD = CARD
CARD.Name = "ce_expansion_pokemon_base_set_sandshrew"
CARD.Description = "ce_expansion_pokemon_base_set_sandshrew_description"
CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_sandshrew"
CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
CARD.Attributes = {
	Category = "Pokemon",
	Id = "base1-62",
	Illustrator = "Ken Sugimori",
	LocalId = "62",
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
		27
	},
	Hp = 40,
	Types = {
		"Fighting"
	},
	Stage = "Basic",
	Attacks = {
		{
			Cost = {
				"Fighting"
			},
			Name = "Sand-attack",
			Effect =
			"If the Defending Pokémon tries to attack during your opponent's next turn, your opponent flips a coin. If tails, that attack does nothing.",
			Damage = 10
		}
	},
	Weaknesses = {
		{
			Type = "Grass",
			Value = "×2"
		}
	},
	Resistances = {
		{
			Type = "Lightning",
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
			Avg = 1.83,
			Low = 0.02,
			Trend = 1.77,
			Avg1 = 1.27,
			Avg7 = 0.85,
			Avg30 = 1.88,
			AvgHolo = nil,
			LowHolo = nil,
			TrendHolo = 10.98,
			Avg1Holo = 14.99,
			Avg7Holo = 5.84,
			Avg30Holo = 5.84
		},
		Tcgplayer = {
			Updated = "2025-12-22T20:05:16.000Z",
			Unit = "USD",
			Normal = {
				LowPrice = 0.15,
				MidPrice = 0.52,
				HighPrice = 5,
				MarketPrice = 0.65,
				DirectLowPrice = 0.63
			}
		}
	}
}
