local CARD = CARD

CARD.Name = "pokemon_base_wartortle"
CARD.Description = "pokemon_base_wartortle_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_wartortle"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED

CARD.Attributes = {
  Id = "base1-42",
  Rarity = "uncommon",
  Supertype = "Pokémon",
  Subtype = "Stage 1",
  Number = "42",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Ken Sugimori",
  Types = { "Water" },
  HP = "70",
  Level = "22",
  EvolvesFrom = "Squirtle",
  EvolvesTo = { "Blastoise" },
  NationalPokedexNumber = 8,
  RetreatCost = { "Colorless" },
  ConvertedRetreatCost = 1,
  Attacks = {
    {
      Name = "Withdraw",
      Cost = { "Water", "Colorless" },
      ConvertedEnergyCost = 2,
      Damage = "",
      Text =
      "Flip a coin. If heads, prevent all damage done to Wartortle during your opponent's next turn. (Any other effects of attacks still happen.)"
    },
    {
      Name = "Bite",
      Cost = { "Water", "Colorless", "Colorless" },
      ConvertedEnergyCost = 3,
      Damage = "40",
      Text = ""
    }
  },
  Weaknesses = {
    {
      Type = "Lightning",
      Value = "×2"
    }
  },
  ImageUrl = "https://images.pokemontcg.io/base1/42.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/42_hires.png"
}

if (not SERVER) then
  return
end
