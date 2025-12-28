local CARD = CARD

CARD.Name = "pokemon_base_poliwhirl"
CARD.Description = "pokemon_base_poliwhirl_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_poliwhirl"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED

CARD.Attributes = {
  Id = "base1-38",
  Rarity = "uncommon",
  Supertype = "Pokémon",
  Subtype = "Stage 1",
  Number = "38",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Ken Sugimori",
  Types = { "Water" },
  HP = "60",
  Level = "28",
  EvolvesFrom = "Poliwag",
  EvolvesTo = { "Poliwrath", "Politoed" },
  NationalPokedexNumber = 61,
  RetreatCost = { "Colorless" },
  ConvertedRetreatCost = 1,
  Attacks = {
    {
      Name = "Amnesia",
      Cost = { "Water", "Water" },
      ConvertedEnergyCost = 2,
      Damage = "",
      Text = "Choose 1 of defenders attacks. Defender cannot use that attack next turn."
    },
    {
      Name = "Doubleslap",
      Cost = { "Water", "Water", "Colorless" },
      ConvertedEnergyCost = 3,
      Damage = "30×",
      Text = "Flip 2 coins. This attack does 30 damage times number of heads."
    }
  },
  Weaknesses = {
    {
      Type = "Grass",
      Value = "×2"
    }
  },
  ImageUrl = "https://images.pokemontcg.io/base1/38.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/38_hires.png"
}

if (not SERVER) then
  return
end
