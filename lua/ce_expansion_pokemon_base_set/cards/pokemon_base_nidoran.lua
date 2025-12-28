local CARD = CARD

CARD.Name = "pokemon_base_nidoran"
CARD.Description = "pokemon_base_nidoran_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_nidoran"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED

CARD.Attributes = {
  Id = "base1-55",
  Rarity = "common",
  Supertype = "Pokémon",
  Subtype = "Basic",
  Number = "55",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Ken Sugimori",
  Types = { "Grass" },
  HP = "40",
  Level = "20",
  EvolvesTo = { "Nidorino" },
  NationalPokedexNumber = 32,
  RetreatCost = { "Colorless" },
  ConvertedRetreatCost = 1,
  Attacks = {
    {
      Name = "Horn Hazard",
      Cost = { "Grass" },
      ConvertedEnergyCost = 1,
      Damage = "30",
      Text = "Flip a coin. If tails, this attack does nothing."
    }
  },
  Weaknesses = {
    {
      Type = "Psychic",
      Value = "×2"
    }
  },
  ImageUrl = "https://images.pokemontcg.io/base1/55.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/55_hires.png"
}

if (not SERVER) then
  return
end
