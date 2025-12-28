local CARD = CARD

CARD.Name = "pokemon_base_raticate"
CARD.Description = "pokemon_base_raticate_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_raticate"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED

CARD.Attributes = {
  Id = "base1-40",
  Rarity = "uncommon",
  Supertype = "Pokémon",
  Subtype = "Stage 1",
  Number = "40",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Ken Sugimori",
  Types = { "Colorless" },
  HP = "60",
  Level = "41",
  EvolvesFrom = "Poochyena",
  NationalPokedexNumber = 20,
  RetreatCost = { "Colorless" },
  ConvertedRetreatCost = 1,
  Attacks = {
    {
      Name = "Bite",
      Cost = { "Colorless" },
      ConvertedEnergyCost = 1,
      Damage = "20",
      Text = ""
    },
    {
      Name = "Super Fang",
      Cost = { "Colorless", "Colorless", "Colorless" },
      ConvertedEnergyCost = 3,
      Damage = "?",
      Text =
      "Does damage to the Defending Pokémon equal to half the Defending Pokémon's remaining HP (rounded up to the nearest 10)."
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
  ImageUrl = "https://images.pokemontcg.io/base1/40.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/40_hires.png"
}

if (not SERVER) then
  return
end
