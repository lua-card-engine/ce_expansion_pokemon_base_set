local CARD = CARD
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
