local CARD = CARD
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
