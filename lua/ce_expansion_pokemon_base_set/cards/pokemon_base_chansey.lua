local CARD = CARD

CARD.Name = "pokemon_base_chansey"
CARD.Description = "pokemon_base_chansey_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_chansey"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
CARD.HolographicStrength = Vector(1, 1, 1)
CARD.HolographicTexture = "card_engine/holo_rainbow_strong"

CARD.Attributes = {
  Id = "base1-3",
  Rarity = "rare",
  Supertype = "Pokémon",
  Subtype = "Basic",
  Number = "3",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Ken Sugimori",
  Types = { "Colorless" },
  HP = "120",
  Level = "55",
  EvolvesTo = { "Blissey" },
  NationalPokedexNumber = 113,
  RetreatCost = { "Colorless" },
  ConvertedRetreatCost = 1,
  Attacks = {
    {
      Name = "Scrunch",
      Cost = { "Colorless", "Colorless" },
      ConvertedEnergyCost = 2,
      Damage = "",
      Text =
      "Flip a coin. If heads, prevent all damage done to Chansey during your opponent's next turn. (Any other effects of attacks still happen.)"
    },
    {
      Name = "Double-edge",
      Cost = { "Colorless", "Colorless", "Colorless", "Colorless" },
      ConvertedEnergyCost = 4,
      Damage = "80",
      Text = "Chansey does 80 damage to itself."
    }
  },
  Weaknesses = {
    {
      Type = "Fighting",
      Value = "×2"
    }
  },
  Resistances = {
    {
      Type = "Psychic",
      Value = "-30"
    }
  },
  ImageUrl = "https://images.pokemontcg.io/base1/3.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/3_hires.png"
}

if (not SERVER) then
  return
end
