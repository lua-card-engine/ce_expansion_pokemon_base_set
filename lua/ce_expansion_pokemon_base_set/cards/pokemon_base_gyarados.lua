local CARD = CARD

CARD.Name = "pokemon_base_gyarados"
CARD.Description = "pokemon_base_gyarados_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_gyarados"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
CARD.HolographicStrength = Vector(1, 1, 1)
CARD.HolographicTexture = "card_engine/holo_rainbow_strong"

CARD.Attributes = {
  Id = "base1-6",
  Rarity = "rare",
  Supertype = "Pokémon",
  Subtype = "Stage 1",
  Number = "6",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Mitsuhiro Arita",
  Types = { "Water" },
  HP = "100",
  Level = "41",
  EvolvesFrom = "Magikarp",
  NationalPokedexNumber = 130,
  RetreatCost = { "Colorless", "Colorless", "Colorless" },
  ConvertedRetreatCost = 3,
  Attacks = {
    {
      Name = "Dragon Rage",
      Cost = { "Water", "Water", "Water" },
      ConvertedEnergyCost = 3,
      Damage = "50",
      Text = ""
    },
    {
      Name = "Bubblebeam",
      Cost = { "Water", "Water", "Water", "Water" },
      ConvertedEnergyCost = 4,
      Damage = "40",
      Text = "Flip a coin. If heads, the Defending Pokémon is now Paralyzed."
    }
  },
  Weaknesses = {
    {
      Type = "Grass",
      Value = "×2"
    }
  },
  Resistances = {
    {
      Type = "Fighting",
      Value = "-30"
    }
  },
  ImageUrl = "https://images.pokemontcg.io/base1/6.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/6_hires.png"
}

if (not SERVER) then
  return
end
