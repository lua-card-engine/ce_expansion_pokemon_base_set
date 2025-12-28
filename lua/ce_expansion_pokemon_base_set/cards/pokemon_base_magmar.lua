local CARD = CARD

CARD.Name = "pokemon_base_magmar"
CARD.Description = "pokemon_base_magmar_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_magmar"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED

CARD.Attributes = {
  Id = "base1-36",
  Rarity = "uncommon",
  Supertype = "Pokémon",
  Subtype = "Basic",
  Number = "36",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Ken Sugimori",
  Types = { "Fire" },
  HP = "50",
  Level = "24",
  EvolvesTo = { "Magmortar" },
  NationalPokedexNumber = 126,
  RetreatCost = { "Colorless", "Colorless" },
  ConvertedRetreatCost = 2,
  Attacks = {
    {
      Name = "Fire Punch",
      Cost = { "Fire", "Fire" },
      ConvertedEnergyCost = 2,
      Damage = "30",
      Text = ""
    },
    {
      Name = "Flamethrower",
      Cost = { "Fire", "Fire", "Colorless" },
      ConvertedEnergyCost = 3,
      Damage = "50",
      Text = "Discard 1 Fire Energy card attached to Magmar in order to use this attack."
    }
  },
  Weaknesses = {
    {
      Type = "Water",
      Value = "×2"
    }
  },
  ImageUrl = "https://images.pokemontcg.io/base1/36.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/36_hires.png"
}

if (not SERVER) then
  return
end
