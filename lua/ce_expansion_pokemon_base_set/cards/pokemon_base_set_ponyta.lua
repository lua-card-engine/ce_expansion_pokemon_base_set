local CARD = CARD
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
