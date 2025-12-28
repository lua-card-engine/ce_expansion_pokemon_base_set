local CARD = CARD

CARD.Name = "pokemon_base_growlithe"
CARD.Description = "pokemon_base_growlithe_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_growlithe"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED

CARD.Attributes = {
  Id = "base1-28",
  Rarity = "uncommon",
  Supertype = "Pokémon",
  Subtype = "Basic",
  Number = "28",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Ken Sugimori",
  Types = { "Fire" },
  HP = "60",
  Level = "18",
  EvolvesTo = { "Arcanine" },
  NationalPokedexNumber = 58,
  RetreatCost = { "Colorless" },
  ConvertedRetreatCost = 1,
  Attacks = {
    {
      Name = "Flare",
      Cost = { "Fire", "Colorless" },
      ConvertedEnergyCost = 2,
      Damage = "20",
      Text = ""
    }
  },
  Weaknesses = {
    {
      Type = "Water",
      Value = "×2"
    }
  },
  ImageUrl = "https://images.pokemontcg.io/base1/28.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/28_hires.png"
}

if (not SERVER) then
  return
end
