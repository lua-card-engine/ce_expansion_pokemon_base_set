local CARD = CARD

CARD.Name = "pokemon_base_electabuzz"
CARD.Description = "pokemon_base_electabuzz_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_electabuzz"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED

CARD.Attributes = {
  Id = "base1-20",
  Rarity = "rare",
  Supertype = "Pokémon",
  Subtype = "Basic",
  Number = "20",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Ken Sugimori",
  Types = { "Lightning" },
  HP = "70",
  Level = "35",
  EvolvesTo = { "Electivire" },
  NationalPokedexNumber = 125,
  RetreatCost = { "Colorless", "Colorless" },
  ConvertedRetreatCost = 2,
  Attacks = {
    {
      Name = "Thundershock",
      Cost = { "Lightning" },
      ConvertedEnergyCost = 1,
      Damage = "10",
      Text = "Flip a coin. If heads, the Defending Pokémon is now Paralyzed."
    },
    {
      Name = "Thunderpunch",
      Cost = { "Lightning", "Colorless" },
      ConvertedEnergyCost = 2,
      Damage = "30+",
      Text =
      "Flip a coin. If heads, this attack does 30 damage plus 10 more damage; if tails, this attack does 30 damage and Electabuzz does 10 damage to itself."
    }
  },
  Weaknesses = {
    {
      Type = "Fighting",
      Value = "×2"
    }
  },
  ImageUrl = "https://images.pokemontcg.io/base1/20.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/20_hires.png"
}

if (not SERVER) then
  return
end
