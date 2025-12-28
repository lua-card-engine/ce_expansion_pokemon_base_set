local CARD = CARD

CARD.Name = "pokemon_base_staryu"
CARD.Description = "pokemon_base_staryu_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_staryu"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED

CARD.Attributes = {
  Id = "base1-65",
  Rarity = "common",
  Supertype = "Pokémon",
  Subtype = "Basic",
  Number = "65",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Keiji Kinebuchi",
  Types = { "Water" },
  HP = "40",
  Level = "15",
  EvolvesTo = { "Starmie" },
  NationalPokedexNumber = 120,
  RetreatCost = { "Colorless" },
  ConvertedRetreatCost = 1,
  Attacks = {
    {
      Name = "Slap",
      Cost = { "Water" },
      ConvertedEnergyCost = 1,
      Damage = "20",
      Text = ""
    }
  },
  Weaknesses = {
    {
      Type = "Lightning",
      Value = "×2"
    }
  },
  ImageUrl = "https://images.pokemontcg.io/base1/65.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/65_hires.png"
}

if (not SERVER) then
  return
end
