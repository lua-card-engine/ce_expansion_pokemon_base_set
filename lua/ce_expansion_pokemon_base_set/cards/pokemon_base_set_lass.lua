local CARD = CARD
CARD.Name = "ce_expansion_pokemon_base_set_lass"
CARD.Description = "ce_expansion_pokemon_base_set_lass_description"
CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_lass"
CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
CARD.Attributes = {
  Category = "Trainer",
  Id = "base1-75",
  Illustrator = "Ken Sugimori",
  LocalId = "75",
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
  Legal = {
    Standard = false,
    Expanded = false
  },
  Updated = "2025-11-14T00:13:03+01:00",
  Pricing = {
    Cardmarket = {
      Updated = "2025-12-22T01:48:03.000Z",
      Unit = "EUR",
      Avg = 3.13,
      Low = 0.1,
      Trend = 3.14,
      Avg1 = 1.28,
      Avg7 = 2.24,
      Avg30 = 3.19,
      AvgHolo = nil,
      LowHolo = nil,
      TrendHolo = 0.63,
      Avg1Holo = 1,
      Avg7Holo = 0.41,
      Avg30Holo = 0.41
    },
    Tcgplayer = {
      Updated = "2025-12-22T20:05:16.000Z",
      Unit = "USD",
      Normal = {
        LowPrice = 0.74,
        MidPrice = 2.06,
        HighPrice = 4321,
        MarketPrice = 2.45,
        DirectLowPrice = 3
      }
    }
  }
}

CARD.HolographicStrength = Vector(1, 1, 1)
CARD.HolographicTexture = "card_engine/holo_rainbow_strong"
