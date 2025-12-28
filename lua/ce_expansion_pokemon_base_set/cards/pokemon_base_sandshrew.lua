local CARD = CARD

CARD.Name = "pokemon_base_sandshrew"
CARD.Description = "pokemon_base_sandshrew_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_sandshrew"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED

CARD.Attributes = {
  Id = "base1-62",
  Rarity = "common",
  Supertype = "Pokémon",
  Subtype = "Basic",
  Number = "62",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Ken Sugimori",
  Types = { "Fighting" },
  HP = "40",
  Level = "12",
  EvolvesTo = { "Sandslash" },
  NationalPokedexNumber = 27,
  RetreatCost = { "Colorless" },
  ConvertedRetreatCost = 1,
  Attacks = {
    {
      Name = "Sand-attack",
      Cost = { "Fighting" },
      ConvertedEnergyCost = 1,
      Damage = "10",
      Text =
      "If the Defending Pokémon tries to attack during your opponent's next turn, your opponent flips a coin. If tails, that attack does nothing."
    }
  },
  Weaknesses = {
    {
      Type = "Grass",
      Value = "×2"
    }
  },
  Resistances = {
    {
      Type = "Lightning",
      Value = "-30"
    }
  },
  ImageUrl = "https://images.pokemontcg.io/base1/62.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/62_hires.png"
}

if (not SERVER) then
  return
end
