local CARD = CARD
CARD.Name = "ce_expansion_pokemon_base_set_poliwag"
CARD.Description = "ce_expansion_pokemon_base_set_poliwag_description"
CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_poliwag"
CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
CARD.Attributes = {
  Category = "Pokemon",
  Id = "base1-59",
  Illustrator = "Ken Sugimori",
  LocalId = "59",
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
    60
  },
  Hp = 40,
  Types = {
    "Water"
  },
  Stage = "Basic",
  Attacks = {
    {
      Cost = {
        "Water"
      },
      Name = "Water Gun",
      Effect =
      "Does 10 damage plus 10 damage for each Energy attached to Poliwag but not used to pay for this attack's Energy cost. Extra Energy after the end don't count.",
      Damage = "10+"
    }
  },
  Weaknesses = {
    {
      Type = "Grass",
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
      Avg = 1.57,
      Low = 0.02,
      Trend = 3.62,
      Avg1 = 0.32,
      Avg7 = 4.03,
      Avg30 = 1.56,
      AvgHolo = nil,
      LowHolo = nil,
      TrendHolo = 0.3,
      Avg1Holo = 0.3,
      Avg7Holo = 0.3,
      Avg30Holo = 0.3
    },
    Tcgplayer = {
      Updated = "2025-12-22T20:05:16.000Z",
      Unit = "USD",
      Normal = {
        LowPrice = 0.13,
        MidPrice = 0.47,
        HighPrice = 9999,
        MarketPrice = 0.51,
        DirectLowPrice = 0.1
      }
    }
  }
}
