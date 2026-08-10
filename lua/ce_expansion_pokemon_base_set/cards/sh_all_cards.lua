local ALL_CARDS = {}

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_abra.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_abra.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_abra"
	CARD.Description = "ce_expansion_pokemon_base_set_abra_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_abra"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Pokemon",
		Id = "base1-43",
		Illustrator = "Mitsuhiro Arita",
		LocalId = "43",
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
			63
		},
		Hp = 30,
		Types = {
			"Psychic"
		},
		Stage = "Basic",
		Attacks = {
			{
				Cost = {
					"Colorless"
				},
				Name = "Psyshock",
				Effect = "Flip a coin. If heads, the Defending Pokémon is now Paralyzed.",
				Damage = 10
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
				Avg = 0.9,
				Low = 0.02,
				Trend = 0.84,
				Avg1 = 1.9,
				Avg7 = 1.13,
				Avg30 = 1.05,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 0.04,
				Avg1Holo = 0.1,
				Avg7Holo = 0.12,
				Avg30Holo = 0.12
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Normal = {
					LowPrice = 0.11,
					MidPrice = 0.52,
					HighPrice = 9999,
					MarketPrice = 0.98,
					DirectLowPrice = 0.46
				}
			}
		}
	}
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_alakazam.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_alakazam.lua"
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
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_arcanine.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_arcanine.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_arcanine"
	CARD.Description = "ce_expansion_pokemon_base_set_arcanine_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_arcanine"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Pokemon",
		Id = "base1-23",
		Illustrator = "Ken Sugimori",
		LocalId = "23",
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
			59
		},
		Hp = 100,
		Types = {
			"Fire"
		},
		EvolveFrom = "Growlithe",
		Stage = "Stage1",
		Attacks = {
			{
				Cost = {
					"Fire",
					"Fire",
					"Colorless"
				},
				Name = "Flamethrower",
				Effect = "Discard 1 Energy card attached to Arcanine in order to use this attack.",
				Damage = 50
			},
			{
				Cost = {
					"Fire",
					"Fire",
					"Colorless",
					"Colorless"
				},
				Name = "Take Down",
				Effect = "Arcanine does 30 damage to itself.",
				Damage = 80
			}
		},
		Weaknesses = {
			{
				Type = "Water",
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
				Avg = 8.22,
				Low = 0.1,
				Trend = 11.23,
				Avg1 = 4.87,
				Avg7 = 12.07,
				Avg30 = 7.87,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 1.48,
				Avg1Holo = 0.05,
				Avg7Holo = 2.81,
				Avg30Holo = 2.81
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Normal = {
					LowPrice = 0.73,
					MidPrice = 1.98,
					HighPrice = 52,
					MarketPrice = 3.87,
					DirectLowPrice = nil
				}
			}
		}
	}
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_beedrill.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_beedrill.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_beedrill"
	CARD.Description = "ce_expansion_pokemon_base_set_beedrill_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_beedrill"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Pokemon",
		Id = "base1-17",
		Illustrator = "Ken Sugimori",
		LocalId = "17",
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
			15
		},
		Hp = 80,
		Types = {
			"Grass"
		},
		EvolveFrom = "Kakuna",
		Stage = "Stage2",
		Attacks = {
			{
				Cost = {
					"Colorless",
					"Colorless",
					"Colorless"
				},
				Name = "Twineedle",
				Effect = "Flip 2 coins. This attack does 30 damage times the number of heads.",
				Damage = "30x"
			},
			{
				Cost = {
					"Grass",
					"Grass",
					"Grass"
				},
				Name = "Poison Sting",
				Effect = "Flip a coin. If heads, the Defending Pokémon is now Poisoned.",
				Damage = 40
			}
		},
		Weaknesses = {
			{
				Type = "Fire",
				Value = "×2"
			}
		},
		Resistances = {
			{
				Type = "Fighting",
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
				Avg = 8.22,
				Low = 0.08,
				Trend = 19.25,
				Avg1 = 82.16,
				Avg7 = 21.59,
				Avg30 = 7.68,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 1.52,
				Avg1Holo = 2.45,
				Avg7Holo = 1.17,
				Avg30Holo = 1.09
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Normal = {
					LowPrice = 0.22,
					MidPrice = 2,
					HighPrice = 9999,
					MarketPrice = 4.83,
					DirectLowPrice = nil
				}
			}
		}
	}

	CARD.HolographicStrength = Vector(1, 1, 1)
	CARD.HolographicTexture = "card_engine/holo_rainbow_strong"
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_bill.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_bill.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_bill"
	CARD.Description = "ce_expansion_pokemon_base_set_bill_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_bill"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Trainer",
		Id = "base1-91",
		Illustrator = "Ken Sugimori",
		LocalId = "91",
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
		Legal = {
			Standard = false,
			Expanded = false
		},
		Updated = "2025-11-14T00:13:03+01:00",
		Pricing = {
			Cardmarket = {
				Updated = "2025-12-22T01:48:03.000Z",
				Unit = "EUR",
				Avg = 0.69,
				Low = 0.02,
				Trend = 0.22,
				Avg1 = 0.57,
				Avg7 = 0.27,
				Avg30 = 0.69,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 0.1,
				Avg1Holo = 0.1,
				Avg7Holo = 0.1,
				Avg30Holo = 0.1
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Normal = {
					LowPrice = 0.1,
					MidPrice = 0.33,
					HighPrice = 5,
					MarketPrice = 0.37,
					DirectLowPrice = nil
				}
			}
		}
	}
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_blastoise.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_blastoise.lua"
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
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_bulbasaur.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_bulbasaur.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_bulbasaur"
	CARD.Description = "ce_expansion_pokemon_base_set_bulbasaur_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_bulbasaur"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Pokemon",
		Id = "base1-44",
		Illustrator = "Mitsuhiro Arita",
		LocalId = "44",
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
			1
		},
		Hp = 40,
		Types = {
			"Grass"
		},
		Stage = "Basic",
		Attacks = {
			{
				Cost = {
					"Grass",
					"Grass"
				},
				Name = "Leech Seed",
				Effect = "Unless all damage from this attack is prevented, you may remove 1 damage counter from Bulbasaur.",
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
				Avg = 4.94,
				Low = 0.02,
				Trend = 6.07,
				Avg1 = 1.13,
				Avg7 = 3.66,
				Avg30 = 5.03,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 15.37,
				Avg1Holo = 1.8,
				Avg7Holo = 13.07,
				Avg30Holo = 12.91
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Normal = {
					LowPrice = 0.29,
					MidPrice = 1.34,
					HighPrice = 501.5,
					MarketPrice = 2.23,
					DirectLowPrice = 1
				}
			}
		}
	}
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_caterpie.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_caterpie.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_caterpie"
	CARD.Description = "ce_expansion_pokemon_base_set_caterpie_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_caterpie"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Pokemon",
		Id = "base1-45",
		Illustrator = "Ken Sugimori",
		LocalId = "45",
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
			10
		},
		Hp = 40,
		Types = {
			"Grass"
		},
		Stage = "Basic",
		Attacks = {
			{
				Cost = {
					"Grass"
				},
				Name = "String Shot",
				Effect = "Flip a coin. If heads, the Defending Pokémon is now Paralyzed.",
				Damage = 10
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
				Avg = 1.64,
				Low = 0.02,
				Trend = 2.93,
				Avg1 = 0.36,
				Avg7 = 1.06,
				Avg30 = 3.17,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 0.35,
				Avg1Holo = 0.35,
				Avg7Holo = 0.32,
				Avg30Holo = 0.32
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Normal = {
					LowPrice = 0.2,
					MidPrice = 0.75,
					HighPrice = 501.5,
					MarketPrice = 0.95,
					DirectLowPrice = 0.52
				}
			}
		}
	}
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_chansey.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_chansey.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_chansey"
	CARD.Description = "ce_expansion_pokemon_base_set_chansey_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_chansey"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Pokemon",
		Id = "base1-3",
		Illustrator = "Ken Sugimori",
		LocalId = "3",
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
			113
		},
		Hp = 120,
		Types = {
			"Colorless"
		},
		Stage = "Basic",
		Attacks = {
			{
				Cost = {
					"Colorless",
					"Colorless"
				},
				Name = "Scrunch",
				Effect =
				"Flip a coin. If heads, prevent all damage done to Chansey during your opponent's next turn. (Any other effects of attacks still happen.)"
			},
			{
				Cost = {
					"Colorless",
					"Colorless",
					"Colorless",
					"Colorless"
				},
				Name = "Double-edge",
				Effect = "Chansey does 80 damage to itself.",
				Damage = 80
			}
		},
		Weaknesses = {
			{
				Type = "Fighting",
				Value = "×2"
			}
		},
		Resistances = {
			{
				Type = "Psychic",
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
				Avg = 24.4,
				Low = 3.5,
				Trend = 27.18,
				Avg1 = 29.99,
				Avg7 = 23.5,
				Avg30 = 24.26,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 21.43,
				Avg1Holo = 17.45,
				Avg7Holo = 21.22,
				Avg30Holo = 19.23
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Holofoil = {
					LowPrice = 16,
					MidPrice = 21.87,
					HighPrice = 71.99,
					MarketPrice = 26.49,
					DirectLowPrice = nil
				}
			}
		}
	}

	CARD.HolographicStrength = Vector(1, 1, 1)
	CARD.HolographicTexture = "card_engine/holo_rainbow_strong"
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_charizard.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_charizard.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_charizard"
	CARD.Description = "ce_expansion_pokemon_base_set_charizard_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_charizard"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
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
				Effect =
				"As often as you like during your turn (before your attack), you may turn all Energy attached to Charizard into Fire Energy for the rest of the turn. This power can't be used if Charizard is Asleep, Confused, or Paralyzed."
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
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_charmander.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_charmander.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_charmander"
	CARD.Description = "ce_expansion_pokemon_base_set_charmander_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_charmander"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Pokemon",
		Id = "base1-46",
		Illustrator = "Mitsuhiro Arita",
		LocalId = "46",
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
			4
		},
		Hp = 50,
		Types = {
			"Fire"
		},
		Stage = "Basic",
		Attacks = {
			{
				Cost = {
					"Colorless"
				},
				Name = "Scratch",
				Damage = 10
			},
			{
				Cost = {
					"Fire",
					"Colorless"
				},
				Name = "Ember",
				Effect = "Discard 1 Energy card attached to Charmander in order to use this attack.",
				Damage = 30
			}
		},
		Weaknesses = {
			{
				Type = "Water",
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
				Avg = 3.72,
				Low = 0.02,
				Trend = 5.96,
				Avg1 = 2.51,
				Avg7 = 5.25,
				Avg30 = 3.72,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 7.04,
				Avg1Holo = 20,
				Avg7Holo = 6.42,
				Avg30Holo = 12.47
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Normal = {
					LowPrice = 0.2,
					MidPrice = 1,
					HighPrice = 100,
					MarketPrice = 1.72,
					DirectLowPrice = 0.62
				}
			}
		}
	}
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_charmeleon.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_charmeleon.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_charmeleon"
	CARD.Description = "ce_expansion_pokemon_base_set_charmeleon_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_charmeleon"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Pokemon",
		Id = "base1-24",
		Illustrator = "Mitsuhiro Arita",
		LocalId = "24",
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
			5
		},
		Hp = 80,
		Types = {
			"Fire"
		},
		EvolveFrom = "Charmander",
		Stage = "Stage1",
		Attacks = {
			{
				Cost = {
					"Colorless",
					"Colorless",
					"Colorless"
				},
				Name = "Slash",
				Damage = 30
			},
			{
				Cost = {
					"Fire",
					"Fire",
					"Colorless"
				},
				Name = "Flamethrower",
				Effect = "Discard 1 Energy card attached to Charmeleon in order to use this attack.",
				Damage = 50
			}
		},
		Weaknesses = {
			{
				Type = "Water",
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
				Avg = 6.04,
				Low = 0.02,
				Trend = 9.51,
				Avg1 = 1.71,
				Avg7 = 12.66,
				Avg30 = 6.13,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 13.83,
				Avg1Holo = 5.5,
				Avg7Holo = 10.64,
				Avg30Holo = 7.85
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Normal = {
					LowPrice = 0.25,
					MidPrice = 0.9,
					HighPrice = 9999,
					MarketPrice = 2.12,
					DirectLowPrice = 0.65
				}
			}
		}
	}
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_clefairy_doll.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_clefairy_doll.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_clefairy_doll"
	CARD.Description = "ce_expansion_pokemon_base_set_clefairy_doll_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_clefairy_doll"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Trainer",
		Id = "base1-70",
		Illustrator = "Keiji Kinebuchi",
		LocalId = "70",
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
		Hp = 10,
		Legal = {
			Standard = false,
			Expanded = false
		},
		Updated = "2025-11-14T00:13:03+01:00",
		Pricing = {
			Cardmarket = {
				Updated = "2025-12-22T01:48:03.000Z",
				Unit = "EUR",
				Avg = 10.43,
				Low = 0.8,
				Trend = 13.94,
				Avg1 = 4.25,
				Avg7 = 10.46,
				Avg30 = 10.18,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 0.02,
				Avg1Holo = 0.88,
				Avg7Holo = 2.33,
				Avg30Holo = 2.33
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Normal = {
					LowPrice = 2,
					MidPrice = 4.15,
					HighPrice = 15,
					MarketPrice = 6.02,
					DirectLowPrice = nil
				}
			}
		}
	}

	CARD.HolographicStrength = Vector(1, 1, 1)
	CARD.HolographicTexture = "card_engine/holo_rainbow_strong"
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_clefairy.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_clefairy.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_clefairy"
	CARD.Description = "ce_expansion_pokemon_base_set_clefairy_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_clefairy"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Pokemon",
		Id = "base1-5",
		Illustrator = "Ken Sugimori",
		LocalId = "5",
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
			35
		},
		Hp = 40,
		Types = {
			"Colorless"
		},
		Stage = "Basic",
		Attacks = {
			{
				Cost = {
					"Colorless"
				},
				Name = "Sing",
				Effect = "Flip a coin. If heads, the Defending Pokémon is now Asleep."
			},
			{
				Cost = {
					"Colorless",
					"Colorless",
					"Colorless"
				},
				Name = "Metronome",
				Effect =
				"Choose 1 of Defending Pokémon's attacks. Metronome copies that attack except for its Energy costs and anything else required in order to use that attack, such as discarding energy cards. (No matter what type the defender is, Clefairy's type is still Colorless.)"
			}
		},
		Weaknesses = {
			{
				Type = "Fighting",
				Value = "×2"
			}
		},
		Resistances = {
			{
				Type = "Psychic",
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
				Avg = 21.93,
				Low = 4.95,
				Trend = 17.52,
				Avg1 = 11.82,
				Avg7 = 20.31,
				Avg30 = 23.08,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 14,
				Avg1Holo = 16.81,
				Avg7Holo = 11.97,
				Avg30Holo = 19.63
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Holofoil = {
					LowPrice = 11,
					MidPrice = 19.72,
					HighPrice = 95.98,
					MarketPrice = 24.97,
					DirectLowPrice = nil
				}
			}
		}
	}

	CARD.HolographicStrength = Vector(1, 1, 1)
	CARD.HolographicTexture = "card_engine/holo_rainbow_strong"
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_computer_search.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_computer_search.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_computer_search"
	CARD.Description = "ce_expansion_pokemon_base_set_computer_search_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_computer_search"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Trainer",
		Id = "base1-71",
		Illustrator = "Keiji Kinebuchi",
		LocalId = "71",
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
				Avg = 3.81,
				Low = 0.2,
				Trend = 3,
				Avg1 = 1.2,
				Avg7 = 2.99,
				Avg30 = 3.91,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 1.07,
				Avg1Holo = 1.5,
				Avg7Holo = 0.53,
				Avg30Holo = 0.53
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Normal = {
					LowPrice = 0.8,
					MidPrice = 2.84,
					HighPrice = 22.84,
					MarketPrice = 3.92,
					DirectLowPrice = 12.01
				}
			}
		}
	}

	CARD.HolographicStrength = Vector(1, 1, 1)
	CARD.HolographicTexture = "card_engine/holo_rainbow_strong"
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_defender.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_defender.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_defender"
	CARD.Description = "ce_expansion_pokemon_base_set_defender_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_defender"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Trainer",
		Id = "base1-80",
		Illustrator = "Keiji Kinebuchi",
		LocalId = "80",
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
		Legal = {
			Standard = false,
			Expanded = false
		},
		Updated = "2025-11-14T00:13:03+01:00",
		Pricing = {
			Cardmarket = {
				Updated = "2025-12-22T01:48:03.000Z",
				Unit = "EUR",
				Avg = 1.5,
				Low = 0.02,
				Trend = 1.88,
				Avg1 = 2.66,
				Avg7 = 1.43,
				Avg30 = 1.39,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 0,
				Avg1Holo = nil,
				Avg7Holo = nil,
				Avg30Holo = nil
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Normal = {
					LowPrice = 0.28,
					MidPrice = 0.75,
					HighPrice = 4.67,
					MarketPrice = 1.3,
					DirectLowPrice = nil
				}
			}
		}
	}
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_devolution_spray.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_devolution_spray.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_devolution_spray"
	CARD.Description = "ce_expansion_pokemon_base_set_devolution_spray_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_devolution_spray"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Trainer",
		Id = "base1-72",
		Illustrator = "Keiji Kinebuchi",
		LocalId = "72",
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
				Avg = 7.87,
				Low = 0.8,
				Trend = 8.97,
				Avg1 = 5.72,
				Avg7 = 9.34,
				Avg30 = 7.84,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 1.25,
				Avg1Holo = 0.5,
				Avg7Holo = 0.97,
				Avg30Holo = 0.97
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Normal = {
					LowPrice = 1.18,
					MidPrice = 2.49,
					HighPrice = 9999,
					MarketPrice = 4.09,
					DirectLowPrice = 1.5
				}
			}
		}
	}

	CARD.HolographicStrength = Vector(1, 1, 1)
	CARD.HolographicTexture = "card_engine/holo_rainbow_strong"
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_dewgong.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_dewgong.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_dewgong"
	CARD.Description = "ce_expansion_pokemon_base_set_dewgong_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_dewgong"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Pokemon",
		Id = "base1-25",
		Illustrator = "Mitsuhiro Arita",
		LocalId = "25",
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
			87
		},
		Hp = 80,
		Types = {
			"Water"
		},
		EvolveFrom = "Seel",
		Stage = "Stage1",
		Attacks = {
			{
				Cost = {
					"Water",
					"Water",
					"Colorless"
				},
				Name = "Aurora Beam",
				Damage = 50
			},
			{
				Cost = {
					"Water",
					"Water",
					"Colorless",
					"Colorless"
				},
				Name = "Ice Beam",
				Effect = "Flip a coin. If heads, the Defending Pokémon is now Paralyzed.",
				Damage = 30
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
				Avg = 3.6,
				Low = 0.1,
				Trend = 3.3,
				Avg1 = 1.37,
				Avg7 = 2.06,
				Avg30 = 3.59,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 3.59,
				Avg1Holo = 5.55,
				Avg7Holo = 1.99,
				Avg30Holo = 1.99
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Normal = {
					LowPrice = 0.48,
					MidPrice = 1.51,
					HighPrice = 19.98,
					MarketPrice = 3.37,
					DirectLowPrice = 3.33
				}
			}
		}
	}
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_diglett.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_diglett.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_diglett"
	CARD.Description = "ce_expansion_pokemon_base_set_diglett_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_diglett"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Pokemon",
		Id = "base1-47",
		Illustrator = "Keiji Kinebuchi",
		LocalId = "47",
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
			50
		},
		Hp = 30,
		Types = {
			"Fighting"
		},
		Stage = "Basic",
		Attacks = {
			{
				Cost = {
					"Fighting"
				},
				Name = "Dig",
				Damage = 10
			},
			{
				Cost = {
					"Fighting",
					"Fighting"
				},
				Name = "Mud Slap",
				Damage = 30
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
				Avg = 2.1,
				Low = 0.02,
				Trend = 2.69,
				Avg1 = 0.24,
				Avg7 = 0.6,
				Avg30 = 2.08,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 2,
				Avg1Holo = 2,
				Avg7Holo = 1.03,
				Avg30Holo = 1.03
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Normal = {
					LowPrice = 0.14,
					MidPrice = 0.46,
					HighPrice = 23,
					MarketPrice = 0.58,
					DirectLowPrice = 0.13
				}
			}
		}
	}
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_doduo.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_doduo.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_doduo"
	CARD.Description = "ce_expansion_pokemon_base_set_doduo_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_doduo"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Pokemon",
		Id = "base1-48",
		Illustrator = "Mitsuhiro Arita",
		LocalId = "48",
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
			84
		},
		Hp = 50,
		Types = {
			"Colorless"
		},
		Stage = "Basic",
		Attacks = {
			{
				Cost = {
					"Colorless"
				},
				Name = "Fury Attack",
				Effect = "Flip 2 coins. This attack does 10 damage times the number of heads.",
				Damage = "10x"
			}
		},
		Weaknesses = {
			{
				Type = "Lightning",
				Value = "×2"
			}
		},
		Resistances = {
			{
				Type = "Fighting",
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
				Avg = 3.92,
				Low = 0.02,
				Trend = 3.24,
				Avg1 = 0.5,
				Avg7 = 1.66,
				Avg30 = 3.86,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 0.02,
				Avg1Holo = 0.02,
				Avg7Holo = 0.16,
				Avg30Holo = 0.16
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Normal = {
					LowPrice = 0.15,
					MidPrice = 0.65,
					HighPrice = 9.88,
					MarketPrice = 0.9,
					DirectLowPrice = 0.45
				}
			}
		}
	}
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_double_colorless_energy.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_double_colorless_energy.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_double_colorless_energy"
	CARD.Description = "ce_expansion_pokemon_base_set_double_colorless_energy_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_double_colorless_energy"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Energy",
		Id = "base1-96",
		Illustrator = "Keiji Kinebuchi",
		LocalId = "96",
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
		EnergyType = "Special",
		Legal = {
			Standard = false,
			Expanded = false
		},
		Updated = "2025-11-14T00:13:03+01:00",
		Pricing = {
			Cardmarket = {
				Updated = "2025-12-22T01:48:03.000Z",
				Unit = "EUR",
				Avg = 4.75,
				Low = 0.1,
				Trend = 1.74,
				Avg1 = 2.75,
				Avg7 = 4.35,
				Avg30 = 4.85,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 2.72,
				Avg1Holo = 2,
				Avg7Holo = 2.06,
				Avg30Holo = 1.56
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Normal = {
					LowPrice = 1.88,
					MidPrice = 3.35,
					HighPrice = 10,
					MarketPrice = 4.49,
					DirectLowPrice = 1.47
				}
			}
		}
	}
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_dragonair.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_dragonair.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_dragonair"
	CARD.Description = "ce_expansion_pokemon_base_set_dragonair_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_dragonair"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Pokemon",
		Id = "base1-18",
		Illustrator = "Mitsuhiro Arita",
		LocalId = "18",
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
			148
		},
		Hp = 80,
		Types = {
			"Colorless"
		},
		EvolveFrom = "Dratini",
		Stage = "Stage1",
		Attacks = {
			{
				Cost = {
					"Colorless",
					"Colorless",
					"Colorless"
				},
				Name = "Slam",
				Effect = "Flip 2 coins. This attack does 30 damage times the number of heads.",
				Damage = "30x"
			},
			{
				Cost = {
					"Colorless",
					"Colorless",
					"Colorless",
					"Colorless"
				},
				Name = "Hyper Beam",
				Effect = "If the Defending Pokémon has any Energy cards attached to it, choose 1 of them and discard it.",
				Damage = 20
			}
		},
		Resistances = {
			{
				Type = "Psychic",
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
				Avg = 14.28,
				Low = 0.4,
				Trend = 21.66,
				Avg1 = 11.6,
				Avg7 = 22.65,
				Avg30 = 13.82,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 8.87,
				Avg1Holo = 7,
				Avg7Holo = 5.13,
				Avg30Holo = 5.01
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Normal = {
					LowPrice = 3.59,
					MidPrice = 8.45,
					HighPrice = 20,
					MarketPrice = 11.84,
					DirectLowPrice = nil
				}
			}
		}
	}

	CARD.HolographicStrength = Vector(1, 1, 1)
	CARD.HolographicTexture = "card_engine/holo_rainbow_strong"
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_dratini.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_dratini.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_dratini"
	CARD.Description = "ce_expansion_pokemon_base_set_dratini_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_dratini"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Pokemon",
		Id = "base1-26",
		Illustrator = "Ken Sugimori",
		LocalId = "26",
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
			147
		},
		Hp = 40,
		Types = {
			"Colorless"
		},
		Stage = "Basic",
		Attacks = {
			{
				Cost = {
					"Colorless"
				},
				Name = "Pound",
				Damage = 10
			}
		},
		Resistances = {
			{
				Type = "Psychic",
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
				Avg = 2.5,
				Low = 0.02,
				Trend = 1.87,
				Avg1 = 0.18,
				Avg7 = 1,
				Avg30 = 2.69,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 3.48,
				Avg1Holo = 8,
				Avg7Holo = 1.82,
				Avg30Holo = 1.82
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Normal = {
					LowPrice = 0.02,
					MidPrice = 0.87,
					HighPrice = 19.9,
					MarketPrice = 2.63,
					DirectLowPrice = 0.6
				}
			}
		}
	}
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_drowzee.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_drowzee.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_drowzee"
	CARD.Description = "ce_expansion_pokemon_base_set_drowzee_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_drowzee"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Pokemon",
		Id = "base1-49",
		Illustrator = "Ken Sugimori",
		LocalId = "49",
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
			96
		},
		Hp = 50,
		Types = {
			"Psychic"
		},
		Stage = "Basic",
		Attacks = {
			{
				Cost = {
					"Colorless"
				},
				Name = "Pound",
				Damage = 10
			},
			{
				Cost = {
					"Psychic",
					"Psychic"
				},
				Name = "Confuse Ray",
				Effect = "Flip a coin. If heads, the Defending Pokémon is now Confused.",
				Damage = 10
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
				Avg = 0.78,
				Low = 0.02,
				Trend = 1.08,
				Avg1 = 2.84,
				Avg7 = 1.23,
				Avg30 = 0.8,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 5,
				Avg1Holo = 5,
				Avg7Holo = 5,
				Avg30Holo = 5
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Normal = {
					LowPrice = 0.15,
					MidPrice = 0.5,
					HighPrice = 501.5,
					MarketPrice = 0.57,
					DirectLowPrice = 0.37
				}
			}
		}
	}
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_dugtrio.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_dugtrio.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_dugtrio"
	CARD.Description = "ce_expansion_pokemon_base_set_dugtrio_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_dugtrio"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
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
				Effect =
				"Does 10 damage to each of your own Benched Pokémon. (Don't apply Weakness and Resistance for Benched Pokémon.)",
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
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_electabuzz.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_electabuzz.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_electabuzz"
	CARD.Description = "ce_expansion_pokemon_base_set_electabuzz_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_electabuzz"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Pokemon",
		Id = "base1-20",
		Illustrator = "Ken Sugimori",
		LocalId = "20",
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
			125
		},
		Hp = 70,
		Types = {
			"Lightning"
		},
		Stage = "Basic",
		Attacks = {
			{
				Cost = {
					"Lightning"
				},
				Name = "Thundershock",
				Effect = "Flip a coin. If heads, the Defending Pokémon is now Paralyzed.",
				Damage = 10
			},
			{
				Cost = {
					"Lightning",
					"Colorless"
				},
				Name = "Thunderpunch",
				Effect =
				"Flip a coin. If heads, this attack does 30 damage plus 10 more damage; if tails, this attack does 30 damage and Electabuzz does 10 damage to itself.",
				Damage = "30+"
			}
		},
		Weaknesses = {
			{
				Type = "Fighting",
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
				Avg = 10.61,
				Low = 0.39,
				Trend = 16.68,
				Avg1 = 1.5,
				Avg7 = 18.39,
				Avg30 = 11.23,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 5.62,
				Avg1Holo = 8,
				Avg7Holo = 5.28,
				Avg30Holo = 3.14
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Normal = {
					LowPrice = 3,
					MidPrice = 5.46,
					HighPrice = 4321,
					MarketPrice = 7.07,
					DirectLowPrice = 5.12
				}
			}
		}
	}

	CARD.HolographicStrength = Vector(1, 1, 1)
	CARD.HolographicTexture = "card_engine/holo_rainbow_strong"
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_electrode.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_electrode.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_electrode"
	CARD.Description = "ce_expansion_pokemon_base_set_electrode_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_electrode"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Pokemon",
		Id = "base1-21",
		Illustrator = "Keiji Kinebuchi",
		LocalId = "21",
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
			101
		},
		Hp = 80,
		Types = {
			"Lightning"
		},
		EvolveFrom = "Voltorb",
		Stage = "Stage1",
		Abilities = {
			{
				Type = "Pokemon Power",
				Name = "Buzzap",
				Effect =
				"At any time during your turn (before your attack) you may Knock Out Electrode and attach it to 1 of your other Pokémon. If you do, chose a type of Energy. Electrode is now an Energy card (instead of a Pokémon) that provides 2 energy of that type. This power can't be used if Electrode is Asleep, Confused, or Paralyzed."
			}
		},
		Attacks = {
			{
				Cost = {
					"Lightning",
					"Lightning",
					"Lightning"
				},
				Name = "Electric Shock",
				Effect = "Flip a coin. If tails, Electrode does 10 damage to itself.",
				Damage = 50
			}
		},
		Weaknesses = {
			{
				Type = "Fighting",
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
				Avg = 6.82,
				Low = 0.4,
				Trend = 13.38,
				Avg1 = 1.11,
				Avg7 = 8.08,
				Avg30 = 6.99,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 7.58,
				Avg1Holo = 3,
				Avg7Holo = 8.33,
				Avg30Holo = 5.14
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Normal = {
					LowPrice = 2.25,
					MidPrice = 3.95,
					HighPrice = 9999,
					MarketPrice = 6.08,
					DirectLowPrice = 8.25
				}
			}
		}
	}

	CARD.HolographicStrength = Vector(1, 1, 1)
	CARD.HolographicTexture = "card_engine/holo_rainbow_strong"
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_energy_removal.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_energy_removal.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_energy_removal"
	CARD.Description = "ce_expansion_pokemon_base_set_energy_removal_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_energy_removal"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Trainer",
		Id = "base1-92",
		Illustrator = "Keiji Kinebuchi",
		LocalId = "92",
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
		Legal = {
			Standard = false,
			Expanded = false
		},
		Updated = "2025-11-14T00:13:03+01:00",
		Pricing = {
			Cardmarket = {
				Updated = "2025-12-22T01:48:03.000Z",
				Unit = "EUR",
				Avg = 0.44,
				Low = 0.02,
				Trend = 0.38,
				Avg1 = 0.18,
				Avg7 = 0.32,
				Avg30 = 0.44,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 0.24,
				Avg1Holo = 0.25,
				Avg7Holo = 0.15,
				Avg30Holo = 0.15
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Normal = {
					LowPrice = 0.12,
					MidPrice = 0.36,
					HighPrice = 501.5,
					MarketPrice = 0.38,
					DirectLowPrice = 0.18
				}
			}
		}
	}
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_energy_retrieval.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_energy_retrieval.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_energy_retrieval"
	CARD.Description = "ce_expansion_pokemon_base_set_energy_retrieval_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_energy_retrieval"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Trainer",
		Id = "base1-81",
		Illustrator = "Keiji Kinebuchi",
		LocalId = "81",
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
		Legal = {
			Standard = false,
			Expanded = false
		},
		Updated = "2025-11-14T00:13:03+01:00",
		Pricing = {
			Cardmarket = {
				Updated = "2025-12-22T01:48:03.000Z",
				Unit = "EUR",
				Avg = 0.78,
				Low = 0.02,
				Trend = 0.49,
				Avg1 = 0.48,
				Avg7 = 0.53,
				Avg30 = 0.79,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 0.04,
				Avg1Holo = 0.04,
				Avg7Holo = 0.04,
				Avg30Holo = 0.04
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Normal = {
					LowPrice = 0.1,
					MidPrice = 0.48,
					HighPrice = 5,
					MarketPrice = 0.5,
					DirectLowPrice = nil
				}
			}
		}
	}
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_farfetch_d.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_farfetch_d.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_farfetch_d"
	CARD.Description = "ce_expansion_pokemon_base_set_farfetch_d_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_farfetch_d"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Pokemon",
		Id = "base1-27",
		Illustrator = "Ken Sugimori",
		LocalId = "27",
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
			83
		},
		Hp = 50,
		Types = {
			"Colorless"
		},
		Stage = "Basic",
		Attacks = {
			{
				Cost = {
					"Colorless"
				},
				Name = "Leek Slap",
				Effect =
				"Flip a coin. If tails, this attack does nothing. Either way, you can't use this attack again as long as Farfetch'd stays in play (even putting Farfetch'd on the Bench won't let you use it again.)",
				Damage = 30
			},
			{
				Cost = {
					"Colorless",
					"Colorless",
					"Colorless"
				},
				Name = "Pot Smash",
				Damage = 30
			}
		},
		Weaknesses = {
			{
				Type = "Lightning",
				Value = "×2"
			}
		},
		Resistances = {
			{
				Type = "Fighting",
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
				Avg = 3.15,
				Low = 0.02,
				Trend = 9.19,
				Avg1 = 3.5,
				Avg7 = 7.83,
				Avg30 = 3.07,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 8.04,
				Avg1Holo = 5,
				Avg7Holo = 5.76,
				Avg30Holo = 5.76
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Normal = {
					LowPrice = 0.1,
					MidPrice = 0.75,
					HighPrice = 19.98,
					MarketPrice = 0.94,
					DirectLowPrice = 19.72
				}
			}
		}
	}
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_fighting_energy.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_fighting_energy.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_fighting_energy"
	CARD.Description = "ce_expansion_pokemon_base_set_fighting_energy_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_fighting_energy"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Energy",
		Id = "base1-97",
		Illustrator = "Keiji Kinebuchi",
		LocalId = "97",
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
		Stage = "Basic",
		EnergyType = "Normal",
		Legal = {
			Standard = true,
			Expanded = true
		},
		Updated = "2025-11-14T00:13:03+01:00",
		Pricing = {
			Cardmarket = {
				Updated = "2025-12-22T01:48:03.000Z",
				Unit = "EUR",
				Avg = 0.34,
				Low = 0.02,
				Trend = 0.39,
				Avg1 = 0.66,
				Avg7 = 0.34,
				Avg30 = 0.34,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 4.06,
				Avg1Holo = 4.99,
				Avg7Holo = 3.67,
				Avg30Holo = 3.67
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Normal = {
					LowPrice = 0.04,
					MidPrice = 0.28,
					HighPrice = 5,
					MarketPrice = 0.3,
					DirectLowPrice = 0.05
				}
			}
		}
	}
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_fire_energy.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_fire_energy.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_fire_energy"
	CARD.Description = "ce_expansion_pokemon_base_set_fire_energy_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_fire_energy"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Energy",
		Id = "base1-98",
		Illustrator = "Keiji Kinebuchi",
		LocalId = "98",
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
		Stage = "Basic",
		EnergyType = "Normal",
		Legal = {
			Standard = true,
			Expanded = true
		},
		Updated = "2025-11-14T00:13:03+01:00",
		Pricing = {
			Cardmarket = {
				Updated = "2025-12-22T01:48:03.000Z",
				Unit = "EUR",
				Avg = 0.42,
				Low = 0.02,
				Trend = 0.69,
				Avg1 = 1.56,
				Avg7 = 0.8,
				Avg30 = 0.44,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 2.19,
				Avg1Holo = 1.9,
				Avg7Holo = 2.28,
				Avg30Holo = 2.32
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Normal = {
					LowPrice = 0.05,
					MidPrice = 0.32,
					HighPrice = 5,
					MarketPrice = 0.34,
					DirectLowPrice = nil
				}
			}
		}
	}
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_full_heal.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_full_heal.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_full_heal"
	CARD.Description = "ce_expansion_pokemon_base_set_full_heal_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_full_heal"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Trainer",
		Id = "base1-82",
		Illustrator = "Keiji Kinebuchi",
		LocalId = "82",
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
		Legal = {
			Standard = false,
			Expanded = false
		},
		Updated = "2025-11-14T00:13:03+01:00",
		Pricing = {
			Cardmarket = {
				Updated = "2025-12-22T01:48:03.000Z",
				Unit = "EUR",
				Avg = 1.83,
				Low = 0.02,
				Trend = 2.53,
				Avg1 = 0.39,
				Avg7 = 2.09,
				Avg30 = 1.75,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 0.02,
				Avg1Holo = 0.02,
				Avg7Holo = 0.02,
				Avg30Holo = 0.02
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Normal = {
					LowPrice = 0.15,
					MidPrice = 0.99,
					HighPrice = 2.79,
					MarketPrice = 1.96,
					DirectLowPrice = nil
				}
			}
		}
	}
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_gastly.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_gastly.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_gastly"
	CARD.Description = "ce_expansion_pokemon_base_set_gastly_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_gastly"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Pokemon",
		Id = "base1-50",
		Illustrator = "Keiji Kinebuchi",
		LocalId = "50",
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
			92
		},
		Hp = 30,
		Types = {
			"Psychic"
		},
		Stage = "Basic",
		Attacks = {
			{
				Cost = {
					"Psychic"
				},
				Name = "Sleeping Gas",
				Effect = "Flip a coin. If heads, the Defending Pokémon is now Asleep."
			},
			{
				Cost = {
					"Psychic",
					"Colorless"
				},
				Name = "Destiny Bond",
				Effect =
				"Discard 1 Energy card attached to Gastly in order to use this attack. If a Pokémon Knocks Out Gastly during your opponent's next turn, Knock Out that Pokémon."
			}
		},
		Resistances = {
			{
				Type = "Fighting",
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
				Avg = 1.4,
				Low = 0.02,
				Trend = 1.16,
				Avg1 = 0.6,
				Avg7 = 1.56,
				Avg30 = 1.65,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 0.02,
				Avg1Holo = 0.02,
				Avg7Holo = 0.21,
				Avg30Holo = 0.21
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Normal = {
					LowPrice = 0.25,
					MidPrice = 0.6,
					HighPrice = 501.5,
					MarketPrice = 0.67,
					DirectLowPrice = 0.3
				}
			}
		}
	}
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_grass_energy.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_grass_energy.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_grass_energy"
	CARD.Description = "ce_expansion_pokemon_base_set_grass_energy_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_grass_energy"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Energy",
		Id = "base1-99",
		Illustrator = "Keiji Kinebuchi",
		LocalId = "99",
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
		Stage = "Basic",
		EnergyType = "Normal",
		Legal = {
			Standard = true,
			Expanded = true
		},
		Updated = "2025-11-14T00:13:03+01:00",
		Pricing = {
			Cardmarket = {
				Updated = "2025-12-22T01:48:03.000Z",
				Unit = "EUR",
				Avg = 0.44,
				Low = 0.02,
				Trend = 0.02,
				Avg1 = 0.45,
				Avg7 = 0.34,
				Avg30 = 0.5,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 5.05,
				Avg1Holo = 4,
				Avg7Holo = 3.16,
				Avg30Holo = 3.16
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Normal = {
					LowPrice = 0.04,
					MidPrice = 0.29,
					HighPrice = 4.23,
					MarketPrice = 0.31,
					DirectLowPrice = 0.14
				}
			}
		}
	}
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_growlithe.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_growlithe.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_growlithe"
	CARD.Description = "ce_expansion_pokemon_base_set_growlithe_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_growlithe"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Pokemon",
		Id = "base1-28",
		Illustrator = "Ken Sugimori",
		LocalId = "28",
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
			58
		},
		Hp = 60,
		Types = {
			"Fire"
		},
		Stage = "Basic",
		Attacks = {
			{
				Cost = {
					"Fire",
					"Colorless"
				},
				Name = "Flare",
				Damage = 20
			}
		},
		Weaknesses = {
			{
				Type = "Water",
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
				Avg = 3.34,
				Low = 0.02,
				Trend = 1.8,
				Avg1 = 1.87,
				Avg7 = 1.74,
				Avg30 = 3.28,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 3.27,
				Avg1Holo = 6,
				Avg7Holo = 2.15,
				Avg30Holo = 2.15
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Normal = {
					LowPrice = 0.2,
					MidPrice = 0.7,
					HighPrice = 9999,
					MarketPrice = 1.01,
					DirectLowPrice = 0.24
				}
			}
		}
	}
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_gust_of_wind.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_gust_of_wind.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_gust_of_wind"
	CARD.Description = "ce_expansion_pokemon_base_set_gust_of_wind_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_gust_of_wind"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Trainer",
		Id = "base1-93",
		Illustrator = "Keiji Kinebuchi",
		LocalId = "93",
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
		Legal = {
			Standard = false,
			Expanded = false
		},
		Updated = "2025-11-14T00:13:03+01:00",
		Pricing = {
			Cardmarket = {
				Updated = "2025-12-22T01:48:03.000Z",
				Unit = "EUR",
				Avg = 0.62,
				Low = 0.02,
				Trend = 0.02,
				Avg1 = 0.4,
				Avg7 = 0.24,
				Avg30 = 0.62,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 0.1,
				Avg1Holo = 0.1,
				Avg7Holo = 0.17,
				Avg30Holo = 0.17
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Normal = {
					LowPrice = 0.04,
					MidPrice = 0.29,
					HighPrice = 501.5,
					MarketPrice = 0.3,
					DirectLowPrice = 0.1
				}
			}
		}
	}
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_gyarados.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_gyarados.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_gyarados"
	CARD.Description = "ce_expansion_pokemon_base_set_gyarados_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_gyarados"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Pokemon",
		Id = "base1-6",
		Illustrator = "Mitsuhiro Arita",
		LocalId = "6",
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
			130
		},
		Hp = 100,
		Types = {
			"Water"
		},
		EvolveFrom = "Magikarp",
		Stage = "Stage1",
		Attacks = {
			{
				Cost = {
					"Water",
					"Water",
					"Water"
				},
				Name = "Dragon Rage",
				Damage = 50
			},
			{
				Cost = {
					"Water",
					"Water",
					"Water",
					"Water"
				},
				Name = "Bubblebeam",
				Effect = "Flip a coin. If heads, the Defending Pokémon is now Paralyzed.",
				Damage = 40
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
				Type = "Fighting",
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
				Avg = 37.01,
				Low = 0.99,
				Trend = 15.46,
				Avg1 = 4.25,
				Avg7 = 14,
				Avg30 = 35.55,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 14.3,
				Avg1Holo = 12.94,
				Avg7Holo = 13.88,
				Avg30Holo = 12.87
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Holofoil = {
					LowPrice = 14.2,
					MidPrice = 29.99,
					HighPrice = 167.15,
					MarketPrice = 34.69,
					DirectLowPrice = nil
				}
			}
		}
	}

	CARD.HolographicStrength = Vector(1, 1, 1)
	CARD.HolographicTexture = "card_engine/holo_rainbow_strong"
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_haunter.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_haunter.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_haunter"
	CARD.Description = "ce_expansion_pokemon_base_set_haunter_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_haunter"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Pokemon",
		Id = "base1-29",
		Illustrator = "Keiji Kinebuchi",
		LocalId = "29",
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
			93
		},
		Hp = 60,
		Types = {
			"Psychic"
		},
		EvolveFrom = "Gastly",
		Stage = "Stage1",
		Attacks = {
			{
				Cost = {
					"Psychic"
				},
				Name = "Hypnosis",
				Effect = "The Defending Pokémon is now Asleep."
			},
			{
				Cost = {
					"Psychic",
					"Psychic"
				},
				Name = "Dream Eater",
				Effect = "You can't this attack unless the Defending Pokémon is Asleep.",
				Damage = 50
			}
		},
		Resistances = {
			{
				Type = "Fighting",
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
				Avg = 3.83,
				Low = 0.02,
				Trend = 6.6,
				Avg1 = 2.88,
				Avg7 = 8.33,
				Avg30 = 3.67,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 1.85,
				Avg1Holo = 0.35,
				Avg7Holo = 1.23,
				Avg30Holo = 1.1
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Normal = {
					LowPrice = 0.3,
					MidPrice = 0.89,
					HighPrice = 100,
					MarketPrice = 1.53,
					DirectLowPrice = 0.64
				}
			}
		}
	}
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_hitmonchan.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_hitmonchan.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_hitmonchan"
	CARD.Description = "ce_expansion_pokemon_base_set_hitmonchan_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_hitmonchan"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Pokemon",
		Id = "base1-7",
		Illustrator = "Ken Sugimori",
		LocalId = "7",
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
			107
		},
		Hp = 70,
		Types = {
			"Fighting"
		},
		Stage = "Basic",
		Attacks = {
			{
				Cost = {
					"Fighting"
				},
				Name = "Jab",
				Damage = 20
			},
			{
				Cost = {
					"Fighting",
					"Fighting",
					"Colorless"
				},
				Name = "Special Punch",
				Damage = 40
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
				Avg = 13.68,
				Low = 0.95,
				Trend = 21.29,
				Avg1 = 2.38,
				Avg7 = 17.82,
				Avg30 = 13.69,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 9.47,
				Avg1Holo = 5.1,
				Avg7Holo = 6.59,
				Avg30Holo = 8.13
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Holofoil = {
					LowPrice = 5.98,
					MidPrice = 10.99,
					HighPrice = 34.98,
					MarketPrice = 18.86,
					DirectLowPrice = nil
				}
			}
		}
	}

	CARD.HolographicStrength = Vector(1, 1, 1)
	CARD.HolographicTexture = "card_engine/holo_rainbow_strong"
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_impostor_professor_oak.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_impostor_professor_oak.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_impostor_professor_oak"
	CARD.Description = "ce_expansion_pokemon_base_set_impostor_professor_oak_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_impostor_professor_oak"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Trainer",
		Id = "base1-73",
		Illustrator = "Ken Sugimori",
		LocalId = "73",
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
			Cardmarket = nil,
			Tcgplayer = nil
		}
	}

	CARD.HolographicStrength = Vector(1, 1, 1)
	CARD.HolographicTexture = "card_engine/holo_rainbow_strong"
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_item_finder.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_item_finder.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_item_finder"
	CARD.Description = "ce_expansion_pokemon_base_set_item_finder_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_item_finder"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Trainer",
		Id = "base1-74",
		Illustrator = "Keiji Kinebuchi",
		LocalId = "74",
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
				Avg = 7.81,
				Low = 1.5,
				Trend = 8.81,
				Avg1 = 6.12,
				Avg7 = 8.03,
				Avg30 = 7.87,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 2.62,
				Avg1Holo = 2,
				Avg7Holo = 1.22,
				Avg30Holo = 1.22
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Normal = {
					LowPrice = 4.69,
					MidPrice = 8,
					HighPrice = 4321,
					MarketPrice = 9.4,
					DirectLowPrice = 11.97
				}
			}
		}
	}

	CARD.HolographicStrength = Vector(1, 1, 1)
	CARD.HolographicTexture = "card_engine/holo_rainbow_strong"
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_ivysaur.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_ivysaur.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_ivysaur"
	CARD.Description = "ce_expansion_pokemon_base_set_ivysaur_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_ivysaur"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Pokemon",
		Id = "base1-30",
		Illustrator = "Ken Sugimori",
		LocalId = "30",
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
			2
		},
		Hp = 60,
		Types = {
			"Grass"
		},
		EvolveFrom = "Barboach",
		Stage = "Stage1",
		Attacks = {
			{
				Cost = {
					"Grass",
					"Colorless",
					"Colorless"
				},
				Name = "Vine Whip",
				Damage = 30
			},
			{
				Cost = {
					"Grass",
					"Grass",
					"Grass"
				},
				Name = "Poisonpowder",
				Effect = "The Defending Pokémon is now Poisoned.",
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
				Avg = 6.35,
				Low = 0.02,
				Trend = 5.54,
				Avg1 = 0.4,
				Avg7 = 7.54,
				Avg30 = 6.13,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 2.43,
				Avg1Holo = 1,
				Avg7Holo = 3.04,
				Avg30Holo = 3.04
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Normal = {
					LowPrice = 0.55,
					MidPrice = 2.01,
					HighPrice = 9999,
					MarketPrice = 3.24,
					DirectLowPrice = 1.88
				}
			}
		}
	}
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_jynx.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_jynx.lua"
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
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_kadabra.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_kadabra.lua"
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
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_kakuna.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_kakuna.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_kakuna"
	CARD.Description = "ce_expansion_pokemon_base_set_kakuna_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_kakuna"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Pokemon",
		Id = "base1-33",
		Illustrator = "Keiji Kinebuchi",
		LocalId = "33",
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
			14
		},
		Hp = 80,
		Types = {
			"Grass"
		},
		EvolveFrom = "Weedle",
		Stage = "Stage1",
		Attacks = {
			{
				Cost = {
					"Colorless",
					"Colorless"
				},
				Name = "Stiffen",
				Effect =
				"Flip a coin. If heads, prevent all damage done to Kakuna during your opponent's next turn. (Any other effects of attacks still happen.)"
			},
			{
				Cost = {
					"Grass",
					"Grass"
				},
				Name = "Poisonpowder",
				Effect = "Flip a coin. If heads, the Defending Pokémon is now Poisoned.",
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
				Avg = 1.86,
				Low = 0.02,
				Trend = 0.91,
				Avg1 = 2.57,
				Avg7 = 1.63,
				Avg30 = 1.87,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 2.54,
				Avg1Holo = 4.5,
				Avg7Holo = 1.18,
				Avg30Holo = 1.18
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Normal = {
					LowPrice = 0.24,
					MidPrice = 0.75,
					HighPrice = 9.99,
					MarketPrice = 0.92,
					DirectLowPrice = 1.06
				}
			}
		}
	}
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_koffing.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_koffing.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_koffing"
	CARD.Description = "ce_expansion_pokemon_base_set_koffing_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_koffing"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Pokemon",
		Id = "base1-51",
		Illustrator = "Mitsuhiro Arita",
		LocalId = "51",
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
			109
		},
		Hp = 50,
		Types = {
			"Grass"
		},
		Stage = "Basic",
		Attacks = {
			{
				Cost = {
					"Grass",
					"Grass"
				},
				Name = "Foul Gas",
				Effect = "Flip a coin. If heads, the Defending Pokémon is now Poisoned; if tails, it is now Confused.",
				Damage = 10
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
				Avg = 1.18,
				Low = 0.02,
				Trend = 0.78,
				Avg1 = 0.85,
				Avg7 = 0.77,
				Avg30 = 1.19,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 0.2,
				Avg1Holo = 0.2,
				Avg7Holo = 0.11,
				Avg30Holo = 0.11
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Normal = {
					LowPrice = 0.15,
					MidPrice = 0.49,
					HighPrice = 9999,
					MarketPrice = 0.52,
					DirectLowPrice = 0.3
				}
			}
		}
	}
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_lass.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_lass.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_lass"
	CARD.Description = "ce_expansion_pokemon_base_set_lass_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_lass"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Trainer",
		Id = "base1-75",
		Illustrator = "Ken Sugimori",
		LocalId = "75",
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
				Avg = 3.13,
				Low = 0.1,
				Trend = 3.14,
				Avg1 = 1.28,
				Avg7 = 2.24,
				Avg30 = 3.19,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 0.63,
				Avg1Holo = 1,
				Avg7Holo = 0.41,
				Avg30Holo = 0.41
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Normal = {
					LowPrice = 0.74,
					MidPrice = 2.06,
					HighPrice = 4321,
					MarketPrice = 2.45,
					DirectLowPrice = 3
				}
			}
		}
	}

	CARD.HolographicStrength = Vector(1, 1, 1)
	CARD.HolographicTexture = "card_engine/holo_rainbow_strong"
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_lightning_energy.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_lightning_energy.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_lightning_energy"
	CARD.Description = "ce_expansion_pokemon_base_set_lightning_energy_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_lightning_energy"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Energy",
		Id = "base1-100",
		Illustrator = "Keiji Kinebuchi",
		LocalId = "100",
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
		Stage = "Basic",
		EnergyType = "Normal",
		Legal = {
			Standard = true,
			Expanded = true
		},
		Updated = "2025-11-14T00:13:03+01:00",
		Pricing = {
			Cardmarket = {
				Updated = "2025-12-22T01:48:03.000Z",
				Unit = "EUR",
				Avg = 0.69,
				Low = 0.02,
				Trend = 1.28,
				Avg1 = 0.43,
				Avg7 = 0.54,
				Avg30 = 0.73,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 8.39,
				Avg1Holo = 4,
				Avg7Holo = 4.54,
				Avg30Holo = 4.5
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Normal = {
					LowPrice = 0.08,
					MidPrice = 0.36,
					HighPrice = 2.99,
					MarketPrice = 0.45,
					DirectLowPrice = 0.44
				}
			}
		}
	}
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_machamp.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_machamp.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_machamp"
	CARD.Description = "ce_expansion_pokemon_base_set_machamp_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_machamp"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Pokemon",
		Id = "base1-8",
		Illustrator = "Ken Sugimori",
		LocalId = "8",
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
			68
		},
		Hp = 100,
		Types = {
			"Fighting"
		},
		EvolveFrom = "Machoke",
		Stage = "Stage2",
		Abilities = {
			{
				Type = "Pokemon Power",
				Name = "Strikes Back",
				Effect =
				"Whenever your opponent's attack damages Machamp (even if Machamp is Knoced Out), this power does 10 damage to attacking Pokémon. (Don't apply Weakness and Resistance.) This power can't be used if Machamp is already Asleep, Confused, or Paralyzed when your opponent attacks."
			}
		},
		Attacks = {
			{
				Cost = {
					"Fighting",
					"Fighting",
					"Fighting",
					"Colorless"
				},
				Name = "Seismic Toss",
				Damage = 60
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
				Avg = 9.84,
				Low = 0.9,
				Trend = 12.36,
				Avg1 = 1.56,
				Avg7 = 13.41,
				Avg30 = 9.8,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 9.03,
				Avg1Holo = 10.64,
				Avg7Holo = 8.54,
				Avg30Holo = 8.47
			},
			Tcgplayer = nil
		}
	}

	CARD.HolographicStrength = Vector(1, 1, 1)
	CARD.HolographicTexture = "card_engine/holo_rainbow_strong"
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_machoke.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_machoke.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_machoke"
	CARD.Description = "ce_expansion_pokemon_base_set_machoke_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_machoke"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Pokemon",
		Id = "base1-34",
		Illustrator = "Ken Sugimori",
		LocalId = "34",
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
			67
		},
		Hp = 80,
		Types = {
			"Fighting"
		},
		EvolveFrom = "Machop",
		Stage = "Stage1",
		Attacks = {
			{
				Cost = {
					"Fighting",
					"Fighting",
					"Colorless"
				},
				Name = "Karate Chop",
				Effect = "Does 50 damage minus 10 for each damage counter on Machoke.",
				Damage = "50-"
			},
			{
				Cost = {
					"Fighting",
					"Fighting",
					"Colorless",
					"Colorless"
				},
				Name = "Submission",
				Effect = "Machoke does 20 damage to itself.",
				Damage = 60
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
				Avg = 1.04,
				Low = 0.02,
				Trend = 1.17,
				Avg1 = 0.25,
				Avg7 = 0.61,
				Avg30 = 1.04,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 0.2,
				Avg1Holo = 0.2,
				Avg7Holo = 0.2,
				Avg30Holo = 0.2
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Normal = {
					LowPrice = 0.15,
					MidPrice = 0.57,
					HighPrice = 9999,
					MarketPrice = 0.83,
					DirectLowPrice = nil
				}
			}
		}
	}
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_machop.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_machop.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_machop"
	CARD.Description = "ce_expansion_pokemon_base_set_machop_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_machop"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Pokemon",
		Id = "base1-52",
		Illustrator = "Mitsuhiro Arita",
		LocalId = "52",
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
			66
		},
		Hp = 50,
		Types = {
			"Fighting"
		},
		Stage = "Basic",
		Attacks = {
			{
				Cost = {
					"Fighting"
				},
				Name = "Low Kick",
				Damage = 20
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
				Avg = 1.79,
				Low = 0.02,
				Trend = 2.94,
				Avg1 = 0.19,
				Avg7 = 1.57,
				Avg30 = 1.93,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 6.84,
				Avg1Holo = 0.05,
				Avg7Holo = 5.03,
				Avg30Holo = 5.03
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Normal = {
					LowPrice = 0.07,
					MidPrice = 0.4,
					HighPrice = 501.5,
					MarketPrice = 0.48,
					DirectLowPrice = 0.17
				}
			}
		}
	}
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_magikarp.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_magikarp.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_magikarp"
	CARD.Description = "ce_expansion_pokemon_base_set_magikarp_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_magikarp"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Pokemon",
		Id = "base1-35",
		Illustrator = "Mitsuhiro Arita",
		LocalId = "35",
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
			129
		},
		Hp = 30,
		Types = {
			"Water"
		},
		Stage = "Basic",
		Attacks = {
			{
				Cost = {
					"Colorless"
				},
				Name = "Tackle",
				Damage = 10
			},
			{
				Cost = {
					"Water"
				},
				Name = "Flail",
				Effect = "Does 10 damage times number of damage counters on Magikarp.",
				Damage = "10x"
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
				Avg = 2.73,
				Low = 0.02,
				Trend = 2.35,
				Avg1 = 0.84,
				Avg7 = 1.39,
				Avg30 = 2.71,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 2.2,
				Avg1Holo = 7.5,
				Avg7Holo = 3.82,
				Avg30Holo = 3.82
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Normal = {
					LowPrice = 0.45,
					MidPrice = 1.17,
					HighPrice = 19.97,
					MarketPrice = 2.91,
					DirectLowPrice = 19.87
				}
			}
		}
	}
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_magmar.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_magmar.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_magmar"
	CARD.Description = "ce_expansion_pokemon_base_set_magmar_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_magmar"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Pokemon",
		Id = "base1-36",
		Illustrator = "Ken Sugimori",
		LocalId = "36",
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
			126
		},
		Hp = 50,
		Types = {
			"Fire"
		},
		Stage = "Basic",
		Attacks = {
			{
				Cost = {
					"Fire",
					"Fire"
				},
				Name = "Fire Punch",
				Damage = 30
			},
			{
				Cost = {
					"Fire",
					"Fire",
					"Colorless"
				},
				Name = "Flamethrower",
				Effect = "Discard 1 Energy card attached to Magmar in order to use this attack.",
				Damage = 50
			}
		},
		Weaknesses = {
			{
				Type = "Water",
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
				Avg = 3.29,
				Low = 0.02,
				Trend = 3.29,
				Avg1 = 2.12,
				Avg7 = 3.71,
				Avg30 = 4.11,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 0.13,
				Avg1Holo = 0.15,
				Avg7Holo = 0.11,
				Avg30Holo = 0.11
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Normal = {
					LowPrice = 0.25,
					MidPrice = 1.5,
					HighPrice = 5.99,
					MarketPrice = 2.29,
					DirectLowPrice = 0.75
				}
			}
		}
	}
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_magnemite.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_magnemite.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_magnemite"
	CARD.Description = "ce_expansion_pokemon_base_set_magnemite_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_magnemite"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Pokemon",
		Id = "base1-53",
		Illustrator = "Keiji Kinebuchi",
		LocalId = "53",
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
			81
		},
		Hp = 40,
		Types = {
			"Lightning"
		},
		Stage = "Basic",
		Attacks = {
			{
				Cost = {
					"Lightning"
				},
				Name = "Thunder Wave",
				Effect = "Flip a coin. If heads, the Defending Pokémon is now Paralyzed.",
				Damage = 10
			},
			{
				Cost = {
					"Lightning",
					"Colorless"
				},
				Name = "Selfdestruct",
				Effect =
				"Does 10 damage to each Pokémon on each player's Bench. (Don't apply Weakness and Resistance for Benched Pokémon.) Magnemite does 40 damage to itself.",
				Damage = 40
			}
		},
		Weaknesses = {
			{
				Type = "Fighting",
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
				Avg = 2.1,
				Low = 0.02,
				Trend = 1.88,
				Avg1 = 0.36,
				Avg7 = 0.92,
				Avg30 = 2.05,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 0.05,
				Avg1Holo = 0.05,
				Avg7Holo = 0.15,
				Avg30Holo = 0.15
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Normal = {
					LowPrice = 0.15,
					MidPrice = 0.48,
					HighPrice = 9999,
					MarketPrice = 0.48,
					DirectLowPrice = 0.3
				}
			}
		}
	}
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_magneton.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_magneton.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_magneton"
	CARD.Description = "ce_expansion_pokemon_base_set_magneton_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_magneton"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Pokemon",
		Id = "base1-9",
		Illustrator = "Keiji Kinebuchi",
		LocalId = "9",
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
			82
		},
		Hp = 60,
		Types = {
			"Lightning"
		},
		EvolveFrom = "Magnemite",
		Stage = "Stage1",
		Attacks = {
			{
				Cost = {
					"Lightning",
					"Lightning",
					"Colorless"
				},
				Name = "Thunder Wave",
				Effect = "Flip a coin. If heads, the Defending Pokémon is now Paralyzed.",
				Damage = 30
			},
			{
				Cost = {
					"Lightning",
					"Lightning",
					"Colorless",
					"Colorless"
				},
				Name = "Selfdestruct",
				Effect =
				"Does 20 damage to each Pokémon on each player's Bench. (Don't apply Weakness and Resistance for Benched Pokémon.) Magneton does 80 damage to itself.",
				Damage = 80
			}
		},
		Weaknesses = {
			{
				Type = "Fighting",
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
				Avg = 23.2,
				Low = 2.54,
				Trend = 27,
				Avg1 = 10.7,
				Avg7 = 21.92,
				Avg30 = 23.32,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 12.94,
				Avg1Holo = 8.8,
				Avg7Holo = 13.69,
				Avg30Holo = 12.92
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Holofoil = {
					LowPrice = 8,
					MidPrice = 12.49,
					HighPrice = 44.49,
					MarketPrice = 15.85,
					DirectLowPrice = 20.15
				}
			}
		}
	}

	CARD.HolographicStrength = Vector(1, 1, 1)
	CARD.HolographicTexture = "card_engine/holo_rainbow_strong"
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_maintenance.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_maintenance.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_maintenance"
	CARD.Description = "ce_expansion_pokemon_base_set_maintenance_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_maintenance"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Trainer",
		Id = "base1-83",
		Illustrator = "Keiji Kinebuchi",
		LocalId = "83",
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
		Legal = {
			Standard = false,
			Expanded = false
		},
		Updated = "2025-11-14T00:13:03+01:00",
		Pricing = {
			Cardmarket = {
				Updated = "2025-12-22T01:48:03.000Z",
				Unit = "EUR",
				Avg = 4.14,
				Low = 0.1,
				Trend = 4.29,
				Avg1 = 3.75,
				Avg7 = 3.68,
				Avg30 = 4.28,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 1,
				Avg1Holo = 1,
				Avg7Holo = 1.13,
				Avg30Holo = 1.13
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Normal = {
					LowPrice = 0.88,
					MidPrice = 1.65,
					HighPrice = 4.49,
					MarketPrice = 2.36,
					DirectLowPrice = 0.57
				}
			}
		}
	}
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_metapod.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_metapod.lua"
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
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_mewtwo.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_mewtwo.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_mewtwo"
	CARD.Description = "ce_expansion_pokemon_base_set_mewtwo_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_mewtwo"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Pokemon",
		Id = "base1-10",
		Illustrator = "Ken Sugimori",
		LocalId = "10",
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
			150
		},
		Hp = 60,
		Types = {
			"Psychic"
		},
		Stage = "Basic",
		Attacks = {
			{
				Cost = {
					"Psychic",
					"Colorless"
				},
				Name = "Psychic",
				Effect = "Does 10 damage plus 10 more damage for each Energy card attached to the Defending Pokémon.",
				Damage = "10+"
			},
			{
				Cost = {
					"Psychic",
					"Psychic"
				},
				Name = "Barrier",
				Effect =
				"Discard 1 Energy card attached to Mewtwo in order to use this attack. During your opponent's next turn, prevent all effects of attacks, including damage, done to Mewtwo."
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
				Avg = 28.36,
				Low = 1.1,
				Trend = 28.6,
				Avg1 = 10.91,
				Avg7 = 22.9,
				Avg30 = 28.05,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 16.9,
				Avg1Holo = 3.87,
				Avg7Holo = 10.59,
				Avg30Holo = 14.57
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Holofoil = {
					LowPrice = 18,
					MidPrice = 35.2,
					HighPrice = 3000,
					MarketPrice = 42.01,
					DirectLowPrice = nil
				}
			}
		}
	}

	CARD.HolographicStrength = Vector(1, 1, 1)
	CARD.HolographicTexture = "card_engine/holo_rainbow_strong"
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_nidoking.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_nidoking.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_nidoking"
	CARD.Description = "ce_expansion_pokemon_base_set_nidoking_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_nidoking"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Pokemon",
		Id = "base1-11",
		Illustrator = "Ken Sugimori",
		LocalId = "11",
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
			34
		},
		Hp = 90,
		Types = {
			"Grass"
		},
		EvolveFrom = "Nidorino",
		Stage = "Stage2",
		Attacks = {
			{
				Cost = {
					"Grass",
					"Colorless",
					"Colorless"
				},
				Name = "Thrash",
				Effect =
				"Flip a coin. If heads, this attack does 30 damage plus 10 more damage; if tails, this attack does 30 damage and Nidoking does 10 damage to itself.",
				Damage = "30+"
			},
			{
				Cost = {
					"Grass",
					"Grass",
					"Grass"
				},
				Name = "Toxic",
				Effect =
				"The Defending Pokémon is now Poisoned. It now takes 20 Poison damage instead of 10 after each player's turn (even if it was already Poisoned).",
				Damage = 20
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
				Avg = 23.59,
				Low = 2,
				Trend = 22.1,
				Avg1 = 12.99,
				Avg7 = 22.43,
				Avg30 = 23.86,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 26.24,
				Avg1Holo = 10.06,
				Avg7Holo = 13.59,
				Avg30Holo = 20.54
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Holofoil = {
					LowPrice = 13.99,
					MidPrice = 18.99,
					HighPrice = 44.99,
					MarketPrice = 29.46,
					DirectLowPrice = 33.88
				}
			}
		}
	}

	CARD.HolographicStrength = Vector(1, 1, 1)
	CARD.HolographicTexture = "card_engine/holo_rainbow_strong"
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_nidoran.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_nidoran.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_nidoran"
	CARD.Description = "ce_expansion_pokemon_base_set_nidoran_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_nidoran"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Pokemon",
		Id = "base1-55",
		Illustrator = "Ken Sugimori",
		LocalId = "55",
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
			32
		},
		Hp = 40,
		Types = {
			"Grass"
		},
		Stage = "Basic",
		Attacks = {
			{
				Cost = {
					"Grass"
				},
				Name = "Horn Hazard",
				Effect = "Flip a coin. If tails, this attack does nothing.",
				Damage = 30
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
			Cardmarket = nil,
			Tcgplayer = nil
		}
	}
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_nidorino.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_nidorino.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_nidorino"
	CARD.Description = "ce_expansion_pokemon_base_set_nidorino_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_nidorino"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Pokemon",
		Id = "base1-37",
		Illustrator = "Mitsuhiro Arita",
		LocalId = "37",
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
			33
		},
		Hp = 60,
		Types = {
			"Grass"
		},
		EvolveFrom = "Nidoran♂",
		Stage = "Stage1",
		Attacks = {
			{
				Cost = {
					"Grass",
					"Colorless",
					"Colorless"
				},
				Name = "Double Kick",
				Effect = "Flip 2 coins. This attack does 30 damage times the number of heads.",
				Damage = "30x"
			},
			{
				Cost = {
					"Grass",
					"Grass",
					"Colorless",
					"Colorless"
				},
				Name = "Horn Drill",
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
				Avg = 4.9,
				Low = 0.03,
				Trend = 4.29,
				Avg1 = 2.06,
				Avg7 = 3.45,
				Avg30 = 4.71,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 3.24,
				Avg1Holo = 8,
				Avg7Holo = 1.93,
				Avg30Holo = 1.93
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Normal = {
					LowPrice = 0.5,
					MidPrice = 1.5,
					HighPrice = 19.98,
					MarketPrice = 2.09,
					DirectLowPrice = 1.15
				}
			}
		}
	}
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_ninetales.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_ninetales.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_ninetales"
	CARD.Description = "ce_expansion_pokemon_base_set_ninetales_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_ninetales"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Pokemon",
		Id = "base1-12",
		Illustrator = "Ken Sugimori",
		LocalId = "12",
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
			38
		},
		Hp = 80,
		Types = {
			"Fire"
		},
		EvolveFrom = "Vulpix",
		Stage = "Stage1",
		Attacks = {
			{
				Cost = {
					"Colorless",
					"Colorless"
				},
				Name = "Lure",
				Effect =
				"If your opponent has any Benched Pokémon, choose 1 of them and switch it with the Defending Pokémon."
			},
			{
				Cost = {
					"Fire",
					"Fire",
					"Fire",
					"Fire"
				},
				Name = "Fire Blast",
				Effect = "Discard 1 Energy card attached to Ninetales in order to use this attack.",
				Damage = 80
			}
		},
		Weaknesses = {
			{
				Type = "Water",
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
				Avg = 12.78,
				Low = 0.7,
				Trend = 10.62,
				Avg1 = 2.1,
				Avg7 = 9.12,
				Avg30 = 12.31,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 19.81,
				Avg1Holo = 11.14,
				Avg7Holo = 11.53,
				Avg30Holo = 12.92
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Holofoil = {
					LowPrice = 9.99,
					MidPrice = 16.99,
					HighPrice = 4320.99,
					MarketPrice = 22.8,
					DirectLowPrice = 7.54
				}
			}
		}
	}

	CARD.HolographicStrength = Vector(1, 1, 1)
	CARD.HolographicTexture = "card_engine/holo_rainbow_strong"
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_onix.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_onix.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_onix"
	CARD.Description = "ce_expansion_pokemon_base_set_onix_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_onix"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Pokemon",
		Id = "base1-56",
		Illustrator = "Ken Sugimori",
		LocalId = "56",
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
			95
		},
		Hp = 90,
		Types = {
			"Fighting"
		},
		Stage = "Basic",
		Attacks = {
			{
				Cost = {
					"Fighting"
				},
				Name = "Rock Throw",
				Damage = 10
			},
			{
				Cost = {
					"Fighting",
					"Fighting"
				},
				Name = "Harden",
				Effect =
				"During opponent's next turn, whenever 30 or less damage is done to Onix (after applying Weakness and Resistance), prevent that damage. (Any other effects of attacks still happen.)"
			}
		},
		Weaknesses = {
			{
				Type = "Grass",
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
				Avg = 1.03,
				Low = 0.02,
				Trend = 0.7,
				Avg1 = 0.22,
				Avg7 = 0.86,
				Avg30 = 1.04,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 0.02,
				Avg1Holo = 0.02,
				Avg7Holo = 0.1,
				Avg30Holo = 0.1
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Normal = {
					LowPrice = 0.1,
					MidPrice = 0.54,
					HighPrice = 501.5,
					MarketPrice = 0.7,
					DirectLowPrice = 0.3
				}
			}
		}
	}
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_pidgeotto.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_pidgeotto.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_pidgeotto"
	CARD.Description = "ce_expansion_pokemon_base_set_pidgeotto_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_pidgeotto"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Pokemon",
		Id = "base1-22",
		Illustrator = "Ken Sugimori",
		LocalId = "22",
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
			17
		},
		Hp = 60,
		Types = {
			"Colorless"
		},
		EvolveFrom = "Pidgey",
		Stage = "Stage1",
		Attacks = {
			{
				Cost = {
					"Colorless",
					"Colorless"
				},
				Name = "Whirlwind",
				Effect =
				"If your opponent has any Benched Pokémon, he or she chooses 1 of them and switches it with the Defending Pokémon. (Do the damage before switching the Pokémon.)",
				Damage = 20
			},
			{
				Cost = {
					"Colorless",
					"Colorless",
					"Colorless"
				},
				Name = "Mirror Move",
				Effect =
				"If Pidgeotto was attacked last turn, do the final result of that attack on Pidgeotto to the Defending Pokémon."
			}
		},
		Weaknesses = {
			{
				Type = "Lightning",
				Value = "×2"
			}
		},
		Resistances = {
			{
				Type = "Fighting",
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
				Avg = 9.1,
				Low = 0.5,
				Trend = 12.47,
				Avg1 = 1.38,
				Avg7 = 9.94,
				Avg30 = 9.34,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 6.29,
				Avg1Holo = 0.39,
				Avg7Holo = 7.23,
				Avg30Holo = 3.49
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Normal = {
					LowPrice = 3.67,
					MidPrice = 5.46,
					HighPrice = 46.3,
					MarketPrice = 9.5,
					DirectLowPrice = nil
				}
			}
		}
	}

	CARD.HolographicStrength = Vector(1, 1, 1)
	CARD.HolographicTexture = "card_engine/holo_rainbow_strong"
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_pidgey.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_pidgey.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_pidgey"
	CARD.Description = "ce_expansion_pokemon_base_set_pidgey_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_pidgey"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Pokemon",
		Id = "base1-57",
		Illustrator = "Ken Sugimori",
		LocalId = "57",
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
			16
		},
		Hp = 40,
		Types = {
			"Colorless"
		},
		Stage = "Basic",
		Attacks = {
			{
				Cost = {
					"Colorless",
					"Colorless"
				},
				Name = "Whirlwind",
				Effect =
				"If your opponent has any Benched Pokémon, he or she chooses 1 of them and switches it with the Defending Pokémon. (Do the damage before switching the Pokémon.)",
				Damage = 10
			}
		},
		Weaknesses = {
			{
				Type = "Lightning",
				Value = "×2"
			}
		},
		Resistances = {
			{
				Type = "Fighting",
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
				Avg = 4.29,
				Low = 0.02,
				Trend = 5.76,
				Avg1 = 2.29,
				Avg7 = 3.09,
				Avg30 = 4.24,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 0.3,
				Avg1Holo = 0.3,
				Avg7Holo = 0.3,
				Avg30Holo = 0.3
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Normal = {
					LowPrice = 0.17,
					MidPrice = 0.65,
					HighPrice = 4,
					MarketPrice = 1.24,
					DirectLowPrice = 0.25
				}
			}
		}
	}
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_pikachu.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_pikachu.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_pikachu"
	CARD.Description = "ce_expansion_pokemon_base_set_pikachu_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_pikachu"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Pokemon",
		Id = "base1-58",
		Illustrator = "Mitsuhiro Arita",
		LocalId = "58",
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
			25
		},
		Hp = 40,
		Types = {
			"Lightning"
		},
		Stage = "Basic",
		Attacks = {
			{
				Cost = {
					"Colorless"
				},
				Name = "Gnaw",
				Damage = 10
			},
			{
				Cost = {
					"Lightning",
					"Colorless"
				},
				Name = "Thunder Jolt",
				Effect = "Flip a coin. If tails, Pikachu does 10 damage to itself.",
				Damage = 30
			}
		},
		Weaknesses = {
			{
				Type = "Fighting",
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
				Avg = 6.93,
				Low = 0.05,
				Trend = 10.21,
				Avg1 = 1.1,
				Avg7 = 14.13,
				Avg30 = 6.68,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 36.37,
				Avg1Holo = 1,
				Avg7Holo = 42.86,
				Avg30Holo = 22.72
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Normal = {
					LowPrice = 0.5,
					MidPrice = 1.99,
					HighPrice = 9999,
					MarketPrice = 4.55,
					DirectLowPrice = nil
				}
			}
		}
	}
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_pluspower.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_pluspower.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_pluspower"
	CARD.Description = "ce_expansion_pokemon_base_set_pluspower_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_pluspower"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Trainer",
		Id = "base1-84",
		Illustrator = "Keiji Kinebuchi",
		LocalId = "84",
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
		Legal = {
			Standard = false,
			Expanded = false
		},
		Updated = "2025-11-14T00:13:03+01:00",
		Pricing = {
			Cardmarket = {
				Updated = "2025-12-22T01:48:03.000Z",
				Unit = "EUR",
				Avg = 0.68,
				Low = 0.02,
				Trend = 0.71,
				Avg1 = 0.47,
				Avg7 = 0.57,
				Avg30 = 0.67,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 0.06,
				Avg1Holo = 0.06,
				Avg7Holo = 0.06,
				Avg30Holo = 0.06
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Normal = {
					LowPrice = 0.2,
					MidPrice = 0.5,
					HighPrice = 5,
					MarketPrice = 0.59,
					DirectLowPrice = 0.56
				}
			}
		}
	}
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_pok_dex.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_pok_dex.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_pok_dex"
	CARD.Description = "ce_expansion_pokemon_base_set_pok_dex_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_pok_dex"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Trainer",
		Id = "base1-87",
		Illustrator = "Keiji Kinebuchi",
		LocalId = "87",
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
		Legal = {
			Standard = false,
			Expanded = false
		},
		Updated = "2025-11-14T00:13:03+01:00",
		Pricing = {
			Cardmarket = {
				Updated = "2025-12-22T01:48:03.000Z",
				Unit = "EUR",
				Avg = 0.95,
				Low = 0.02,
				Trend = 1.09,
				Avg1 = 0.72,
				Avg7 = 0.69,
				Avg30 = 0.96,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 0.05,
				Avg1Holo = 0.05,
				Avg7Holo = 0.28,
				Avg30Holo = 0.28
			},
			Tcgplayer = nil
		}
	}
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_pok_mon_breeder.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_pok_mon_breeder.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_pok_mon_breeder"
	CARD.Description = "ce_expansion_pokemon_base_set_pok_mon_breeder_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_pok_mon_breeder"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Trainer",
		Id = "base1-76",
		Illustrator = "Ken Sugimori",
		LocalId = "76",
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
				Avg = 9.59,
				Low = 1.49,
				Trend = 10.66,
				Avg1 = 7.24,
				Avg7 = 8.42,
				Avg30 = 9.31,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 2.04,
				Avg1Holo = 1.98,
				Avg7Holo = 1.52,
				Avg30Holo = 1.52
			},
			Tcgplayer = nil
		}
	}

	CARD.HolographicStrength = Vector(1, 1, 1)
	CARD.HolographicTexture = "card_engine/holo_rainbow_strong"
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_pok_mon_center.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_pok_mon_center.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_pok_mon_center"
	CARD.Description = "ce_expansion_pokemon_base_set_pok_mon_center_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_pok_mon_center"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Trainer",
		Id = "base1-85",
		Illustrator = "Keiji Kinebuchi",
		LocalId = "85",
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
		Legal = {
			Standard = false,
			Expanded = false
		},
		Updated = "2025-11-14T00:13:03+01:00",
		Pricing = {
			Cardmarket = {
				Updated = "2025-12-22T01:48:03.000Z",
				Unit = "EUR",
				Avg = 3.5,
				Low = 0.02,
				Trend = 1.4,
				Avg1 = 0.94,
				Avg7 = 3.4,
				Avg30 = 3.51,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 0.05,
				Avg1Holo = 0.05,
				Avg7Holo = 0.05,
				Avg30Holo = 0.05
			},
			Tcgplayer = nil
		}
	}
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_pok_mon_flute.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_pok_mon_flute.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_pok_mon_flute"
	CARD.Description = "ce_expansion_pokemon_base_set_pok_mon_flute_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_pok_mon_flute"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Trainer",
		Id = "base1-86",
		Illustrator = "Keiji Kinebuchi",
		LocalId = "86",
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
		Legal = {
			Standard = false,
			Expanded = false
		},
		Updated = "2025-11-14T00:13:03+01:00",
		Pricing = {
			Cardmarket = {
				Updated = "2025-12-22T01:48:03.000Z",
				Unit = "EUR",
				Avg = 3.49,
				Low = 0.05,
				Trend = 4.19,
				Avg1 = 3.99,
				Avg7 = 2.76,
				Avg30 = 3.51,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 0,
				Avg1Holo = nil,
				Avg7Holo = nil,
				Avg30Holo = nil
			},
			Tcgplayer = nil
		}
	}
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_pok_mon_trader.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_pok_mon_trader.lua"
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
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_poliwag.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_poliwag.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_poliwag"
	CARD.Description = "ce_expansion_pokemon_base_set_poliwag_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_poliwag"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Pokemon",
		Id = "base1-59",
		Illustrator = "Ken Sugimori",
		LocalId = "59",
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
			60
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
				Name = "Water Gun",
				Effect =
				"Does 10 damage plus 10 damage for each Energy attached to Poliwag but not used to pay for this attack's Energy cost. Extra Energy after the end don't count.",
				Damage = "10+"
			}
		},
		Weaknesses = {
			{
				Type = "Grass",
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
				Avg = 1.57,
				Low = 0.02,
				Trend = 3.62,
				Avg1 = 0.32,
				Avg7 = 4.03,
				Avg30 = 1.56,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 0.3,
				Avg1Holo = 0.3,
				Avg7Holo = 0.3,
				Avg30Holo = 0.3
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Normal = {
					LowPrice = 0.13,
					MidPrice = 0.47,
					HighPrice = 9999,
					MarketPrice = 0.51,
					DirectLowPrice = 0.1
				}
			}
		}
	}
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_poliwhirl.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_poliwhirl.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_poliwhirl"
	CARD.Description = "ce_expansion_pokemon_base_set_poliwhirl_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_poliwhirl"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Pokemon",
		Id = "base1-38",
		Illustrator = "Ken Sugimori",
		LocalId = "38",
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
			61
		},
		Hp = 60,
		Types = {
			"Water"
		},
		EvolveFrom = "Poliwag",
		Stage = "Stage1",
		Attacks = {
			{
				Cost = {
					"Water",
					"Water"
				},
				Name = "Amnesia",
				Effect = "Choose 1 of defenders attacks. Defender cannot use that attack next turn."
			},
			{
				Cost = {
					"Water",
					"Water",
					"Colorless"
				},
				Name = "Doubleslap",
				Effect = "Flip 2 coins. This attack does 30 damage times number of heads.",
				Damage = "30x"
			}
		},
		Weaknesses = {
			{
				Type = "Grass",
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
				Avg = 2.86,
				Low = 0.02,
				Trend = 2.07,
				Avg1 = 0.36,
				Avg7 = 1.28,
				Avg30 = 2.81,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 43.68,
				Avg1Holo = 15,
				Avg7Holo = 22.54,
				Avg30Holo = 22.54
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Normal = {
					LowPrice = 0.2,
					MidPrice = 0.82,
					HighPrice = 9999,
					MarketPrice = 1.2,
					DirectLowPrice = 0.26
				}
			}
		}
	}
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_poliwrath.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_poliwrath.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_poliwrath"
	CARD.Description = "ce_expansion_pokemon_base_set_poliwrath_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_poliwrath"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Pokemon",
		Id = "base1-13",
		Illustrator = "Ken Sugimori",
		LocalId = "13",
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
			62
		},
		Hp = 90,
		Types = {
			"Water"
		},
		EvolveFrom = "Poliwhirl",
		Stage = "Stage2",
		Attacks = {
			{
				Cost = {
					"Water",
					"Water",
					"Colorless"
				},
				Name = "Water Gun",
				Effect =
				"Does 30 damage plus 10 more damage for each Water Energy attached to Poliwrath but not used to pay for this attack's Energy cost. Extra Water Energy after the 2nd doesn't count.",
				Damage = "30+"
			},
			{
				Cost = {
					"Water",
					"Water",
					"Colorless",
					"Colorless"
				},
				Name = "Whirlpool",
				Effect = "If the Defending Pokémon has any Energy cards attached to it, choose 1 and discard it.",
				Damage = 40
			}
		},
		Weaknesses = {
			{
				Type = "Grass",
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
				Avg = 28.91,
				Low = 3,
				Trend = 35.65,
				Avg1 = 11.51,
				Avg7 = 29.35,
				Avg30 = 30.75,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 19.78,
				Avg1Holo = 8.96,
				Avg7Holo = 22.07,
				Avg30Holo = 19.08
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Holofoil = {
					LowPrice = 10.95,
					MidPrice = 15.99,
					HighPrice = 39.99,
					MarketPrice = 19.46,
					DirectLowPrice = 12.99
				}
			}
		}
	}

	CARD.HolographicStrength = Vector(1, 1, 1)
	CARD.HolographicTexture = "card_engine/holo_rainbow_strong"
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_ponyta.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_ponyta.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_ponyta"
	CARD.Description = "ce_expansion_pokemon_base_set_ponyta_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_ponyta"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Pokemon",
		Id = "base1-60",
		Illustrator = "Ken Sugimori",
		LocalId = "60",
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
			77
		},
		Hp = 40,
		Types = {
			"Fire"
		},
		Stage = "Basic",
		Attacks = {
			{
				Cost = {
					"Colorless",
					"Colorless"
				},
				Name = "Smash Kick",
				Damage = 20
			},
			{
				Cost = {
					"Fire",
					"Fire"
				},
				Name = "Flame Tail",
				Damage = 30
			}
		},
		Weaknesses = {
			{
				Type = "Water",
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
				Avg = 0.87,
				Low = 0.02,
				Trend = 0.57,
				Avg1 = 0.86,
				Avg7 = 0.67,
				Avg30 = 0.89,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 0,
				Avg1Holo = nil,
				Avg7Holo = nil,
				Avg30Holo = nil
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Normal = {
					LowPrice = 0.07,
					MidPrice = 0.38,
					HighPrice = 501.5,
					MarketPrice = 0.45,
					DirectLowPrice = 0.18
				}
			}
		}
	}
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_porygon.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_porygon.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_porygon"
	CARD.Description = "ce_expansion_pokemon_base_set_porygon_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_porygon"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Pokemon",
		Id = "base1-39",
		Illustrator = "Tomoaki Imakuni",
		LocalId = "39",
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
			137
		},
		Hp = 30,
		Types = {
			"Colorless"
		},
		Stage = "Basic",
		Attacks = {
			{
				Cost = {
					"Colorless"
				},
				Name = "Conversion 1",
				Effect =
				"If the Defending Pokémon has a Weakness, you may change it to a type of your choice other than Colorless."
			},
			{
				Cost = {
					"Colorless",
					"Colorless"
				},
				Name = "Conversion 2",
				Effect = "Change Porygon's Resistance to a type of your choice other than Colorless."
			}
		},
		Weaknesses = {
			{
				Type = "Fighting",
				Value = "×2"
			}
		},
		Resistances = {
			{
				Type = "Psychic",
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
				Avg = 3.81,
				Low = 0.05,
				Trend = 5.82,
				Avg1 = 3.89,
				Avg7 = 4.3,
				Avg30 = 3.78,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 3.5,
				Avg1Holo = 3.5,
				Avg7Holo = 2.25,
				Avg30Holo = 2.25
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Normal = {
					LowPrice = 0.7,
					MidPrice = 1.58,
					HighPrice = 24.95,
					MarketPrice = 2.29,
					DirectLowPrice = 4.49
				}
			}
		}
	}
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_potion.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_potion.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_potion"
	CARD.Description = "ce_expansion_pokemon_base_set_potion_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_potion"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Trainer",
		Id = "base1-94",
		Illustrator = "Keiji Kinebuchi",
		LocalId = "94",
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
		Legal = {
			Standard = false,
			Expanded = false
		},
		Updated = "2025-11-14T00:13:03+01:00",
		Pricing = {
			Cardmarket = {
				Updated = "2025-12-22T01:48:03.000Z",
				Unit = "EUR",
				Avg = 0.76,
				Low = 0.02,
				Trend = 0.02,
				Avg1 = 0.1,
				Avg7 = 0.22,
				Avg30 = 0.75,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 0.3,
				Avg1Holo = 0.3,
				Avg7Holo = 0.3,
				Avg30Holo = 0.3
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Normal = {
					LowPrice = 0.02,
					MidPrice = 0.25,
					HighPrice = 9999,
					MarketPrice = 0.26,
					DirectLowPrice = 0.1
				}
			}
		}
	}
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_professor_oak.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_professor_oak.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_professor_oak"
	CARD.Description = "ce_expansion_pokemon_base_set_professor_oak_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_professor_oak"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Trainer",
		Id = "base1-88",
		Illustrator = "Ken Sugimori",
		LocalId = "88",
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
		Legal = {
			Standard = false,
			Expanded = false
		},
		Updated = "2025-11-14T00:13:03+01:00",
		Pricing = {
			Cardmarket = {
				Updated = "2025-12-22T01:48:03.000Z",
				Unit = "EUR",
				Avg = 1.68,
				Low = 0.02,
				Trend = 0.02,
				Avg1 = 5.88,
				Avg7 = 1.46,
				Avg30 = 1.71,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 1,
				Avg1Holo = 1,
				Avg7Holo = 2.5,
				Avg30Holo = 2.5
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Normal = {
					LowPrice = 0.25,
					MidPrice = 0.99,
					HighPrice = 6.86,
					MarketPrice = 1.41,
					DirectLowPrice = 0.62
				}
			}
		}
	}
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_psychic_energy.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_psychic_energy.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_psychic_energy"
	CARD.Description = "ce_expansion_pokemon_base_set_psychic_energy_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_psychic_energy"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Energy",
		Id = "base1-101",
		Illustrator = "Keiji Kinebuchi",
		LocalId = "101",
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
		Stage = "Basic",
		EnergyType = "Normal",
		Legal = {
			Standard = true,
			Expanded = true
		},
		Updated = "2025-11-14T00:13:03+01:00",
		Pricing = {
			Cardmarket = {
				Updated = "2025-12-22T01:48:03.000Z",
				Unit = "EUR",
				Avg = 0.44,
				Low = 0.02,
				Trend = 0.5,
				Avg1 = 0.38,
				Avg7 = 0.77,
				Avg30 = 0.44,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 2.91,
				Avg1Holo = 3,
				Avg7Holo = 2.5,
				Avg30Holo = 2.61
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Normal = {
					LowPrice = 0.08,
					MidPrice = 0.32,
					HighPrice = 3.49,
					MarketPrice = 0.39,
					DirectLowPrice = 0.09
				}
			}
		}
	}
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_raichu.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_raichu.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_raichu"
	CARD.Description = "ce_expansion_pokemon_base_set_raichu_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_raichu"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Pokemon",
		Id = "base1-14",
		Illustrator = "Ken Sugimori",
		LocalId = "14",
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
			26
		},
		Hp = 80,
		Types = {
			"Lightning"
		},
		EvolveFrom = "Pikachu",
		Stage = "Stage1",
		Attacks = {
			{
				Cost = {
					"Lightning",
					"Colorless",
					"Colorless"
				},
				Name = "Agility",
				Effect =
				"Flip a coin. If heads, during your opponent's next turn, prevent all effects of attacks, including damage, done to Raichu.",
				Damage = 20
			},
			{
				Cost = {
					"Lightning",
					"Lightning",
					"Lightning",
					"Colorless"
				},
				Name = "Thunder",
				Effect = "Flip a coin. If tails, Raichu does 30 damage to itself.",
				Damage = 60
			}
		},
		Weaknesses = {
			{
				Type = "Fighting",
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
				Avg = 39.2,
				Low = 6,
				Trend = 44.92,
				Avg1 = 35,
				Avg7 = 40.79,
				Avg30 = 36.61,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 30.12,
				Avg1Holo = 6,
				Avg7Holo = 15.3,
				Avg30Holo = 29.82
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Holofoil = {
					LowPrice = 27.99,
					MidPrice = 37.31,
					HighPrice = 999.99,
					MarketPrice = 42.73,
					DirectLowPrice = 31.77
				}
			}
		}
	}

	CARD.HolographicStrength = Vector(1, 1, 1)
	CARD.HolographicTexture = "card_engine/holo_rainbow_strong"
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_raticate.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_raticate.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_raticate"
	CARD.Description = "ce_expansion_pokemon_base_set_raticate_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_raticate"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Pokemon",
		Id = "base1-40",
		Illustrator = "Ken Sugimori",
		LocalId = "40",
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
			20
		},
		Hp = 60,
		Types = {
			"Colorless"
		},
		EvolveFrom = "Poochyena",
		Stage = "Stage1",
		Attacks = {
			{
				Cost = {
					"Colorless"
				},
				Name = "Bite",
				Damage = 20
			},
			{
				Cost = {
					"Colorless",
					"Colorless",
					"Colorless"
				},
				Name = "Super Fang",
				Effect =
				"Does damage to the Defending Pokémon equal to half the Defending Pokémon's remaining HP (rounded up to the nearest 10).",
				Damage = "?"
			}
		},
		Weaknesses = {
			{
				Type = "Fighting",
				Value = "×2"
			}
		},
		Resistances = {
			{
				Type = "Psychic",
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
				Avg = 3.53,
				Low = 0.03,
				Trend = 3.7,
				Avg1 = 4.64,
				Avg7 = 3.68,
				Avg30 = 3.56,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 0.5,
				Avg1Holo = 0.5,
				Avg7Holo = 0.56,
				Avg30Holo = 0.56
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Normal = {
					LowPrice = 0.25,
					MidPrice = 1.5,
					HighPrice = 21.11,
					MarketPrice = 1.92,
					DirectLowPrice = 1.11
				}
			}
		}
	}
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_rattata.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_rattata.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_rattata"
	CARD.Description = "ce_expansion_pokemon_base_set_rattata_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_rattata"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Pokemon",
		Id = "base1-61",
		Illustrator = "Mitsuhiro Arita",
		LocalId = "61",
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
			19
		},
		Hp = 30,
		Types = {
			"Colorless"
		},
		Stage = "Basic",
		Attacks = {
			{
				Cost = {
					"Colorless"
				},
				Name = "Bite",
				Damage = 20
			}
		},
		Weaknesses = {
			{
				Type = "Fighting",
				Value = "×2"
			}
		},
		Resistances = {
			{
				Type = "Psychic",
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
				Avg = 2.02,
				Low = 0.02,
				Trend = 1.9,
				Avg1 = 0.63,
				Avg7 = 0.8,
				Avg30 = 2.01,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 0.34,
				Avg1Holo = 0.34,
				Avg7Holo = 0.32,
				Avg30Holo = 0.32
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Normal = {
					LowPrice = 0.15,
					MidPrice = 0.5,
					HighPrice = 23,
					MarketPrice = 0.68,
					DirectLowPrice = 0.19
				}
			}
		}
	}
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_revive.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_revive.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_revive"
	CARD.Description = "ce_expansion_pokemon_base_set_revive_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_revive"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Trainer",
		Id = "base1-89",
		Illustrator = "Keiji Kinebuchi",
		LocalId = "89",
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
		Legal = {
			Standard = false,
			Expanded = false
		},
		Updated = "2025-11-14T00:13:03+01:00",
		Pricing = {
			Cardmarket = {
				Updated = "2025-12-22T01:48:03.000Z",
				Unit = "EUR",
				Avg = 3.21,
				Low = 0.04,
				Trend = 3.8,
				Avg1 = 9.99,
				Avg7 = 3.4,
				Avg30 = 3.33,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 1.27,
				Avg1Holo = 1.25,
				Avg7Holo = 1.06,
				Avg30Holo = 1.06
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Normal = {
					LowPrice = 0.4,
					MidPrice = 1.4,
					HighPrice = 7.48,
					MarketPrice = 2.42,
					DirectLowPrice = nil
				}
			}
		}
	}
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_sandshrew.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_sandshrew.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_sandshrew"
	CARD.Description = "ce_expansion_pokemon_base_set_sandshrew_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_sandshrew"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Pokemon",
		Id = "base1-62",
		Illustrator = "Ken Sugimori",
		LocalId = "62",
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
			27
		},
		Hp = 40,
		Types = {
			"Fighting"
		},
		Stage = "Basic",
		Attacks = {
			{
				Cost = {
					"Fighting"
				},
				Name = "Sand-attack",
				Effect =
				"If the Defending Pokémon tries to attack during your opponent's next turn, your opponent flips a coin. If tails, that attack does nothing.",
				Damage = 10
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
				Avg = 1.83,
				Low = 0.02,
				Trend = 1.77,
				Avg1 = 1.27,
				Avg7 = 0.85,
				Avg30 = 1.88,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 10.98,
				Avg1Holo = 14.99,
				Avg7Holo = 5.84,
				Avg30Holo = 5.84
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Normal = {
					LowPrice = 0.15,
					MidPrice = 0.52,
					HighPrice = 5,
					MarketPrice = 0.65,
					DirectLowPrice = 0.63
				}
			}
		}
	}
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_scoop_up.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_scoop_up.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_scoop_up"
	CARD.Description = "ce_expansion_pokemon_base_set_scoop_up_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_scoop_up"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Trainer",
		Id = "base1-78",
		Illustrator = "Keiji Kinebuchi",
		LocalId = "78",
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
				Avg = 9.01,
				Low = 3,
				Trend = 10.62,
				Avg1 = 3,
				Avg7 = 10.59,
				Avg30 = 9.09,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 5.39,
				Avg1Holo = 7,
				Avg7Holo = 2.9,
				Avg30Holo = 2.9
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Normal = {
					LowPrice = 3.89,
					MidPrice = 6.42,
					HighPrice = 29.99,
					MarketPrice = 7.26,
					DirectLowPrice = 6.17
				}
			}
		}
	}

	CARD.HolographicStrength = Vector(1, 1, 1)
	CARD.HolographicTexture = "card_engine/holo_rainbow_strong"
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_seel.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_seel.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_seel"
	CARD.Description = "ce_expansion_pokemon_base_set_seel_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_seel"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Pokemon",
		Id = "base1-41",
		Illustrator = "Ken Sugimori",
		LocalId = "41",
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
			86
		},
		Hp = 60,
		Types = {
			"Water"
		},
		Stage = "Basic",
		Attacks = {
			{
				Cost = {
					"Water"
				},
				Name = "Headbutt",
				Damage = 10
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
				Avg = 2.23,
				Low = 0.02,
				Trend = 1.57,
				Avg1 = 1.1,
				Avg7 = 1.77,
				Avg30 = 2.24,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 0.5,
				Avg1Holo = 0.5,
				Avg7Holo = 0.5,
				Avg30Holo = 0.5
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Normal = {
					LowPrice = 0.2,
					MidPrice = 0.89,
					HighPrice = 4.59,
					MarketPrice = 0.99,
					DirectLowPrice = 1
				}
			}
		}
	}
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_squirtle.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_squirtle.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_squirtle"
	CARD.Description = "ce_expansion_pokemon_base_set_squirtle_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_squirtle"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
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
				Effect =
				"Flip a coin. If heads, prevent all damage done to Squirtle during your opponent's next turn. (Any other effects of attacks still happen.)"
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
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_starmie.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_starmie.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_starmie"
	CARD.Description = "ce_expansion_pokemon_base_set_starmie_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_starmie"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Pokemon",
		Id = "base1-64",
		Illustrator = "Keiji Kinebuchi",
		LocalId = "64",
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
			121
		},
		Hp = 60,
		Types = {
			"Water"
		},
		EvolveFrom = "Staryu",
		Stage = "Stage1",
		Attacks = {
			{
				Cost = {
					"Water",
					"Water"
				},
				Name = "Recover",
				Effect =
				"Discard 1 Energy card to Starmie in order to use this attack. Remove all damage counters from Starmie."
			},
			{
				Cost = {
					"Water",
					"Colorless",
					"Colorless"
				},
				Name = "Star Freeze",
				Effect = "Flip a coin. If heads, the Defending Pokémon is now Paralyzed.",
				Damage = 20
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
				Avg = 0.79,
				Low = 0.02,
				Trend = 2.22,
				Avg1 = 0.54,
				Avg7 = 4.01,
				Avg30 = 1.28,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 0.26,
				Avg1Holo = 0.26,
				Avg7Holo = 0.26,
				Avg30Holo = 0.26
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Normal = {
					LowPrice = 0.1,
					MidPrice = 0.5,
					HighPrice = 501.5,
					MarketPrice = 0.59,
					DirectLowPrice = 0.31
				}
			}
		}
	}
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_staryu.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_staryu.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_staryu"
	CARD.Description = "ce_expansion_pokemon_base_set_staryu_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_staryu"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Pokemon",
		Id = "base1-65",
		Illustrator = "Keiji Kinebuchi",
		LocalId = "65",
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
			120
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
				Name = "Slap",
				Damage = 20
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
				Avg = 0.71,
				Low = 0.02,
				Trend = 0.31,
				Avg1 = 0.22,
				Avg7 = 0.41,
				Avg30 = 0.7,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 0.49,
				Avg1Holo = 0.49,
				Avg7Holo = 0.49,
				Avg30Holo = 0.49
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Normal = {
					LowPrice = 0.1,
					MidPrice = 0.42,
					HighPrice = 501.5,
					MarketPrice = 0.52,
					DirectLowPrice = 0.54
				}
			}
		}
	}
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_super_energy_removal.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_super_energy_removal.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_super_energy_removal"
	CARD.Description = "ce_expansion_pokemon_base_set_super_energy_removal_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_super_energy_removal"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Trainer",
		Id = "base1-79",
		Illustrator = "Keiji Kinebuchi",
		LocalId = "79",
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
				Avg = 3.2,
				Low = 0.1,
				Trend = 4.07,
				Avg1 = 5.64,
				Avg7 = 2.96,
				Avg30 = 3.1,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 1.49,
				Avg1Holo = 4,
				Avg7Holo = 0.68,
				Avg30Holo = 0.68
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Normal = {
					LowPrice = 0.56,
					MidPrice = 2.49,
					HighPrice = 9999,
					MarketPrice = 3.7,
					DirectLowPrice = nil
				}
			}
		}
	}

	CARD.HolographicStrength = Vector(1, 1, 1)
	CARD.HolographicTexture = "card_engine/holo_rainbow_strong"
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_super_potion.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_super_potion.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_super_potion"
	CARD.Description = "ce_expansion_pokemon_base_set_super_potion_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_super_potion"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Trainer",
		Id = "base1-90",
		Illustrator = "Keiji Kinebuchi",
		LocalId = "90",
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
		Legal = {
			Standard = false,
			Expanded = false
		},
		Updated = "2025-11-14T00:13:03+01:00",
		Pricing = {
			Cardmarket = {
				Updated = "2025-12-22T01:48:03.000Z",
				Unit = "EUR",
				Avg = 0.62,
				Low = 0.02,
				Trend = 0.44,
				Avg1 = 0.26,
				Avg7 = 0.59,
				Avg30 = 0.64,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 0.05,
				Avg1Holo = 0.05,
				Avg7Holo = 0.28,
				Avg30Holo = 0.28
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Normal = {
					LowPrice = 0.04,
					MidPrice = 0.28,
					HighPrice = 5.44,
					MarketPrice = 0.28,
					DirectLowPrice = 0.25
				}
			}
		}
	}
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_switch.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_switch.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_switch"
	CARD.Description = "ce_expansion_pokemon_base_set_switch_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_switch"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Trainer",
		Id = "base1-95",
		Illustrator = "Keiji Kinebuchi",
		LocalId = "95",
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
		Legal = {
			Standard = false,
			Expanded = false
		},
		Updated = "2025-11-14T00:13:03+01:00",
		Pricing = {
			Cardmarket = {
				Updated = "2025-12-22T01:48:03.000Z",
				Unit = "EUR",
				Avg = 0.28,
				Low = 0.02,
				Trend = 0.32,
				Avg1 = 0.42,
				Avg7 = 0.3,
				Avg30 = 0.29,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 1.01,
				Avg1Holo = 0.89,
				Avg7Holo = 0.69,
				Avg30Holo = 0.69
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Normal = {
					LowPrice = 0.04,
					MidPrice = 0.3,
					HighPrice = 5.73,
					MarketPrice = 0.33,
					DirectLowPrice = 0.2
				}
			}
		}
	}
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_tangela.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_tangela.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_tangela"
	CARD.Description = "ce_expansion_pokemon_base_set_tangela_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_tangela"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Pokemon",
		Id = "base1-66",
		Illustrator = "Mitsuhiro Arita",
		LocalId = "66",
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
			114
		},
		Hp = 50,
		Types = {
			"Grass"
		},
		Stage = "Basic",
		Attacks = {
			{
				Cost = {
					"Grass",
					"Colorless"
				},
				Name = "Bind",
				Effect = "Flip a coin. If heads, the Defending Pokémon is now Paralyzed.",
				Damage = 20
			},
			{
				Cost = {
					"Grass",
					"Grass",
					"Grass"
				},
				Name = "Poisonpowder",
				Effect = "The Defending Pokémon is now Poisoned.",
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
				Avg = 1.39,
				Low = 0.02,
				Trend = 0.85,
				Avg1 = 1.11,
				Avg7 = 0.83,
				Avg30 = 1.36,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 0.05,
				Avg1Holo = 0.05,
				Avg7Holo = 0.05,
				Avg30Holo = 0.05
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Normal = {
					LowPrice = 0.21,
					MidPrice = 0.54,
					HighPrice = 14.99,
					MarketPrice = 0.71,
					DirectLowPrice = 0.71
				}
			}
		}
	}
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_venusaur.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_venusaur.lua"
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
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_voltorb.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_voltorb.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_voltorb"
	CARD.Description = "ce_expansion_pokemon_base_set_voltorb_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_voltorb"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Pokemon",
		Id = "base1-67",
		Illustrator = "Keiji Kinebuchi",
		LocalId = "67",
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
			100
		},
		Hp = 40,
		Types = {
			"Lightning"
		},
		Stage = "Basic",
		Attacks = {
			{
				Cost = {
					"Colorless"
				},
				Name = "Tackle",
				Damage = 10
			}
		},
		Weaknesses = {
			{
				Type = "Fighting",
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
				Avg = 5.7,
				Low = 0.02,
				Trend = 5.02,
				Avg1 = 0.65,
				Avg7 = 2.28,
				Avg30 = 5.66,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 0.99,
				Avg1Holo = 0.99,
				Avg7Holo = 1.61,
				Avg30Holo = 1.61
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Normal = {
					LowPrice = 0.3,
					MidPrice = 1.12,
					HighPrice = 6,
					MarketPrice = 1.42,
					DirectLowPrice = 0.83
				}
			}
		}
	}
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_vulpix.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_vulpix.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_vulpix"
	CARD.Description = "ce_expansion_pokemon_base_set_vulpix_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_vulpix"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Pokemon",
		Id = "base1-68",
		Illustrator = "Ken Sugimori",
		LocalId = "68",
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
			37
		},
		Hp = 50,
		Types = {
			"Fire"
		},
		Stage = "Basic",
		Attacks = {
			{
				Cost = {
					"Fire",
					"Fire"
				},
				Name = "Confuse Ray",
				Effect = "Flip a coin. If heads, the Defending Pokémon is now Confused.",
				Damage = 10
			}
		},
		Weaknesses = {
			{
				Type = "Water",
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
				Avg = 1.33,
				Low = 0.02,
				Trend = 1.9,
				Avg1 = 0.94,
				Avg7 = 0.8,
				Avg30 = 1.33,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 1.25,
				Avg1Holo = 1.25,
				Avg7Holo = 1.25,
				Avg30Holo = 1.25
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Normal = {
					LowPrice = 0.1,
					MidPrice = 0.5,
					HighPrice = 49.99,
					MarketPrice = 0.63,
					DirectLowPrice = 0.66
				}
			}
		}
	}
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_wartortle.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_wartortle.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_wartortle"
	CARD.Description = "ce_expansion_pokemon_base_set_wartortle_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_wartortle"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Pokemon",
		Id = "base1-42",
		Illustrator = "Ken Sugimori",
		LocalId = "42",
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
			8
		},
		Hp = 70,
		Types = {
			"Water"
		},
		EvolveFrom = "Squirtle",
		Stage = "Stage1",
		Attacks = {
			{
				Cost = {
					"Water",
					"Colorless"
				},
				Name = "Withdraw",
				Effect =
				"Flip a coin. If heads, prevent all damage done to Wartortle during your opponent's next turn. (Any other effects of attacks still happen.)"
			},
			{
				Cost = {
					"Water",
					"Colorless",
					"Colorless"
				},
				Name = "Bite",
				Damage = 40
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
				Avg = 6.84,
				Low = 0.02,
				Trend = 4.64,
				Avg1 = 2.69,
				Avg7 = 8.12,
				Avg30 = 7.61,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 24.12,
				Avg1Holo = 1.49,
				Avg7Holo = 21.37,
				Avg30Holo = 16.98
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Normal = {
					LowPrice = 0.25,
					MidPrice = 1.93,
					HighPrice = 6.77,
					MarketPrice = 3.31,
					DirectLowPrice = 1.7
				}
			}
		}
	}
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_water_energy.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_water_energy.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_water_energy"
	CARD.Description = "ce_expansion_pokemon_base_set_water_energy_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_water_energy"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Energy",
		Id = "base1-102",
		Illustrator = "Keiji Kinebuchi",
		LocalId = "102",
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
		Stage = "Basic",
		EnergyType = "Normal",
		Legal = {
			Standard = true,
			Expanded = true
		},
		Updated = "2025-11-14T00:13:03+01:00",
		Pricing = {
			Cardmarket = {
				Updated = "2025-12-22T01:48:03.000Z",
				Unit = "EUR",
				Avg = 0.3,
				Low = 0.02,
				Trend = 0.02,
				Avg1 = 0.92,
				Avg7 = 0.33,
				Avg30 = 0.47,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 1.66,
				Avg1Holo = 4,
				Avg7Holo = 0.83,
				Avg30Holo = 0.92
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Normal = {
					LowPrice = 0.09,
					MidPrice = 0.3,
					HighPrice = 19.98,
					MarketPrice = 0.3,
					DirectLowPrice = 0.12
				}
			}
		}
	}
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_weedle.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_weedle.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_weedle"
	CARD.Description = "ce_expansion_pokemon_base_set_weedle_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_weedle"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Pokemon",
		Id = "base1-69",
		Illustrator = "Mitsuhiro Arita",
		LocalId = "69",
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
			13
		},
		Hp = 40,
		Types = {
			"Grass"
		},
		Stage = "Basic",
		Attacks = {
			{
				Cost = {
					"Grass"
				},
				Name = "Poison Sting",
				Effect = "Flip a coin. If heads, Defending Pokémon is now Poisoned.",
				Damage = 10
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
				Avg = 2.39,
				Low = 0.02,
				Trend = 7.11,
				Avg1 = 52.72,
				Avg7 = 7.95,
				Avg30 = 2.37,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 4.57,
				Avg1Holo = 0.5,
				Avg7Holo = 5.92,
				Avg30Holo = 5.92
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Normal = {
					LowPrice = 0.1,
					MidPrice = 0.45,
					HighPrice = 2.99,
					MarketPrice = 0.46,
					DirectLowPrice = 0.22
				}
			}
		}
	}
	table.insert(ALL_CARDS, CARD)
end

do
	local CARD = {}
	CARD.hooks = setmetatable({}, { __index = CARD })
	CARD.FileName = "pokemon_base_set_zapdos.lua"
	CARD.FilePath = "ce_expansion_pokemon_base_set/cards/pokemon_base_set_zapdos.lua"
	CARD.Name = "ce_expansion_pokemon_base_set_zapdos"
	CARD.Description = "ce_expansion_pokemon_base_set_zapdos_description"
	CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_zapdos"
	CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
	CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
	CARD.Attributes = {
		Category = "Pokemon",
		Id = "base1-16",
		Illustrator = "Ken Sugimori",
		LocalId = "16",
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
			145
		},
		Hp = 90,
		Types = {
			"Lightning"
		},
		Stage = "Basic",
		Attacks = {
			{
				Cost = {
					"Lightning",
					"Lightning",
					"Lightning",
					"Colorless"
				},
				Name = "Thunder",
				Effect = "Flip a coin. If tails, Zapdos does 30 damage to itself.",
				Damage = 60
			},
			{
				Cost = {
					"Lightning",
					"Lightning",
					"Lightning",
					"Lightning"
				},
				Name = "Thunderbolt",
				Effect = "Discard all Energy cards attached to Zapdos in order to use this attack.",
				Damage = 100
			}
		},
		Resistances = {
			{
				Type = "Fighting",
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
				Avg = 37.79,
				Low = 3.99,
				Trend = 30.72,
				Avg1 = 7.75,
				Avg7 = 41.41,
				Avg30 = 37.23,
				AvgHolo = nil,
				LowHolo = nil,
				TrendHolo = 16.02,
				Avg1Holo = 13.17,
				Avg7Holo = 21.35,
				Avg30Holo = 21.65
			},
			Tcgplayer = {
				Updated = "2025-12-22T20:05:16.000Z",
				Unit = "USD",
				Holofoil = {
					LowPrice = 19.98,
					MidPrice = 31.06,
					HighPrice = 9999,
					MarketPrice = 36.61,
					DirectLowPrice = nil
				}
			}
		}
	}

	CARD.HolographicStrength = Vector(1, 1, 1)
	CARD.HolographicTexture = "card_engine/holo_dark"
	table.insert(ALL_CARDS, CARD)
end

return ALL_CARDS
