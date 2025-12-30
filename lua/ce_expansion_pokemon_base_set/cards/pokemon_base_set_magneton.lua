local CARD = CARD
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
