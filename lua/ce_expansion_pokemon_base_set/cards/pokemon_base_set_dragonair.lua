local CARD = CARD
CARD.Name = "ce_expansion_pokemon_base_set_dragonair"
CARD.Description = "ce_expansion_pokemon_base_set_dragonair_description"
CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_dragonair"
CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
CARD.Attributes = {
  Category = "Pokemon",
  Id = "base1-18",
  Illustrator = "Mitsuhiro Arita",
  LocalId = "18",
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
  DexId = {
    148
  },
  Hp = 80,
  Types = {
    "Colorless"
  },
  EvolveFrom = "Dratini",
  Stage = "Stage1",
  Attacks = {
    {
      Cost = {
        "Colorless",
        "Colorless",
        "Colorless"
      },
      Name = "Slam",
      Effect = "Flip 2 coins. This attack does 30 damage times the number of heads.",
      Damage = "30x"
    },
    {
      Cost = {
        "Colorless",
        "Colorless",
        "Colorless",
        "Colorless"
      },
      Name = "Hyper Beam",
      Effect = "If the Defending Pokémon has any Energy cards attached to it, choose 1 of them and discard it.",
      Damage = 20
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
      Avg = 14.28,
      Low = 0.4,
      Trend = 21.66,
      Avg1 = 11.6,
      Avg7 = 22.65,
      Avg30 = 13.82,
      AvgHolo = nil,
      LowHolo = nil,
      TrendHolo = 8.87,
      Avg1Holo = 7,
      Avg7Holo = 5.13,
      Avg30Holo = 5.01
    },
    Tcgplayer = {
      Updated = "2025-12-22T20:05:16.000Z",
      Unit = "USD",
      Normal = {
        LowPrice = 3.59,
        MidPrice = 8.45,
        HighPrice = 20,
        MarketPrice = 11.84,
        DirectLowPrice = nil
      }
    }
  }
}

CARD.HolographicStrength = Vector(1, 1, 1)
CARD.HolographicTexture = "card_engine/holo_rainbow_strong"
