local CARD = CARD

CARD.Name = "pokemon_base_voltorb"
CARD.Description = "pokemon_base_voltorb_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_voltorb"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED

CARD.Attributes = {
  Id = "base1-67",
  Rarity = "common",
  Supertype = "Pokémon",
  Subtype = "Basic",
  Number = "67",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Keiji Kinebuchi",
  Types = { "Lightning" },
  HP = "40",
  Level = "10",
  EvolvesTo = { "Electrode" },
  NationalPokedexNumber = 100,
  RetreatCost = { "Colorless" },
  ConvertedRetreatCost = 1,
  Attacks = {
    {
      Name = "Tackle",
      Cost = { "Colorless" },
      ConvertedEnergyCost = 1,
      Damage = "10",
      Text = ""
    }
  },
  Weaknesses = {
    {
      Type = "Fighting",
      Value = "×2"
    }
  },
  ImageUrl = "https://images.pokemontcg.io/base1/67.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/67_hires.png"
}

if (not SERVER) then
  return
end
