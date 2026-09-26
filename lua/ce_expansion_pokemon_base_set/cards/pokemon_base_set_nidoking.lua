local CARD = CARD
CARD.Name = "ce_expansion_pokemon_base_set_nidoking"
CARD.Description = "ce_expansion_pokemon_base_set_nidoking_description"
CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_nidoking"
CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
CARD.Attributes = {
	Category = "Pokemon",
	Id = "base1-11",
	Illustrator = "Ken Sugimori",
	LocalId = "11",
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
		34
	},
	Hp = 90,
	Types = {
		"Grass"
	},
	EvolveFrom = "Nidorino",
	Stage = "Stage2",
	Attacks = {
		{
			Cost = {
				"Grass",
				"Colorless",
				"Colorless"
			},
			Name = "Thrash",
			Effect =
			"Flip a coin. If heads, this attack does 30 damage plus 10 more damage; if tails, this attack does 30 damage and Nidoking does 10 damage to itself.",
			Damage = "30+"
		},
		{
			Cost = {
				"Grass",
				"Grass",
				"Grass"
			},
			Name = "Toxic",
			Effect =
			"The Defending Pokémon is now Poisoned. It now takes 20 Poison damage instead of 10 after each player's turn (even if it was already Poisoned).",
			Damage = 20
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
			Avg = 23.59,
			Low = 2,
			Trend = 22.1,
			Avg1 = 12.99,
			Avg7 = 22.43,
			Avg30 = 23.86,
			AvgHolo = nil,
			LowHolo = nil,
			TrendHolo = 26.24,
			Avg1Holo = 10.06,
			Avg7Holo = 13.59,
			Avg30Holo = 20.54
		},
		Tcgplayer = {
			Updated = "2025-12-22T20:05:16.000Z",
			Unit = "USD",
			Holofoil = {
				LowPrice = 13.99,
				MidPrice = 18.99,
				HighPrice = 44.99,
				MarketPrice = 29.46,
				DirectLowPrice = 33.88
			}
		}
	}
}

CARD.HolographicStrength = Vector(1, 1, 1)
CARD.HolographicTexture = "card_engine/holo_rainbow_strong"
