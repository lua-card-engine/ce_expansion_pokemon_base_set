local CARD = CARD

CARD.Name = "pokemon_base_magneton"
CARD.Description = "pokemon_base_magneton_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_magneton"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
CARD.HolographicStrength = Vector(1, 1, 1)
CARD.HolographicTexture = "card_engine/holo_rainbow_strong"

CARD.Attributes = {
  Id = "base1-9",
  Rarity = "rare",
  Supertype = "Pokémon",
  Subtype = "Stage 1",
  Number = "9",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Keiji Kinebuchi",
  Types = { "Lightning" },
  HP = "60",
  Level = "28",
  EvolvesFrom = "Magnemite",
  EvolvesTo = { "Magnezone" },
  NationalPokedexNumber = 82,
  RetreatCost = { "Colorless" },
  ConvertedRetreatCost = 1,
  Attacks = {
    {
      Name = "Thunder Wave",
      Cost = { "Lightning", "Lightning", "Colorless" },
      ConvertedEnergyCost = 3,
      Damage = "30",
      Text = "Flip a coin. If heads, the Defending Pokémon is now Paralyzed."
    },
    {
      Name = "Selfdestruct",
      Cost = { "Lightning", "Lightning", "Colorless", "Colorless" },
      ConvertedEnergyCost = 4,
      Damage = "80",
      Text =
      "Does 20 damage to each Pokémon on each player's Bench. (Don't apply Weakness and Resistance for Benched Pokémon.) Magneton does 80 damage to itself."
    }
  },
  Weaknesses = {
    {
      Type = "Fighting",
      Value = "×2"
    }
  },
  ImageUrl = "https://images.pokemontcg.io/base1/9.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/9_hires.png"
}

if (not SERVER) then
  return
end
