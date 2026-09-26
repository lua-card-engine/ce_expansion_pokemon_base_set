local CARD = CARD
CARD.Name = "ce_expansion_pokemon_base_set_blastoise"
CARD.Description = "ce_expansion_pokemon_base_set_blastoise_description"
CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_blastoise"
CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
CARD.Attributes = {
	Category = "Pokemon",
	Id = "base1-2",
	Illustrator = "Ken Sugimori",
	LocalId = "2",
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
		9
	},
	Hp = 100,
	Types = {
		"Water"
	},
	EvolveFrom = "Wartortle",
	Stage = "Stage2",
	Abilities = {
		{
			Type = "Pokemon Power",
			Name = "Rain Dance",
			Effect =
			"As often as you like during your turn (before your attack), you may attach 1 Water Energy Card to 1 of your Water Pokémon. (This doesn't use up your 1 Energy card attachment for the turn.) This power can't be used if Blastoise is Asleep, Confused, or Paralyzed."
		}
	},
	Attacks = {
		{
			Cost = {
				"Water",
				"Water",
				"Water"
			},
			Name = "Hydro Pump",
			Effect =
			"Does 40 damage plus 10 more damage for each attached Water Energy attached to Blastoise but not used to pay for this attack's Energy cost. Extra Water Energy after the 2nd doesn't count.",
			Damage = "40+"
		}
	},
	Weaknesses = {
		{
			Type = "Lightning",
			Value = "×2"
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
			Avg = 143.91,
			Low = 20,
			Trend = 119.76,
			Avg1 = 43,
			Avg7 = 80.89,
			Avg30 = 135.73,
			AvgHolo = nil,
			LowHolo = nil,
			TrendHolo = 73.51,
			Avg1Holo = 100,
			Avg7Holo = 50.43,
			Avg30Holo = 64.46
		},
		Tcgplayer = {
			Updated = "2025-12-22T20:05:16.000Z",
			Unit = "USD",
			Holofoil = {
				LowPrice = 92,
				MidPrice = 129.17,
				HighPrice = 500,
				MarketPrice = 160.51,
				DirectLowPrice = nil
			}
		}
	}
}

CARD.HolographicStrength = Vector(1, 1, 1)
CARD.HolographicTexture = "card_engine/holo_rainbow_strong"
