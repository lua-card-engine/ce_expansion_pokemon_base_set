local CARD = CARD
CARD.Name = "ce_expansion_pokemon_base_set_magikarp"
CARD.Description = "ce_expansion_pokemon_base_set_magikarp_description"
CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_magikarp"
CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
CARD.Attributes = {
	Category = "Pokemon",
	Id = "base1-35",
	Illustrator = "Mitsuhiro Arita",
	LocalId = "35",
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
		129
	},
	Hp = 30,
	Types = {
		"Water"
	},
	Stage = "Basic",
	Attacks = {
		{
			Cost = {
				"Colorless"
			},
			Name = "Tackle",
			Damage = 10
		},
		{
			Cost = {
				"Water"
			},
			Name = "Flail",
			Effect = "Does 10 damage times number of damage counters on Magikarp.",
			Damage = "10x"
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
			Avg = 2.73,
			Low = 0.02,
			Trend = 2.35,
			Avg1 = 0.84,
			Avg7 = 1.39,
			Avg30 = 2.71,
			AvgHolo = nil,
			LowHolo = nil,
			TrendHolo = 2.2,
			Avg1Holo = 7.5,
			Avg7Holo = 3.82,
			Avg30Holo = 3.82
		},
		Tcgplayer = {
			Updated = "2025-12-22T20:05:16.000Z",
			Unit = "USD",
			Normal = {
				LowPrice = 0.45,
				MidPrice = 1.17,
				HighPrice = 19.97,
				MarketPrice = 2.91,
				DirectLowPrice = 19.87
			}
		}
	}
}
