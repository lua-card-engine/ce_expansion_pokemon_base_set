local CARD = CARD
CARD.Name = "ce_expansion_pokemon_base_set_pidgeotto"
CARD.Description = "ce_expansion_pokemon_base_set_pidgeotto_description"
CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_pidgeotto"
CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
CARD.Attributes = {
  Category = "Pokemon",
  Id = "base1-22",
  Illustrator = "Ken Sugimori",
  LocalId = "22",
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
    17
  },
  Hp = 60,
  Types = {
    "Colorless"
  },
  EvolveFrom = "Pidgey",
  Stage = "Stage1",
  Attacks = {
    {
      Cost = {
        "Colorless",
        "Colorless"
      },
      Name = "Whirlwind",
      Effect =
      "If your opponent has any Benched Pokémon, he or she chooses 1 of them and switches it with the Defending Pokémon. (Do the damage before switching the Pokémon.)",
      Damage = 20
    },
    {
      Cost = {
        "Colorless",
        "Colorless",
        "Colorless"
      },
      Name = "Mirror Move",
      Effect =
      "If Pidgeotto was attacked last turn, do the final result of that attack on Pidgeotto to the Defending Pokémon."
    }
  },
  Weaknesses = {
    {
      Type = "Lightning",
      Value = "×2"
    }
  },
  Resistances = {
    {
      Type = "Fighting",
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
      Avg = 9.1,
      Low = 0.5,
      Trend = 12.47,
      Avg1 = 1.38,
      Avg7 = 9.94,
      Avg30 = 9.34,
      AvgHolo = nil,
      LowHolo = nil,
      TrendHolo = 6.29,
      Avg1Holo = 0.39,
      Avg7Holo = 7.23,
      Avg30Holo = 3.49
    },
    Tcgplayer = {
      Updated = "2025-12-22T20:05:16.000Z",
      Unit = "USD",
      Normal = {
        LowPrice = 3.67,
        MidPrice = 5.46,
        HighPrice = 46.3,
        MarketPrice = 9.5,
        DirectLowPrice = nil
      }
    }
  }
}

CARD.HolographicStrength = Vector(1, 1, 1)
CARD.HolographicTexture = "card_engine/holo_rainbow_strong"
