local CARD = CARD

CARD.Name = "pokemon_base_bulbasaur"
CARD.Description = "pokemon_base_bulbasaur_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_bulbasaur"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED

CARD.Attributes = {
  Id = "base1-44",
  Rarity = "common",
  Supertype = "Pokémon",
  Subtype = "Basic",
  Number = "44",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Mitsuhiro Arita",
  Types = { "Grass" },
  HP = "40",
  Level = "13",
  EvolvesTo = { "Ivysaur" },
  NationalPokedexNumber = 1,
  RetreatCost = { "Colorless" },
  ConvertedRetreatCost = 1,
  Attacks = {
    {
      Name = "Leech Seed",
      Cost = { "Grass", "Grass" },
      ConvertedEnergyCost = 2,
      Damage = "20",
      Text = "Unless all damage from this attack is prevented, you may remove 1 damage counter from Bulbasaur."
    }
  },
  Weaknesses = {
    {
      Type = "Fire",
      Value = "×2"
    }
  },
  ImageUrl = "https://images.pokemontcg.io/base1/44.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/44_hires.png"
}

if (not SERVER) then
  return
end
