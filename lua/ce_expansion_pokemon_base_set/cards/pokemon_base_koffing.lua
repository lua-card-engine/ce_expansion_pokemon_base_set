local CARD = CARD

CARD.Name = "pokemon_base_koffing"
CARD.Description = "pokemon_base_koffing_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_koffing"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED

CARD.Attributes = {
  Id = "base1-51",
  Rarity = "common",
  Supertype = "Pokémon",
  Subtype = "Basic",
  Number = "51",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Mitsuhiro Arita",
  Types = { "Grass" },
  HP = "50",
  Level = "13",
  EvolvesTo = { "Weezing" },
  NationalPokedexNumber = 109,
  RetreatCost = { "Colorless" },
  ConvertedRetreatCost = 1,
  Attacks = {
    {
      Name = "Foul Gas",
      Cost = { "Grass", "Grass" },
      ConvertedEnergyCost = 2,
      Damage = "10",
      Text = "Flip a coin. If heads, the Defending Pokémon is now Poisoned; if tails, it is now Confused."
    }
  },
  Weaknesses = {
    {
      Type = "Psychic",
      Value = "×2"
    }
  },
  ImageUrl = "https://images.pokemontcg.io/base1/51.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/51_hires.png"
}

if (not SERVER) then
  return
end
