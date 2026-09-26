local CARD = CARD
CARD.Name = "ce_expansion_pokemon_base_set_metapod"
CARD.Description = "ce_expansion_pokemon_base_set_metapod_description"
CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_metapod"
CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
CARD.Attributes = {
	Category = "Pokemon",
	Id = "base1-54",
	Illustrator = "Ken Sugimori",
	LocalId = "54",
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
		11
	},
	Hp = 70,
	Types = {
		"Grass"
	},
	EvolveFrom = "Caterpie",
	Stage = "Stage1",
	Attacks = {
		{
			Cost = {
				"Colorless",
				"Colorless"
			},
			Name = "Stiffen",
			Effect =
			"Flip a coin. If heads, prevent all damage done to Metapod during your opponent's next turn. (Any other effects of attacks still happen.)"
		},
		{
			Cost = {
				"Grass",
				"Grass"
			},
			Name = "Stun Spore",
			Effect = "Flip a coin. If heads, the Defending Pokémon is now Paralyzed.",
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
			Avg = 4.21,
			Low = 0.02,
			Trend = 7.77,
			Avg1 = 49.3,
			Avg7 = 14.73,
			Avg30 = 4.2,
			AvgHolo = nil,
			LowHolo = nil,
			TrendHolo = 0.16,
			Avg1Holo = 0.05,
			Avg7Holo = 0.25,
			Avg30Holo = 0.25
		},
		Tcgplayer = {
			Updated = "2025-12-22T20:05:16.000Z",
			Unit = "USD",
			Normal = {
				LowPrice = 0.15,
				MidPrice = 0.6,
				HighPrice = 9999,
				MarketPrice = 0.78,
				DirectLowPrice = 0.38
			}
		}
	}
}
