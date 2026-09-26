local CARD = CARD
CARD.Name = "ce_expansion_pokemon_base_set_gastly"
CARD.Description = "ce_expansion_pokemon_base_set_gastly_description"
CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_gastly"
CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
CARD.Attributes = {
	Category = "Pokemon",
	Id = "base1-50",
	Illustrator = "Keiji Kinebuchi",
	LocalId = "50",
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
		92
	},
	Hp = 30,
	Types = {
		"Psychic"
	},
	Stage = "Basic",
	Attacks = {
		{
			Cost = {
				"Psychic"
			},
			Name = "Sleeping Gas",
			Effect = "Flip a coin. If heads, the Defending Pokémon is now Asleep."
		},
		{
			Cost = {
				"Psychic",
				"Colorless"
			},
			Name = "Destiny Bond",
			Effect =
			"Discard 1 Energy card attached to Gastly in order to use this attack. If a Pokémon Knocks Out Gastly during your opponent's next turn, Knock Out that Pokémon."
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
			Avg = 1.4,
			Low = 0.02,
			Trend = 1.16,
			Avg1 = 0.6,
			Avg7 = 1.56,
			Avg30 = 1.65,
			AvgHolo = nil,
			LowHolo = nil,
			TrendHolo = 0.02,
			Avg1Holo = 0.02,
			Avg7Holo = 0.21,
			Avg30Holo = 0.21
		},
		Tcgplayer = {
			Updated = "2025-12-22T20:05:16.000Z",
			Unit = "USD",
			Normal = {
				LowPrice = 0.25,
				MidPrice = 0.6,
				HighPrice = 501.5,
				MarketPrice = 0.67,
				DirectLowPrice = 0.3
			}
		}
	}
}
