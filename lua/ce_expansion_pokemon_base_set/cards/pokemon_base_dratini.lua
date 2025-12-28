local CARD = CARD

CARD.Name = "pokemon_base_dratini"
CARD.Description = "pokemon_base_dratini_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_dratini"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED

CARD.Attributes = {
  Id = "base1-26",
  Rarity = "uncommon",
  Supertype = "Pokémon",
  Subtype = "Basic",
  Number = "26",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Ken Sugimori",
  Types = { "Colorless" },
  HP = "40",
  Level = "10",
  EvolvesTo = { "Dragonair" },
  NationalPokedexNumber = 147,
  RetreatCost = { "Colorless" },
  ConvertedRetreatCost = 1,
  Attacks = {
    {
      Name = "Pound",
      Cost = { "Colorless" },
      ConvertedEnergyCost = 1,
      Damage = "10",
      Text = ""
    }
  },
  Resistances = {
    {
      Type = "Psychic",
      Value = "-30"
    }
  },
  ImageUrl = "https://images.pokemontcg.io/base1/26.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/26_hires.png"
}

if (not SERVER) then
  return
end
