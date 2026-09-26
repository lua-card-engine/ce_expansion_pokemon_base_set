local CARD = CARD
CARD.Name = "ce_expansion_pokemon_base_set_diglett"
CARD.Description = "ce_expansion_pokemon_base_set_diglett_description"
CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_diglett"
CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
CARD.Attributes = {
	Category = "Pokemon",
	Id = "base1-47",
	Illustrator = "Keiji Kinebuchi",
	LocalId = "47",
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
		50
	},
	Hp = 30,
	Types = {
		"Fighting"
	},
	Stage = "Basic",
	Attacks = {
		{
			Cost = {
				"Fighting"
			},
			Name = "Dig",
			Damage = 10
		},
		{
			Cost = {
				"Fighting",
				"Fighting"
			},
			Name = "Mud Slap",
			Damage = 30
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
			Avg = 2.1,
			Low = 0.02,
			Trend = 2.69,
			Avg1 = 0.24,
			Avg7 = 0.6,
			Avg30 = 2.08,
			AvgHolo = nil,
			LowHolo = nil,
			TrendHolo = 2,
			Avg1Holo = 2,
			Avg7Holo = 1.03,
			Avg30Holo = 1.03
		},
		Tcgplayer = {
			Updated = "2025-12-22T20:05:16.000Z",
			Unit = "USD",
			Normal = {
				LowPrice = 0.14,
				MidPrice = 0.46,
				HighPrice = 23,
				MarketPrice = 0.58,
				DirectLowPrice = 0.13
			}
		}
	}
}
