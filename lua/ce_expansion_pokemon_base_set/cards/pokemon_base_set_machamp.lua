local CARD = CARD
CARD.Name = "ce_expansion_pokemon_base_set_machamp"
CARD.Description = "ce_expansion_pokemon_base_set_machamp_description"
CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_machamp"
CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
CARD.Attributes = {
  Category = "Pokemon",
  Id = "base1-8",
  Illustrator = "Ken Sugimori",
  LocalId = "8",
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
    68
  },
  Hp = 100,
  Types = {
    "Fighting"
  },
  EvolveFrom = "Machoke",
  Stage = "Stage2",
  Abilities = {
    {
      Type = "Pokemon Power",
      Name = "Strikes Back",
      Effect =
      "Whenever your opponent's attack damages Machamp (even if Machamp is Knoced Out), this power does 10 damage to attacking Pokémon. (Don't apply Weakness and Resistance.) This power can't be used if Machamp is already Asleep, Confused, or Paralyzed when your opponent attacks."
    }
  },
  Attacks = {
    {
      Cost = {
        "Fighting",
        "Fighting",
        "Fighting",
        "Colorless"
      },
      Name = "Seismic Toss",
      Damage = 60
    }
  },
  Weaknesses = {
    {
      Type = "Psychic",
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
      Avg = 9.84,
      Low = 0.9,
      Trend = 12.36,
      Avg1 = 1.56,
      Avg7 = 13.41,
      Avg30 = 9.8,
      AvgHolo = nil,
      LowHolo = nil,
      TrendHolo = 9.03,
      Avg1Holo = 10.64,
      Avg7Holo = 8.54,
      Avg30Holo = 8.47
    },
    Tcgplayer = nil
  }
}

CARD.HolographicStrength = Vector(1, 1, 1)
CARD.HolographicTexture = "card_engine/holo_rainbow_strong"
