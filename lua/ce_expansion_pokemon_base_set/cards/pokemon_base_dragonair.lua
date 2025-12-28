local CARD = CARD

CARD.Name = "pokemon_base_dragonair"
CARD.Description = "pokemon_base_dragonair_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_dragonair"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED

CARD.Attributes = {
  Id = "base1-18",
  Rarity = "rare",
  Supertype = "Pokémon",
  Subtype = "Stage 1",
  Number = "18",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Mitsuhiro Arita",
  Types = { "Colorless" },
  HP = "80",
  Level = "33",
  EvolvesFrom = "Dratini",
  EvolvesTo = { "Dragonite" },
  NationalPokedexNumber = 148,
  RetreatCost = { "Colorless", "Colorless" },
  ConvertedRetreatCost = 2,
  Attacks = {
    {
      Name = "Slam",
      Cost = { "Colorless", "Colorless", "Colorless" },
      ConvertedEnergyCost = 3,
      Damage = "30×",
      Text = "Flip 2 coins. This attack does 30 damage times the number of heads."
    },
    {
      Name = "Hyper Beam",
      Cost = { "Colorless", "Colorless", "Colorless", "Colorless" },
      ConvertedEnergyCost = 4,
      Damage = "20",
      Text = "If the Defending Pokémon has any Energy cards attached to it, choose 1 of them and discard it."
    }
  },
  Resistances = {
    {
      Type = "Psychic",
      Value = "-30"
    }
  },
  ImageUrl = "https://images.pokemontcg.io/base1/18.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/18_hires.png"
}

if (not SERVER) then
  return
end
