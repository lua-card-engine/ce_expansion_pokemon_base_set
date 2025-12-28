local CARD = CARD

CARD.Name = "pokemon_base_raichu"
CARD.Description = "pokemon_base_raichu_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_raichu"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
CARD.HolographicStrength = Vector(1, 1, 1)
CARD.HolographicTexture = "card_engine/holo_rainbow_strong"

CARD.Attributes = {
  Id = "base1-14",
  Rarity = "rare",
  Supertype = "Pokémon",
  Subtype = "Stage 1",
  Number = "14",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Ken Sugimori",
  Types = { "Lightning" },
  HP = "80",
  Level = "40",
  EvolvesFrom = "Pikachu",
  NationalPokedexNumber = 26,
  RetreatCost = { "Colorless" },
  ConvertedRetreatCost = 1,
  Attacks = {
    {
      Name = "Agility",
      Cost = { "Lightning", "Colorless", "Colorless" },
      ConvertedEnergyCost = 3,
      Damage = "20",
      Text =
      "Flip a coin. If heads, during your opponent's next turn, prevent all effects of attacks, including damage, done to Raichu."
    },
    {
      Name = "Thunder",
      Cost = { "Lightning", "Lightning", "Lightning", "Colorless" },
      ConvertedEnergyCost = 4,
      Damage = "60",
      Text = "Flip a coin. If tails, Raichu does 30 damage to itself."
    }
  },
  Weaknesses = {
    {
      Type = "Fighting",
      Value = "×2"
    }
  },
  ImageUrl = "https://images.pokemontcg.io/base1/14.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/14_hires.png"
}

if (not SERVER) then
  return
end
