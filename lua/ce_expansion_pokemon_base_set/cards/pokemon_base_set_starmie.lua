local CARD = CARD
CARD.Name = "ce_expansion_pokemon_base_set_starmie"
CARD.Description = "ce_expansion_pokemon_base_set_starmie_description"
CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_starmie"
CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
CARD.Attributes = {
  Category = "Pokemon",
  Id = "base1-64",
  Illustrator = "Keiji Kinebuchi",
  LocalId = "64",
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
    121
  },
  Hp = 60,
  Types = {
    "Water"
  },
  EvolveFrom = "Staryu",
  Stage = "Stage1",
  Attacks = {
    {
      Cost = {
        "Water",
        "Water"
      },
      Name = "Recover",
      Effect = "Discard 1 Energy card to Starmie in order to use this attack. Remove all damage counters from Starmie."
    },
    {
      Cost = {
        "Water",
        "Colorless",
        "Colorless"
      },
      Name = "Star Freeze",
      Effect = "Flip a coin. If heads, the Defending Pokémon is now Paralyzed.",
      Damage = 20
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
      Avg = 0.79,
      Low = 0.02,
      Trend = 2.22,
      Avg1 = 0.54,
      Avg7 = 4.01,
      Avg30 = 1.28,
      AvgHolo = nil,
      LowHolo = nil,
      TrendHolo = 0.26,
      Avg1Holo = 0.26,
      Avg7Holo = 0.26,
      Avg30Holo = 0.26
    },
    Tcgplayer = {
      Updated = "2025-12-22T20:05:16.000Z",
      Unit = "USD",
      Normal = {
        LowPrice = 0.1,
        MidPrice = 0.5,
        HighPrice = 501.5,
        MarketPrice = 0.59,
        DirectLowPrice = 0.31
      }
    }
  }
}
