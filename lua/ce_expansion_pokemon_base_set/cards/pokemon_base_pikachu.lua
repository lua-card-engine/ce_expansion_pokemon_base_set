local CARD = CARD

CARD.Name = "pokemon_base_pikachu"
CARD.Description = "pokemon_base_pikachu_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_pikachu"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED

CARD.Attributes = {
  Id = "base1-58",
  Rarity = "common",
  Supertype = "Pokémon",
  Subtype = "Basic",
  Number = "58",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Mitsuhiro Arita",
  Types = { "Lightning" },
  HP = "40",
  Level = "12",
  EvolvesTo = { "Raichu" },
  NationalPokedexNumber = 25,
  RetreatCost = { "Colorless" },
  ConvertedRetreatCost = 1,
  Attacks = {
    {
      Name = "Gnaw",
      Cost = { "Colorless" },
      ConvertedEnergyCost = 1,
      Damage = "10",
      Text = ""
    },
    {
      Name = "Thunder Jolt",
      Cost = { "Lightning", "Colorless" },
      ConvertedEnergyCost = 2,
      Damage = "30",
      Text = "Flip a coin. If tails, Pikachu does 10 damage to itself."
    }
  },
  Weaknesses = {
    {
      Type = "Fighting",
      Value = "×2"
    }
  },
  ImageUrl = "https://images.pokemontcg.io/base1/58.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/58_hires.png"
}

if (not SERVER) then
  return
end
