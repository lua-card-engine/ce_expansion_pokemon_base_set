local CARD = CARD

CARD.Name = "pokemon_base_mewtwo"
CARD.Description = "pokemon_base_mewtwo_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_mewtwo"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
CARD.HolographicStrength = Vector(1, 1, 1)
CARD.HolographicTexture = "card_engine/holo_rainbow_strong"

CARD.Attributes = {
  Id = "base1-10",
  Rarity = "rare",
  Supertype = "Pokémon",
  Subtype = "Basic",
  Number = "10",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Ken Sugimori",
  Types = { "Psychic" },
  HP = "60",
  Level = "53",
  NationalPokedexNumber = 150,
  RetreatCost = { "Colorless", "Colorless", "Colorless" },
  ConvertedRetreatCost = 3,
  Attacks = {
    {
      Name = "Psychic",
      Cost = { "Psychic", "Colorless" },
      ConvertedEnergyCost = 2,
      Damage = "10+",
      Text = "Does 10 damage plus 10 more damage for each Energy card attached to the Defending Pokémon."
    },
    {
      Name = "Barrier",
      Cost = { "Psychic", "Psychic" },
      ConvertedEnergyCost = 2,
      Damage = "",
      Text =
      "Discard 1 Psychic Energy card attached to Mewtwo in order to use this attack. During your opponent's next turn, prevent all effects of attacks, including damage, done to Mewtwo."
    }
  },
  Weaknesses = {
    {
      Type = "Psychic",
      Value = "×2"
    }
  },
  ImageUrl = "https://images.pokemontcg.io/base1/10.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/10_hires.png"
}

if (not SERVER) then
  return
end
