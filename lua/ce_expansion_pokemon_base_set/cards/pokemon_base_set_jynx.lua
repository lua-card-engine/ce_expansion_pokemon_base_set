local CARD = CARD
CARD.Name = "ce_expansion_pokemon_base_set_jynx"
CARD.Description = "ce_expansion_pokemon_base_set_jynx_description"
CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_jynx"
CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
CARD.Attributes = {
	Category = "Pokemon",
	Id = "base1-31",
	Illustrator = "Ken Sugimori",
	LocalId = "31",
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
		124
	},
	Hp = 70,
	Types = {
		"Psychic"
	},
	Stage = "Basic",
	Attacks = {
		{
			Cost = {
				"Psychic"
			},
			Name = "Doubleslap",
			Effect = "Flip 2 coins. This attack does 10 damage times the number of heads.",
			Damage = "10x"
		},
		{
			Cost = {
				"Psychic",
				"Psychic",
				"Colorless"
			},
			Name = "Meditate",
			Effect = "Does 20 damage plus 10 more damage for each damage counter on the Defending Pokémon.",
			Damage = "20+"
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
			Avg = 2.73,
			Low = 0.02,
			Trend = 3.24,
			Avg1 = 0.64,
			Avg7 = 5.34,
			Avg30 = 2.71,
			AvgHolo = nil,
			LowHolo = nil,
			TrendHolo = 0.35,
			Avg1Holo = 0.35,
			Avg7Holo = 0.2,
			Avg30Holo = 0.2
		},
		Tcgplayer = {
			Updated = "2025-12-22T20:05:16.000Z",
			Unit = "USD",
			Normal = {
				LowPrice = 0.2,
				MidPrice = 0.69,
				HighPrice = 9999,
				MarketPrice = 1.16,
				DirectLowPrice = nil
			}
		}
	}
}
