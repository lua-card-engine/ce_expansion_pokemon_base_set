local CARD = CARD

CARD.Name = "pokemon_base_caterpie"
CARD.Description = "pokemon_base_caterpie_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_caterpie"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED

CARD.Attributes = {
  Id = "base1-45",
  Rarity = "common",
  Supertype = "Pokémon",
  Subtype = "Basic",
  Number = "45",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Ken Sugimori",
  Types = { "Grass" },
  HP = "40",
  Level = "13",
  EvolvesTo = { "Metapod" },
  NationalPokedexNumber = 10,
  RetreatCost = { "Colorless" },
  ConvertedRetreatCost = 1,
  Attacks = {
    {
      Name = "String Shot",
      Cost = { "Grass" },
      ConvertedEnergyCost = 1,
      Damage = "10",
      Text = "Flip a coin. If heads, the Defending Pokémon is now Paralyzed."
    }
  },
  Weaknesses = {
    {
      Type = "Fire",
      Value = "×2"
    }
  },
  ImageUrl = "https://images.pokemontcg.io/base1/45.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/45_hires.png"
}

if (not SERVER) then
  return
end
