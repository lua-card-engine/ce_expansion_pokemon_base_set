local CARD = CARD

CARD.Name = "pokemon_base_vulpix"
CARD.Description = "pokemon_base_vulpix_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_vulpix"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED

CARD.Attributes = {
  Id = "base1-68",
  Rarity = "common",
  Supertype = "Pokémon",
  Subtype = "Basic",
  Number = "68",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Ken Sugimori",
  Types = { "Fire" },
  HP = "50",
  Level = "11",
  EvolvesTo = { "Ninetales" },
  NationalPokedexNumber = 37,
  RetreatCost = { "Colorless" },
  ConvertedRetreatCost = 1,
  Attacks = {
    {
      Name = "Confuse Ray",
      Cost = { "Fire", "Fire" },
      ConvertedEnergyCost = 2,
      Damage = "10",
      Text = "Flip a coin. If heads, the Defending Pokémon is now Confused."
    }
  },
  Weaknesses = {
    {
      Type = "Water",
      Value = "×2"
    }
  },
  ImageUrl = "https://images.pokemontcg.io/base1/68.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/68_hires.png"
}

if (not SERVER) then
  return
end
