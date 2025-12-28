local CARD = CARD

CARD.Name = "pokemon_base_ninetales"
CARD.Description = "pokemon_base_ninetales_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_ninetales"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
CARD.HolographicStrength = Vector(1, 1, 1)
CARD.HolographicTexture = "card_engine/holo_rainbow_strong"

CARD.Attributes = {
  Id = "base1-12",
  Rarity = "rare",
  Supertype = "Pokémon",
  Subtype = "Stage 1",
  Number = "12",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Ken Sugimori",
  Types = { "Fire" },
  HP = "80",
  Level = "32",
  EvolvesFrom = "Vulpix",
  NationalPokedexNumber = 38,
  RetreatCost = { "Colorless" },
  ConvertedRetreatCost = 1,
  Attacks = {
    {
      Name = "Lure",
      Cost = { "Colorless", "Colorless" },
      ConvertedEnergyCost = 2,
      Damage = "",
      Text = "If your opponent has any Benched Pokémon, choose 1 of them and switch it with the Defending Pokémon."
    },
    {
      Name = "Fire Blast",
      Cost = { "Fire", "Fire", "Fire", "Fire" },
      ConvertedEnergyCost = 4,
      Damage = "80",
      Text = "Discard 1 Fire Energy card attached to Ninetales in order to use this attack."
    }
  },
  Weaknesses = {
    {
      Type = "Water",
      Value = "×2"
    }
  },
  ImageUrl = "https://images.pokemontcg.io/base1/12.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/12_hires.png"
}

if (not SERVER) then
  return
end
