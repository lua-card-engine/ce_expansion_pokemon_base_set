local CARD = CARD

CARD.Name = "pokemon_base_nidorino"
CARD.Description = "pokemon_base_nidorino_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_nidorino"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED

CARD.Attributes = {
  Id = "base1-37",
  Rarity = "uncommon",
  Supertype = "Pokémon",
  Subtype = "Stage 1",
  Number = "37",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Mitsuhiro Arita",
  Types = { "Grass" },
  HP = "60",
  Level = "25",
  EvolvesFrom = "Nidoran♂",
  EvolvesTo = { "Nidoking" },
  NationalPokedexNumber = 33,
  RetreatCost = { "Colorless" },
  ConvertedRetreatCost = 1,
  Attacks = {
    {
      Name = "Double Kick",
      Cost = { "Grass", "Colorless", "Colorless" },
      ConvertedEnergyCost = 3,
      Damage = "30×",
      Text = "Flip 2 coins. This attack does 30 damage times the number of heads."
    },
    {
      Name = "Horn Drill",
      Cost = { "Grass", "Grass", "Colorless", "Colorless" },
      ConvertedEnergyCost = 4,
      Damage = "50",
      Text = ""
    }
  },
  Weaknesses = {
    {
      Type = "Psychic",
      Value = "×2"
    }
  },
  ImageUrl = "https://images.pokemontcg.io/base1/37.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/37_hires.png"
}

if (not SERVER) then
  return
end
