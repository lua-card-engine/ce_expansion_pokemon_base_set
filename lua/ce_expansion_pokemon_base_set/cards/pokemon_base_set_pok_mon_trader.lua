local CARD = CARD
CARD.Name = "ce_expansion_pokemon_base_set_pok_mon_trader"
CARD.Description = "ce_expansion_pokemon_base_set_pok_mon_trader_description"
CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_pok_mon_trader"
CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
CARD.Attributes = {
	Category = "Trainer",
	Id = "base1-77",
	Illustrator = "Ken Sugimori",
	LocalId = "77",
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
	Legal = {
		Standard = false,
		Expanded = false
	},
	Updated = "2025-11-14T00:13:03+01:00",
	Pricing = {
		Cardmarket = {
			Updated = "2025-12-22T01:48:03.000Z",
			Unit = "EUR",
			Avg = 6.73,
			Low = 1,
			Trend = 8.28,
			Avg1 = 4.6,
			Avg7 = 6.21,
			Avg30 = 6.84,
			AvgHolo = nil,
			LowHolo = nil,
			TrendHolo = 1.55,
			Avg1Holo = 2.99,
			Avg7Holo = 2.06,
			Avg30Holo = 2.06
		},
		Tcgplayer = nil
	}
}

CARD.HolographicStrength = Vector(1, 1, 1)
CARD.HolographicTexture = "card_engine/holo_rainbow_strong"
