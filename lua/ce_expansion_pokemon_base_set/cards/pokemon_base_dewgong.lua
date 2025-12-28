local CARD = CARD

CARD.Name = "pokemon_base_dewgong"
CARD.Description = "pokemon_base_dewgong_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_dewgong"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED

CARD.Attributes = {
  Id = "base1-25",
  Rarity = "uncommon",
  Supertype = "Pokémon",
  Subtype = "Stage 1",
  Number = "25",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Mitsuhiro Arita",
  Types = { "Water" },
  HP = "80",
  Level = "42",
  EvolvesFrom = "Seel",
  NationalPokedexNumber = 87,
  RetreatCost = { "Colorless", "Colorless", "Colorless" },
  ConvertedRetreatCost = 3,
  Attacks = {
    {
      Name = "Aurora Beam",
      Cost = { "Water", "Water", "Colorless" },
      ConvertedEnergyCost = 3,
      Damage = "50",
      Text = ""
    },
    {
      Name = "Ice Beam",
      Cost = { "Water", "Water", "Colorless", "Colorless" },
      ConvertedEnergyCost = 4,
      Damage = "30",
      Text = "Flip a coin. If heads, the Defending Pokémon is now Paralyzed."
    }
  },
  Weaknesses = {
    {
      Type = "Lightning",
      Value = "×2"
    }
  },
  ImageUrl = "https://images.pokemontcg.io/base1/25.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/25_hires.png"
}

if (not SERVER) then
  return
end
