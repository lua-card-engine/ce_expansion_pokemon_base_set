local CARD = CARD

CARD.Name = "pokemon_base_weedle"
CARD.Description = "pokemon_base_weedle_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_weedle"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED

CARD.Attributes = {
  Id = "base1-69",
  Rarity = "common",
  Supertype = "Pokémon",
  Subtype = "Basic",
  Number = "69",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Mitsuhiro Arita",
  Types = { "Grass" },
  HP = "40",
  Level = "12",
  EvolvesTo = { "Kakuna" },
  NationalPokedexNumber = 13,
  RetreatCost = { "Colorless" },
  ConvertedRetreatCost = 1,
  Attacks = {
    {
      Name = "Poison Sting",
      Cost = { "Grass" },
      ConvertedEnergyCost = 1,
      Damage = "10",
      Text = "Flip a coin. If heads, Defending Pokémon is now Poisoned."
    }
  },
  Weaknesses = {
    {
      Type = "Fire",
      Value = "×2"
    }
  },
  ImageUrl = "https://images.pokemontcg.io/base1/69.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/69_hires.png"
}

if (not SERVER) then
  return
end
