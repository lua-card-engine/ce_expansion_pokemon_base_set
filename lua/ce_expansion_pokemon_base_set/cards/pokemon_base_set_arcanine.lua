local CARD = CARD
CARD.Name = "ce_expansion_pokemon_base_set_arcanine"
CARD.Description = "ce_expansion_pokemon_base_set_arcanine_description"
CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_arcanine"
CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
CARD.Attributes = {
	Category = "Pokemon",
	Id = "base1-23",
	Illustrator = "Ken Sugimori",
	LocalId = "23",
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
		59
	},
	Hp = 100,
	Types = {
		"Fire"
	},
	EvolveFrom = "Growlithe",
	Stage = "Stage1",
	Attacks = {
		{
			Cost = {
				"Fire",
				"Fire",
				"Colorless"
			},
			Name = "Flamethrower",
			Effect = "Discard 1 Energy card attached to Arcanine in order to use this attack.",
			Damage = 50
		},
		{
			Cost = {
				"Fire",
				"Fire",
				"Colorless",
				"Colorless"
			},
			Name = "Take Down",
			Effect = "Arcanine does 30 damage to itself.",
			Damage = 80
		}
	},
	Weaknesses = {
		{
			Type = "Water",
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
			Avg = 8.22,
			Low = 0.1,
			Trend = 11.23,
			Avg1 = 4.87,
			Avg7 = 12.07,
			Avg30 = 7.87,
			AvgHolo = nil,
			LowHolo = nil,
			TrendHolo = 1.48,
			Avg1Holo = 0.05,
			Avg7Holo = 2.81,
			Avg30Holo = 2.81
		},
		Tcgplayer = {
			Updated = "2025-12-22T20:05:16.000Z",
			Unit = "USD",
			Normal = {
				LowPrice = 0.73,
				MidPrice = 1.98,
				HighPrice = 52,
				MarketPrice = 3.87,
				DirectLowPrice = nil
			}
		}
	}
}
