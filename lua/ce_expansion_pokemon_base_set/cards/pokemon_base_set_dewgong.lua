local CARD = CARD
CARD.Name = "ce_expansion_pokemon_base_set_dewgong"
CARD.Description = "ce_expansion_pokemon_base_set_dewgong_description"
CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_dewgong"
CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
CARD.Attributes = {
	Category = "Pokemon",
	Id = "base1-25",
	Illustrator = "Mitsuhiro Arita",
	LocalId = "25",
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
		87
	},
	Hp = 80,
	Types = {
		"Water"
	},
	EvolveFrom = "Seel",
	Stage = "Stage1",
	Attacks = {
		{
			Cost = {
				"Water",
				"Water",
				"Colorless"
			},
			Name = "Aurora Beam",
			Damage = 50
		},
		{
			Cost = {
				"Water",
				"Water",
				"Colorless",
				"Colorless"
			},
			Name = "Ice Beam",
			Effect = "Flip a coin. If heads, the Defending Pokémon is now Paralyzed.",
			Damage = 30
		}
	},
	Weaknesses = {
		{
			Type = "Lightning",
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
			Avg = 3.6,
			Low = 0.1,
			Trend = 3.3,
			Avg1 = 1.37,
			Avg7 = 2.06,
			Avg30 = 3.59,
			AvgHolo = nil,
			LowHolo = nil,
			TrendHolo = 3.59,
			Avg1Holo = 5.55,
			Avg7Holo = 1.99,
			Avg30Holo = 1.99
		},
		Tcgplayer = {
			Updated = "2025-12-22T20:05:16.000Z",
			Unit = "USD",
			Normal = {
				LowPrice = 0.48,
				MidPrice = 1.51,
				HighPrice = 19.98,
				MarketPrice = 3.37,
				DirectLowPrice = 3.33
			}
		}
	}
}
