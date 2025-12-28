local CARD = CARD

CARD.Name = "pokemon_base_jynx"
CARD.Description = "pokemon_base_jynx_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_jynx"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED

CARD.Attributes = {
  Id = "base1-31",
  Rarity = "uncommon",
  Supertype = "Pokémon",
  Subtype = "Basic",
  Number = "31",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Ken Sugimori",
  Types = { "Psychic" },
  HP = "70",
  Level = "23",
  NationalPokedexNumber = 124,
  RetreatCost = { "Colorless", "Colorless" },
  ConvertedRetreatCost = 2,
  Attacks = {
    {
      Name = "Doubleslap",
      Cost = { "Psychic" },
      ConvertedEnergyCost = 1,
      Damage = "10×",
      Text = "Flip 2 coins. This attack does 10 damage times the number of heads."
    },
    {
      Name = "Meditate",
      Cost = { "Psychic", "Psychic", "Colorless" },
      ConvertedEnergyCost = 3,
      Damage = "20+",
      Text = "Does 20 damage plus 10 more damage for each damage counter on the Defending Pokémon."
    }
  },
  Weaknesses = {
    {
      Type = "Psychic",
      Value = "×2"
    }
  },
  ImageUrl = "https://images.pokemontcg.io/base1/31.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/31_hires.png"
}

if (not SERVER) then
  return
end
