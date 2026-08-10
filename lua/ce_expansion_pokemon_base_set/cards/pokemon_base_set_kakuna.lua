local CARD = CARD
CARD.Name = "ce_expansion_pokemon_base_set_kakuna"
CARD.Description = "ce_expansion_pokemon_base_set_kakuna_description"
CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_kakuna"
CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
CARD.Attributes = {
	Category = "Pokemon",
	Id = "base1-33",
	Illustrator = "Keiji Kinebuchi",
	LocalId = "33",
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
		14
	},
	Hp = 80,
	Types = {
		"Grass"
	},
	EvolveFrom = "Weedle",
	Stage = "Stage1",
	Attacks = {
		{
			Cost = {
				"Colorless",
				"Colorless"
			},
			Name = "Stiffen",
			Effect =
			"Flip a coin. If heads, prevent all damage done to Kakuna during your opponent's next turn. (Any other effects of attacks still happen.)"
		},
		{
			Cost = {
				"Grass",
				"Grass"
			},
			Name = "Poisonpowder",
			Effect = "Flip a coin. If heads, the Defending Pokémon is now Poisoned.",
			Damage = 20
		}
	},
	Weaknesses = {
		{
			Type = "Fire",
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
			Avg = 1.86,
			Low = 0.02,
			Trend = 0.91,
			Avg1 = 2.57,
			Avg7 = 1.63,
			Avg30 = 1.87,
			AvgHolo = nil,
			LowHolo = nil,
			TrendHolo = 2.54,
			Avg1Holo = 4.5,
			Avg7Holo = 1.18,
			Avg30Holo = 1.18
		},
		Tcgplayer = {
			Updated = "2025-12-22T20:05:16.000Z",
			Unit = "USD",
			Normal = {
				LowPrice = 0.24,
				MidPrice = 0.75,
				HighPrice = 9.99,
				MarketPrice = 0.92,
				DirectLowPrice = 1.06
			}
		}
	}
}
