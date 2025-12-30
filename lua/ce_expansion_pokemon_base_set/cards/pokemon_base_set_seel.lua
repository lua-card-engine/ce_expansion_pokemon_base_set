local CARD = CARD
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
