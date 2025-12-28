local CARD = CARD

CARD.Name = "pokemon_base_seel"
CARD.Description = "pokemon_base_seel_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_seel"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED

CARD.Attributes = {
  Id = "base1-41",
  Rarity = "uncommon",
  Supertype = "Pokémon",
  Subtype = "Basic",
  Number = "41",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Ken Sugimori",
  Types = { "Water" },
  HP = "60",
  Level = "12",
  EvolvesTo = { "Dewgong" },
  NationalPokedexNumber = 86,
  RetreatCost = { "Colorless" },
  ConvertedRetreatCost = 1,
  Attacks = {
    {
      Name = "Headbutt",
      Cost = { "Water" },
      ConvertedEnergyCost = 1,
      Damage = "10",
      Text = ""
    }
  },
  Weaknesses = {
    {
      Type = "Lightning",
      Value = "×2"
    }
  },
  ImageUrl = "https://images.pokemontcg.io/base1/41.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/41_hires.png"
}

if (not SERVER) then
  return
end
