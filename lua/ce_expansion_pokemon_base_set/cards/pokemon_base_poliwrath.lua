local CARD = CARD

CARD.Name = "pokemon_base_poliwrath"
CARD.Description = "pokemon_base_poliwrath_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_poliwrath"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
CARD.HolographicStrength = Vector(1, 1, 1)
CARD.HolographicTexture = "card_engine/holo_rainbow_strong"

CARD.Attributes = {
  Id = "base1-13",
  Rarity = "rare",
  Supertype = "Pokémon",
  Subtype = "Stage 2",
  Number = "13",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Ken Sugimori",
  Types = { "Water" },
  HP = "90",
  Level = "48",
  EvolvesFrom = "Poliwhirl",
  NationalPokedexNumber = 62,
  RetreatCost = { "Colorless", "Colorless", "Colorless" },
  ConvertedRetreatCost = 3,
  Attacks = {
    {
      Name = "Water Gun",
      Cost = { "Water", "Water", "Colorless" },
      ConvertedEnergyCost = 3,
      Damage = "30+",
      Text =
      "Does 30 damage plus 10 more damage for each Water Energy attached to Poliwrath but not used to pay for this attack's Energy cost. Extra Water Energy after the 2nd doesn't count."
    },
    {
      Name = "Whirlpool",
      Cost = { "Water", "Water", "Colorless", "Colorless" },
      ConvertedEnergyCost = 4,
      Damage = "40",
      Text = "If the Defending Pokémon has any Energy cards attached to it, choose 1 and discard it."
    }
  },
  Weaknesses = {
    {
      Type = "Grass",
      Value = "×2"
    }
  },
  ImageUrl = "https://images.pokemontcg.io/base1/13.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/13_hires.png"
}

if (not SERVER) then
  return
end
