local CARD = CARD

CARD.Name = "pokemon_base_rattata"
CARD.Description = "pokemon_base_rattata_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_rattata"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED

CARD.Attributes = {
  Id = "base1-61",
  Rarity = "common",
  Supertype = "Pokémon",
  Subtype = "Basic",
  Number = "61",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Mitsuhiro Arita",
  Types = { "Colorless" },
  HP = "30",
  Level = "9",
  EvolvesTo = { "Raticate" },
  NationalPokedexNumber = 19,
  Attacks = {
    {
      Name = "Bite",
      Cost = { "Colorless" },
      ConvertedEnergyCost = 1,
      Damage = "20",
      Text = ""
    }
  },
  Weaknesses = {
    {
      Type = "Fighting",
      Value = "×2"
    }
  },
  Resistances = {
    {
      Type = "Psychic",
      Value = "-30"
    }
  },
  ImageUrl = "https://images.pokemontcg.io/base1/61.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/61_hires.png"
}

if (not SERVER) then
  return
end
