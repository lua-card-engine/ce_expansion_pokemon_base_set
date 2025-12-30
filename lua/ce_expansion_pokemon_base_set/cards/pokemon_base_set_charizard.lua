local CARD = CARD
CARD.Name = "ce_expansion_pokemon_base_set_charizard"
CARD.Description = "ce_expansion_pokemon_base_set_charizard_description"
CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_charizard"
CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON
CARD.Attributes = {
	Category = "Pokemon",
	Id = "base1-4",
	Illustrator = "Mitsuhiro Arita",
	LocalId = "4",
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
		6
		},
	Hp = 120,
	Types = {
		"Fire"
		},
	EvolveFrom = "Charmeleon",
	Stage = "Stage2",
	Abilities = {
		{
			Type = "Pokemon Power",
			Name = "Energy Burn",
			Effect = "As often as you like during your turn (before your attack), you may turn all Energy attached to Charizard into Fire Energy for the rest of the turn. This power can't be used if Charizard is Asleep, Confused, or Paralyzed."
			}
		},
	Attacks = {
		{
			Cost = {
				"Fire",
				"Fire",
				"Fire",
				"Fire"
				},
			Name = "Fire Spin",
			Effect = "Discard 2 Energy cards attached to Charizard in order to use this attack.",
			Damage = 100
			}
		},
	Weaknesses = {
		{
			Type = "Water",
			Value = "×2"
			}
		},
	Resistances = {
		{
			Type = "Fighting",
			Value = "-30"
			}
		},
	Retreat = 3,
	Legal = {
		Standard = false,
		Expanded = false
		},
	Updated = "2025-11-14T00:13:03+01:00",
	Pricing = {
		Cardmarket = {
			Updated = "2025-12-22T01:48:03.000Z",
			Unit = "EUR",
			Avg = 511.41,
			Low = 85,
			Trend = 708.21,
			Avg1 = 299.5,
			Avg7 = 591.81,
			Avg30 = 556.04,
			AvgHolo = nil,
			LowHolo = nil,
			TrendHolo = 123.63,
			Avg1Holo = 207.4,
			Avg7Holo = 129.55,
			Avg30Holo = 202.71
			},
		Tcgplayer = {
			Updated = "2025-12-22T20:05:16.000Z",
			Unit = "USD",
			Holofoil = {
				LowPrice = 354.91,
				MidPrice = 457.26,
				HighPrice = 999.99,
				MarketPrice = 457.7,
				DirectLowPrice = nil
				}
			}
		}
	}

CARD.HolographicStrength = Vector(1, 1, 1)
CARD.HolographicTexture = "card_engine/holo_rainbow_strong"
