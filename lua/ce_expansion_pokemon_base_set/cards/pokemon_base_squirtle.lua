local CARD = CARD

CARD.Name = "pokemon_base_squirtle"
CARD.Description = "pokemon_base_squirtle_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_squirtle"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED

CARD.Attributes = {
  Id = "base1-63",
  Rarity = "common",
  Supertype = "Pokémon",
  Subtype = "Basic",
  Number = "63",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Mitsuhiro Arita",
  Types = { "Water" },
  HP = "40",
  Level = "8",
  EvolvesTo = { "Wartortle" },
  NationalPokedexNumber = 7,
  RetreatCost = { "Colorless" },
  ConvertedRetreatCost = 1,
  Attacks = {
    {
      Name = "Bubble",
      Cost = { "Water" },
      ConvertedEnergyCost = 1,
      Damage = "10",
      Text = "Flip a coin. If heads, the Defending Pokémon is now Paralyzed."
    },
    {
      Name = "Withdraw",
      Cost = { "Water", "Colorless" },
      ConvertedEnergyCost = 2,
      Damage = "",
      Text =
      "Flip a coin. If heads, prevent all damage done to Squirtle during your opponent's next turn. (Any other effects of attacks still happen.)"
    }
  },
  Weaknesses = {
    {
      Type = "Lightning",
      Value = "×2"
    }
  },
  ImageUrl = "https://images.pokemontcg.io/base1/63.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/63_hires.png"
}

if (not SERVER) then
  return
end
