local CARD = CARD

CARD.Name = "pokemon_base_hitmonchan"
CARD.Description = "pokemon_base_hitmonchan_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_hitmonchan"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
CARD.HolographicStrength = Vector(1, 1, 1)
CARD.HolographicTexture = "card_engine/holo_rainbow_strong"

CARD.Attributes = {
  Id = "base1-7",
  Rarity = "rare",
  Supertype = "Pokémon",
  Subtype = "Basic",
  Number = "7",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Ken Sugimori",
  Types = { "Fighting" },
  HP = "70",
  Level = "33",
  NationalPokedexNumber = 107,
  RetreatCost = { "Colorless", "Colorless" },
  ConvertedRetreatCost = 2,
  Attacks = {
    {
      Name = "Jab",
      Cost = { "Fighting" },
      ConvertedEnergyCost = 1,
      Damage = "20",
      Text = ""
    },
    {
      Name = "Special Punch",
      Cost = { "Fighting", "Fighting", "Colorless" },
      ConvertedEnergyCost = 3,
      Damage = "40",
      Text = ""
    }
  },
  Weaknesses = {
    {
      Type = "Psychic",
      Value = "×2"
    }
  },
  ImageUrl = "https://images.pokemontcg.io/base1/7.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/7_hires.png"
}

if (not SERVER) then
  return
end
