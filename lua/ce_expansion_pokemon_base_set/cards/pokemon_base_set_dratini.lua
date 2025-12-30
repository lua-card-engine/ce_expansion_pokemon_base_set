local CARD = CARD
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
