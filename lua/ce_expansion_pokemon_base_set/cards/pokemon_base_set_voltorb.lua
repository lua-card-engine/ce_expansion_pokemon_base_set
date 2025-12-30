local CARD = CARD
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
