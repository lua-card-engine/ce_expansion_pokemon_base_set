local CARD = CARD
CARD.Name = "ce_expansion_pokemon_base_set_raticate"
CARD.Description = "ce_expansion_pokemon_base_set_raticate_description"
CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_raticate"
CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
CARD.Attributes = {
  Category = "Pokemon",
  Id = "base1-40",
  Illustrator = "Ken Sugimori",
  LocalId = "40",
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
    20
  },
  Hp = 60,
  Types = {
    "Colorless"
  },
  EvolveFrom = "Poochyena",
  Stage = "Stage1",
  Attacks = {
    {
      Cost = {
        "Colorless"
      },
      Name = "Bite",
      Damage = 20
    },
    {
      Cost = {
        "Colorless",
        "Colorless",
        "Colorless"
      },
      Name = "Super Fang",
      Effect =
      "Does damage to the Defending Pokémon equal to half the Defending Pokémon's remaining HP (rounded up to the nearest 10).",
      Damage = "?"
    }
  },
  Weaknesses = {
    {
      Type = "Fighting",
      Value = "×2"
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
      Avg = 3.53,
      Low = 0.03,
      Trend = 3.7,
      Avg1 = 4.64,
      Avg7 = 3.68,
      Avg30 = 3.56,
      AvgHolo = nil,
      LowHolo = nil,
      TrendHolo = 0.5,
      Avg1Holo = 0.5,
      Avg7Holo = 0.56,
      Avg30Holo = 0.56
    },
    Tcgplayer = {
      Updated = "2025-12-22T20:05:16.000Z",
      Unit = "USD",
      Normal = {
        LowPrice = 0.25,
        MidPrice = 1.5,
        HighPrice = 21.11,
        MarketPrice = 1.92,
        DirectLowPrice = 1.11
      }
    }
  }
}
