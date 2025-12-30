local CARD = CARD
CARD.Name = "ce_expansion_pokemon_base_set_wartortle"
CARD.Description = "ce_expansion_pokemon_base_set_wartortle_description"
CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_wartortle"
CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
CARD.Attributes = {
  Category = "Pokemon",
  Id = "base1-42",
  Illustrator = "Ken Sugimori",
  LocalId = "42",
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
    8
  },
  Hp = 70,
  Types = {
    "Water"
  },
  EvolveFrom = "Squirtle",
  Stage = "Stage1",
  Attacks = {
    {
      Cost = {
        "Water",
        "Colorless"
      },
      Name = "Withdraw",
      Effect =
      "Flip a coin. If heads, prevent all damage done to Wartortle during your opponent's next turn. (Any other effects of attacks still happen.)"
    },
    {
      Cost = {
        "Water",
        "Colorless",
        "Colorless"
      },
      Name = "Bite",
      Damage = 40
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
      Avg = 6.84,
      Low = 0.02,
      Trend = 4.64,
      Avg1 = 2.69,
      Avg7 = 8.12,
      Avg30 = 7.61,
      AvgHolo = nil,
      LowHolo = nil,
      TrendHolo = 24.12,
      Avg1Holo = 1.49,
      Avg7Holo = 21.37,
      Avg30Holo = 16.98
    },
    Tcgplayer = {
      Updated = "2025-12-22T20:05:16.000Z",
      Unit = "USD",
      Normal = {
        LowPrice = 0.25,
        MidPrice = 1.93,
        HighPrice = 6.77,
        MarketPrice = 3.31,
        DirectLowPrice = 1.7
      }
    }
  }
}
