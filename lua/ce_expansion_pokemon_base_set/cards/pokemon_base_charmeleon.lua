local CARD = CARD

CARD.Name = "pokemon_base_charmeleon"
CARD.Description = "pokemon_base_charmeleon_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_charmeleon"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED

CARD.Attributes = {
  Id = "base1-24",
  Rarity = "uncommon",
  Supertype = "Pokémon",
  Subtype = "Stage 1",
  Number = "24",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Mitsuhiro Arita",
  Types = { "Fire" },
  HP = "80",
  Level = "32",
  EvolvesFrom = "Charmander",
  EvolvesTo = { "Charizard" },
  NationalPokedexNumber = 5,
  RetreatCost = { "Colorless" },
  ConvertedRetreatCost = 1,
  Attacks = {
    {
      Name = "Slash",
      Cost = { "Colorless", "Colorless", "Colorless" },
      ConvertedEnergyCost = 3,
      Damage = "30",
      Text = ""
    },
    {
      Name = "Flamethrower",
      Cost = { "Fire", "Fire", "Colorless" },
      ConvertedEnergyCost = 3,
      Damage = "50",
      Text = "Discard 1 Fire Energy card attached to Charmeleon in order to use this attack."
    }
  },
  Weaknesses = {
    {
      Type = "Water",
      Value = "×2"
    }
  },
  ImageUrl = "https://images.pokemontcg.io/base1/24.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/24_hires.png"
}

if (not SERVER) then
  return
end
