local CARD = CARD

CARD.Name = "pokemon_base_tangela"
CARD.Description = "pokemon_base_tangela_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_tangela"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED

CARD.Attributes = {
  Id = "base1-66",
  Rarity = "common",
  Supertype = "Pokémon",
  Subtype = "Basic",
  Number = "66",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Mitsuhiro Arita",
  Types = { "Grass" },
  HP = "50",
  Level = "8",
  EvolvesTo = { "Tangrowth" },
  NationalPokedexNumber = 114,
  RetreatCost = { "Colorless", "Colorless" },
  ConvertedRetreatCost = 2,
  Attacks = {
    {
      Name = "Bind",
      Cost = { "Grass", "Colorless" },
      ConvertedEnergyCost = 2,
      Damage = "20",
      Text = "Flip a coin. If heads, the Defending Pokémon is now Paralyzed."
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
  ImageUrl = "https://images.pokemontcg.io/base1/66.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/66_hires.png"
}

if (not SERVER) then
  return
end
