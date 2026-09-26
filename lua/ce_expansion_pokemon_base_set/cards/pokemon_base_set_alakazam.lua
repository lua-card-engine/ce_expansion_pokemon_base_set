local CARD = CARD
CARD.Name = "ce_expansion_pokemon_base_set_alakazam"
CARD.Description = "ce_expansion_pokemon_base_set_alakazam_description"
CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_alakazam"
CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
CARD.Attributes = {
	Category = "Pokemon",
	Id = "base1-1",
	Illustrator = "Ken Sugimori",
	LocalId = "1",
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
		65
	},
	Hp = 80,
	Types = {
		"Psychic"
	},
	EvolveFrom = "Kadabra",
	Stage = "Stage2",
	Abilities = {
		{
			Type = "Pokemon Power",
			Name = "Damage Swap",
			Effect =
			"As often as you like during your turn (before your attack), you may move 1 damage counter from 1 of your Pokémon to another as long as you don't Knock Out that Pokémon. This power can't be used if Alakazam is Asleep, Confused, or Paralyzed."
		}
	},
	Attacks = {
		{
			Cost = {
				"Psychic",
				"Psychic",
				"Psychic"
			},
			Name = "Confuse Ray",
			Effect = "Flip a coin. If heads, the Defending Pokémon is now Confused.",
			Damage = 30
		}
	},
	Weaknesses = {
		{
			Type = "Psychic",
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
			Avg = 358.05,
			Low = 7.99,
			Trend = 46,
			Avg1 = 53.25,
			Avg7 = 51.79,
			Avg30 = 45.1,
			AvgHolo = nil,
			LowHolo = nil,
			TrendHolo = 19.66,
			Avg1Holo = 7.99,
			Avg7Holo = 14.29,
			Avg30Holo = 25.6
		},
		Tcgplayer = {
			Updated = "2025-12-22T20:05:16.000Z",
			Unit = "USD",
			Holofoil = {
				LowPrice = 26,
				MidPrice = 41.78,
				HighPrice = 242.05,
				MarketPrice = 49.5,
				DirectLowPrice = 35.99
			},
			_1stEditionHolofoil = {
				LowPrice = 999,
				MidPrice = 999,
				HighPrice = 999,
				MarketPrice = nil,
				DirectLowPrice = nil
			}
		}
	}
}

CARD.HolographicStrength = Vector(1, 1, 1)
CARD.HolographicTexture = "card_engine/holo_dark"
