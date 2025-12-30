local CARD = CARD
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
