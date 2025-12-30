local CARD = CARD
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
