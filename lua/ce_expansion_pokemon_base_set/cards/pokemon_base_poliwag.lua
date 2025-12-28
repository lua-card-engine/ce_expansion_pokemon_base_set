local CARD = CARD

CARD.Name = "pokemon_base_poliwag"
CARD.Description = "pokemon_base_poliwag_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_poliwag"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED

CARD.Attributes = {
  Id = "base1-59",
  Rarity = "common",
  Supertype = "Pokémon",
  Subtype = "Basic",
  Number = "59",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Ken Sugimori",
  Types = { "Water" },
  HP = "40",
  Level = "13",
  EvolvesTo = { "Poliwhirl" },
  NationalPokedexNumber = 60,
  RetreatCost = { "Colorless" },
  ConvertedRetreatCost = 1,
  Attacks = {
    {
      Name = "Water Gun",
      Cost = { "Water" },
      ConvertedEnergyCost = 1,
      Damage = "10+",
      Text =
      "Does 10 damage plus 10 damage for each Energy attached to Poliwag but not used to pay for this attack's Energy cost. Extra Energy after the end don't count."
    }
  },
  Weaknesses = {
    {
      Type = "Grass",
      Value = "×2"
    }
  },
  ImageUrl = "https://images.pokemontcg.io/base1/59.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/59_hires.png"
}

if (not SERVER) then
  return
end
