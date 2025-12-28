local CARD = CARD

CARD.Name = "pokemon_base_ponyta"
CARD.Description = "pokemon_base_ponyta_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_ponyta"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED

CARD.Attributes = {
  Id = "base1-60",
  Rarity = "common",
  Supertype = "Pokémon",
  Subtype = "Basic",
  Number = "60",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Ken Sugimori",
  Types = { "Fire" },
  HP = "40",
  Level = "10",
  EvolvesTo = { "Rapidash" },
  NationalPokedexNumber = 77,
  RetreatCost = { "Colorless" },
  ConvertedRetreatCost = 1,
  Attacks = {
    {
      Name = "Smash Kick",
      Cost = { "Colorless", "Colorless" },
      ConvertedEnergyCost = 2,
      Damage = "20",
      Text = ""
    },
    {
      Name = "Flame Tail",
      Cost = { "Fire", "Fire" },
      ConvertedEnergyCost = 2,
      Damage = "30",
      Text = ""
    }
  },
  Weaknesses = {
    {
      Type = "Water",
      Value = "×2"
    }
  },
  ImageUrl = "https://images.pokemontcg.io/base1/60.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/60_hires.png"
}

if (not SERVER) then
  return
end
