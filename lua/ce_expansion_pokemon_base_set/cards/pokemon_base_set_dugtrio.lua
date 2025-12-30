local CARD = CARD
CARD.Name = "ce_expansion_pokemon_base_set_dugtrio"
CARD.Description = "ce_expansion_pokemon_base_set_dugtrio_description"
CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_dugtrio"
CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON
CARD.Attributes = {
	Category = "Pokemon",
	Id = "base1-19",
	Illustrator = "Keiji Kinebuchi",
	LocalId = "19",
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
	DexId = {
		51
		},
	Hp = 70,
	Types = {
		"Fighting"
		},
	EvolveFrom = "Diglett",
	Stage = "Stage1",
	Attacks = {
		{
			Cost = {
				"Fighting",
				"Fighting",
				"Colorless"
				},
			Name = "Slash",
			Damage = 40
			},
		{
			Cost = {
				"Fighting",
				"Fighting",
				"Fighting",
				"Fighting"
				},
			Name = "Earthquake",
			Effect = "Does 10 damage to each of your own Benched Pokémon. (Don't apply Weakness and Resistance for Benched Pokémon.)",
			Damage = 70
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
			Avg = 12.65,
			Low = 0.5,
			Trend = 16.61,
			Avg1 = 2.34,
			Avg7 = 25,
			Avg30 = 12.52,
			AvgHolo = nil,
			LowHolo = nil,
			TrendHolo = 2.9,
			Avg1Holo = 5,
			Avg7Holo = 2.45,
			Avg30Holo = 2.18
			},
		Tcgplayer = {
			Updated = "2025-12-22T20:05:16.000Z",
			Unit = "USD",
			Normal = {
				LowPrice = 2.45,
				MidPrice = 4,
				HighPrice = 36.4,
				MarketPrice = 6.9,
				DirectLowPrice = nil
				}
			}
		}
	}

CARD.HolographicStrength = Vector(1, 1, 1)
CARD.HolographicTexture = "card_engine/holo_rainbow_strong"
