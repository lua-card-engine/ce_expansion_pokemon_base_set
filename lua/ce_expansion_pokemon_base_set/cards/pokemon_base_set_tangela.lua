local CARD = CARD
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
