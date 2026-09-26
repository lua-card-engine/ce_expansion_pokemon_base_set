local CARD = CARD
CARD.Name = "ce_expansion_pokemon_base_set_kadabra"
CARD.Description = "ce_expansion_pokemon_base_set_kadabra_description"
CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_kadabra"
CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
CARD.Attributes = {
	Category = "Pokemon",
	Id = "base1-32",
	Illustrator = "Ken Sugimori",
	LocalId = "32",
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
		64
	},
	Hp = 60,
	Types = {
		"Psychic"
	},
	EvolveFrom = "Abra",
	Stage = "Stage1",
	Attacks = {
		{
			Cost = {
				"Psychic",
				"Psychic"
			},
			Name = "Recover",
			Effect =
			"Discard 1 Energy card attached to Kadabra in order use this attack. Remove all damage counters from Kadabra."
		},
		{
			Cost = {
				"Psychic",
				"Psychic",
				"Colorless"
			},
			Name = "Super Psy",
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
			Avg = 3.91,
			Low = 0.02,
			Trend = 7.11,
			Avg1 = 1.64,
			Avg7 = 2.75,
			Avg30 = 3.87,
			AvgHolo = nil,
			LowHolo = nil,
			TrendHolo = 3.32,
			Avg1Holo = 8,
			Avg7Holo = 2.04,
			Avg30Holo = 2.04
		},
		Tcgplayer = {
			Updated = "2025-12-22T20:05:16.000Z",
			Unit = "USD",
			Normal = {
				LowPrice = 0.25,
				MidPrice = 0.93,
				HighPrice = 9999,
				MarketPrice = 1.09,
				DirectLowPrice = 0.45
			}
		}
	}
}
