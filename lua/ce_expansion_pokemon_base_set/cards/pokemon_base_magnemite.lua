local CARD = CARD

CARD.Name = "pokemon_base_magnemite"
CARD.Description = "pokemon_base_magnemite_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_magnemite"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED

CARD.Attributes = {
  Id = "base1-53",
  Rarity = "common",
  Supertype = "Pokémon",
  Subtype = "Basic",
  Number = "53",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Keiji Kinebuchi",
  Types = { "Lightning" },
  HP = "40",
  Level = "13",
  EvolvesTo = { "Magneton" },
  NationalPokedexNumber = 81,
  RetreatCost = { "Colorless" },
  ConvertedRetreatCost = 1,
  Attacks = {
    {
      Name = "Thunder Wave",
      Cost = { "Lightning" },
      ConvertedEnergyCost = 1,
      Damage = "10",
      Text = "Flip a coin. If heads, the Defending Pokémon is now Paralyzed."
    },
    {
      Name = "Selfdestruct",
      Cost = { "Lightning", "Colorless" },
      ConvertedEnergyCost = 2,
      Damage = "40",
      Text =
      "Does 10 damage to each Pokémon on each player's Bench. (Don't apply Weakness and Resistance for Benched Pokémon.) Magnemite does 40 damage to itself."
    }
  },
  Weaknesses = {
    {
      Type = "Fighting",
      Value = "×2"
    }
  },
  ImageUrl = "https://images.pokemontcg.io/base1/53.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/53_hires.png"
}

if (not SERVER) then
  return
end
