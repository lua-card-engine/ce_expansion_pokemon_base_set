local CARD = CARD
CARD.Name = "ce_expansion_pokemon_base_set_ninetales"
CARD.Description = "ce_expansion_pokemon_base_set_ninetales_description"
CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_ninetales"
CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
CARD.Attributes = {
  Category = "Pokemon",
  Id = "base1-12",
  Illustrator = "Ken Sugimori",
  LocalId = "12",
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
    Holo = true,
    Normal = false,
    Reverse = false,
    WPromo = false
  },
  VariantsDetailed = {
    {
      Type = "holo",
      Subtype = "unlimited",
      Size = "standard"
    },
    {
      Type = "holo",
      Subtype = "shadowless",
      Size = "standard",
      Stamp = {
        "1st-edition"
      }
    },
    {
      Type = "holo",
      Subtype = "shadowless",
      Size = "standard"
    },
    {
      Type = "holo",
      Subtype = "1999-2000-copyright",
      Size = "standard"
    }
  },
  DexId = {
    38
  },
  Hp = 80,
  Types = {
    "Fire"
  },
  EvolveFrom = "Vulpix",
  Stage = "Stage1",
  Attacks = {
    {
      Cost = {
        "Colorless",
        "Colorless"
      },
      Name = "Lure",
      Effect = "If your opponent has any Benched Pokémon, choose 1 of them and switch it with the Defending Pokémon."
    },
    {
      Cost = {
        "Fire",
        "Fire",
        "Fire",
        "Fire"
      },
      Name = "Fire Blast",
      Effect = "Discard 1 Energy card attached to Ninetales in order to use this attack.",
      Damage = 80
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
      Avg = 12.78,
      Low = 0.7,
      Trend = 10.62,
      Avg1 = 2.1,
      Avg7 = 9.12,
      Avg30 = 12.31,
      AvgHolo = nil,
      LowHolo = nil,
      TrendHolo = 19.81,
      Avg1Holo = 11.14,
      Avg7Holo = 11.53,
      Avg30Holo = 12.92
    },
    Tcgplayer = {
      Updated = "2025-12-22T20:05:16.000Z",
      Unit = "USD",
      Holofoil = {
        LowPrice = 9.99,
        MidPrice = 16.99,
        HighPrice = 4320.99,
        MarketPrice = 22.8,
        DirectLowPrice = 7.54
      }
    }
  }
}

CARD.HolographicStrength = Vector(1, 1, 1)
CARD.HolographicTexture = "card_engine/holo_rainbow_strong"
