local CARD = CARD

CARD.Name = "pokemon_base_kakuna"
CARD.Description = "pokemon_base_kakuna_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_kakuna"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED

CARD.Attributes = {
  Id = "base1-33",
  Rarity = "uncommon",
  Supertype = "Pokémon",
  Subtype = "Stage 1",
  Number = "33",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Keiji Kinebuchi",
  Types = { "Grass" },
  HP = "80",
  Level = "23",
  EvolvesFrom = "Weedle",
  EvolvesTo = { "Beedrill" },
  NationalPokedexNumber = 14,
  RetreatCost = { "Colorless", "Colorless" },
  ConvertedRetreatCost = 2,
  Attacks = {
    {
      Name = "Stiffen",
      Cost = { "Colorless", "Colorless" },
      ConvertedEnergyCost = 2,
      Damage = "",
      Text =
      "Flip a coin. If heads, prevent all damage done to Kakuna during your opponent's next turn. (Any other effects of attacks still happen.)"
    },
    {
      Name = "Poisonpowder",
      Cost = { "Grass", "Grass" },
      ConvertedEnergyCost = 2,
      Damage = "20",
      Text = "Flip a coin. If heads, the Defending Pokémon is now Poisoned."
    }
  },
  Weaknesses = {
    {
      Type = "Fire",
      Value = "×2"
    }
  },
  ImageUrl = "https://images.pokemontcg.io/base1/33.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/33_hires.png"
}

if (not SERVER) then
  return
end
