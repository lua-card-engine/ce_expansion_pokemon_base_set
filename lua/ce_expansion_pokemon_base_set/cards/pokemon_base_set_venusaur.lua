local CARD = CARD
CARD.Name = "ce_expansion_pokemon_base_set_venusaur"
CARD.Description = "ce_expansion_pokemon_base_set_venusaur_description"
CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_venusaur"
CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
CARD.Attributes = {
	Category = "Pokemon",
	Id = "base1-15",
	Illustrator = "Mitsuhiro Arita",
	LocalId = "15",
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
		3
	},
	Hp = 100,
	Types = {
		"Grass"
	},
	EvolveFrom = "Ivysaur",
	Stage = "Stage2",
	Abilities = {
		{
			Type = "Pokemon Power",
			Name = "Energy Trans",
			Effect =
			"As often as you like during your turn (before your attack), you may take 1 Grass Energy card attached to 1 of your Pokémon and attach it to a different one. This power can't be used if Venusaur is Asleep, Confused, or Paralyzed."
		}
	},
	Attacks = {
		{
			Cost = {
				"Grass",
				"Grass",
				"Grass",
				"Grass"
			},
			Name = "Solarbeam",
			Damage = 60
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
			Avg = 144.97,
			Low = 20,
			Trend = 194.59,
			Avg1 = 28.37,
			Avg7 = 84.97,
			Avg30 = 136.8,
			AvgHolo = nil,
			LowHolo = nil,
			TrendHolo = 29.85,
			Avg1Holo = 82.5,
			Avg7Holo = 39.74,
			Avg30Holo = 61.22
		},
		Tcgplayer = {
			Updated = "2025-12-22T20:05:16.000Z",
			Unit = "USD",
			Holofoil = {
				LowPrice = 72.25,
				MidPrice = 106.96,
				HighPrice = 999.98,
				MarketPrice = 125.73,
				DirectLowPrice = nil
			}
		}
	}
}

CARD.HolographicStrength = Vector(1, 1, 1)
CARD.HolographicTexture = "card_engine/holo_rainbow_strong"
