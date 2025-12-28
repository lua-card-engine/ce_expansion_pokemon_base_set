local CARD = CARD

CARD.Name = "pokemon_base_metapod"
CARD.Description = "pokemon_base_metapod_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_metapod"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED

CARD.Attributes = {
  Id = "base1-54",
  Rarity = "common",
  Supertype = "Pokémon",
  Subtype = "Stage 1",
  Number = "54",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Ken Sugimori",
  Types = { "Grass" },
  HP = "70",
  Level = "21",
  EvolvesFrom = "Caterpie",
  EvolvesTo = { "Butterfree" },
  NationalPokedexNumber = 11,
  RetreatCost = { "Colorless", "Colorless" },
  ConvertedRetreatCost = 2,
  Attacks = {
    {
      Name = "Stiffen",
      Cost = { "Colorless", "Colorless" },
      ConvertedEnergyCost = 2,
      Damage = "",
      Text =
      "Flip a coin. If heads, prevent all damage done to Metapod during your opponent's next turn. (Any other effects of attacks still happen.)"
    },
    {
      Name = "Stun Spore",
      Cost = { "Grass", "Grass" },
      ConvertedEnergyCost = 2,
      Damage = "20",
      Text = "Flip a coin. If heads, the Defending Pokémon is now Paralyzed."
    }
  },
  Weaknesses = {
    {
      Type = "Fire",
      Value = "×2"
    }
  },
  ImageUrl = "https://images.pokemontcg.io/base1/54.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/54_hires.png"
}

if (not SERVER) then
  return
end
