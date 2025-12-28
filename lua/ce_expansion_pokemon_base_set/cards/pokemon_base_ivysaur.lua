local CARD = CARD

CARD.Name = "pokemon_base_ivysaur"
CARD.Description = "pokemon_base_ivysaur_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_ivysaur"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED

CARD.Attributes = {
  Id = "base1-30",
  Rarity = "uncommon",
  Supertype = "Pokémon",
  Subtype = "Stage 1",
  Number = "30",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Ken Sugimori",
  Types = { "Grass" },
  HP = "60",
  Level = "20",
  EvolvesFrom = "Barboach",
  EvolvesTo = { "Venusaur" },
  NationalPokedexNumber = 2,
  RetreatCost = { "Colorless" },
  ConvertedRetreatCost = 1,
  Attacks = {
    {
      Name = "Vine Whip",
      Cost = { "Grass", "Colorless", "Colorless" },
      ConvertedEnergyCost = 3,
      Damage = "30",
      Text = ""
    },
    {
      Name = "Poisonpowder",
      Cost = { "Grass", "Grass", "Grass" },
      ConvertedEnergyCost = 3,
      Damage = "30",
      Text = "The Defending Pokémon is now Poisoned."
    }
  },
  Weaknesses = {
    {
      Type = "Fire",
      Value = "×2"
    }
  },
  ImageUrl = "https://images.pokemontcg.io/base1/30.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/30_hires.png"
}

if (not SERVER) then
  return
end
