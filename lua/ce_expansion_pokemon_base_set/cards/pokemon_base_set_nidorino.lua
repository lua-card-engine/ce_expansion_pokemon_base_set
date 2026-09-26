local CARD = CARD
CARD.Name = "ce_expansion_pokemon_base_set_nidorino"
CARD.Description = "ce_expansion_pokemon_base_set_nidorino_description"
CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_nidorino"
CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
CARD.Attributes = {
	Category = "Pokemon",
	Id = "base1-37",
	Illustrator = "Mitsuhiro Arita",
	LocalId = "37",
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
		33
	},
	Hp = 60,
	Types = {
		"Grass"
	},
	EvolveFrom = "Nidoran♂",
	Stage = "Stage1",
	Attacks = {
		{
			Cost = {
				"Grass",
				"Colorless",
				"Colorless"
			},
			Name = "Double Kick",
			Effect = "Flip 2 coins. This attack does 30 damage times the number of heads.",
			Damage = "30x"
		},
		{
			Cost = {
				"Grass",
				"Grass",
				"Colorless",
				"Colorless"
			},
			Name = "Horn Drill",
			Damage = 50
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
			Avg = 4.9,
			Low = 0.03,
			Trend = 4.29,
			Avg1 = 2.06,
			Avg7 = 3.45,
			Avg30 = 4.71,
			AvgHolo = nil,
			LowHolo = nil,
			TrendHolo = 3.24,
			Avg1Holo = 8,
			Avg7Holo = 1.93,
			Avg30Holo = 1.93
		},
		Tcgplayer = {
			Updated = "2025-12-22T20:05:16.000Z",
			Unit = "USD",
			Normal = {
				LowPrice = 0.5,
				MidPrice = 1.5,
				HighPrice = 19.98,
				MarketPrice = 2.09,
				DirectLowPrice = 1.15
			}
		}
	}
}
