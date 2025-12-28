local CARD = CARD

CARD.Name = "pokemon_base_magikarp"
CARD.Description = "pokemon_base_magikarp_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_magikarp"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED

CARD.Attributes = {
  Id = "base1-35",
  Rarity = "uncommon",
  Supertype = "Pokémon",
  Subtype = "Basic",
  Number = "35",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Mitsuhiro Arita",
  Types = { "Water" },
  HP = "30",
  Level = "8",
  EvolvesTo = { "Gyarados" },
  NationalPokedexNumber = 129,
  RetreatCost = { "Colorless" },
  ConvertedRetreatCost = 1,
  Attacks = {
    {
      Name = "Tackle",
      Cost = { "Colorless" },
      ConvertedEnergyCost = 1,
      Damage = "10",
      Text = ""
    },
    {
      Name = "Flail",
      Cost = { "Water" },
      ConvertedEnergyCost = 1,
      Damage = "10×",
      Text = "Does 10 damage times number of damage counters on Magikarp."
    }
  },
  Weaknesses = {
    {
      Type = "Lightning",
      Value = "×2"
    }
  },
  ImageUrl = "https://images.pokemontcg.io/base1/35.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/35_hires.png"
}

if (not SERVER) then
  return
end
