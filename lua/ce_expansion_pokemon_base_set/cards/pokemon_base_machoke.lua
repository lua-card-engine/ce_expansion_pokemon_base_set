local CARD = CARD

CARD.Name = "pokemon_base_machoke"
CARD.Description = "pokemon_base_machoke_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_machoke"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED

CARD.Attributes = {
  Id = "base1-34",
  Rarity = "uncommon",
  Supertype = "Pokémon",
  Subtype = "Stage 1",
  Number = "34",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Ken Sugimori",
  Types = { "Fighting" },
  HP = "80",
  Level = "40",
  EvolvesFrom = "Machop",
  EvolvesTo = { "Machamp" },
  NationalPokedexNumber = 67,
  RetreatCost = { "Colorless", "Colorless", "Colorless" },
  ConvertedRetreatCost = 3,
  Attacks = {
    {
      Name = "Karate Chop",
      Cost = { "Fighting", "Fighting", "Colorless" },
      ConvertedEnergyCost = 3,
      Damage = "50-",
      Text = "Does 50 damage minus 10 for each damage counter on Machoke."
    },
    {
      Name = "Submission",
      Cost = { "Fighting", "Fighting", "Colorless", "Colorless" },
      ConvertedEnergyCost = 4,
      Damage = "60",
      Text = "Machoke does 20 damage to itself."
    }
  },
  Weaknesses = {
    {
      Type = "Psychic",
      Value = "×2"
    }
  },
  ImageUrl = "https://images.pokemontcg.io/base1/34.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/34_hires.png"
}

if (not SERVER) then
  return
end
