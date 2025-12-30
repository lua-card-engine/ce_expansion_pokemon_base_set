local CARD = CARD
CARD.Name = "ce_expansion_pokemon_base_set_squirtle"
CARD.Description = "ce_expansion_pokemon_base_set_squirtle_description"
CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_squirtle"
CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON
CARD.Attributes = {
	Category = "Pokemon",
	Id = "base1-63",
	Illustrator = "Mitsuhiro Arita",
	LocalId = "63",
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
		7
		},
	Hp = 40,
	Types = {
		"Water"
		},
	Stage = "Basic",
	Attacks = {
		{
			Cost = {
				"Water"
				},
			Name = "Bubble",
			Effect = "Flip a coin. If heads, the Defending Pokémon is now Paralyzed.",
			Damage = 10
			},
		{
			Cost = {
				"Water",
				"Colorless"
				},
			Name = "Withdraw",
			Effect = "Flip a coin. If heads, prevent all damage done to Squirtle during your opponent's next turn. (Any other effects of attacks still happen.)"
			}
		},
	Weaknesses = {
		{
			Type = "Lightning",
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
			Avg = 4.6,
			Low = 0.02,
			Trend = 6.31,
			Avg1 = 3.31,
			Avg7 = 5.19,
			Avg30 = 4.58,
			AvgHolo = nil,
			LowHolo = nil,
			TrendHolo = 92.04,
			Avg1Holo = 1,
			Avg7Holo = 87.31,
			Avg30Holo = 61.41
			},
		Tcgplayer = {
			Updated = "2025-12-22T20:05:16.000Z",
			Unit = "USD",
			Normal = {
				LowPrice = 0.64,
				MidPrice = 1.49,
				HighPrice = 149.98,
				MarketPrice = 3.51,
				DirectLowPrice = 3.46
				}
			}
		}
	}
