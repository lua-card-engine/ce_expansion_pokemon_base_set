local CARD = CARD

CARD.Name = "pokemon_base_doduo"
CARD.Description = "pokemon_base_doduo_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_doduo"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED

CARD.Attributes = {
  Id = "base1-48",
  Rarity = "common",
  Supertype = "Pokémon",
  Subtype = "Basic",
  Number = "48",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Mitsuhiro Arita",
  Types = { "Colorless" },
  HP = "50",
  Level = "10",
  EvolvesTo = { "Dodrio" },
  NationalPokedexNumber = 84,
  Attacks = {
    {
      Name = "Fury Attack",
      Cost = { "Colorless" },
      ConvertedEnergyCost = 1,
      Damage = "10×",
      Text = "Flip 2 coins. This attack does 10 damage times the number of heads."
    }
  },
  Weaknesses = {
    {
      Type = "Lightning",
      Value = "×2"
    }
  },
  Resistances = {
    {
      Type = "Fighting",
      Value = "-30"
    }
  },
  ImageUrl = "https://images.pokemontcg.io/base1/48.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/48_hires.png"
}

if (not SERVER) then
  return
end
