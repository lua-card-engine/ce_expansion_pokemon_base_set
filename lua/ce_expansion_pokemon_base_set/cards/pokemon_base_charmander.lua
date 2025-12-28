local CARD = CARD

CARD.Name = "pokemon_base_charmander"
CARD.Description = "pokemon_base_charmander_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_charmander"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED

CARD.Attributes = {
  Id = "base1-46",
  Rarity = "common",
  Supertype = "Pokémon",
  Subtype = "Basic",
  Number = "46",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Mitsuhiro Arita",
  Types = { "Fire" },
  HP = "50",
  Level = "10",
  EvolvesTo = { "Charmeleon" },
  NationalPokedexNumber = 4,
  RetreatCost = { "Colorless" },
  ConvertedRetreatCost = 1,
  Attacks = {
    {
      Name = "Scratch",
      Cost = { "Colorless" },
      ConvertedEnergyCost = 1,
      Damage = "10",
      Text = ""
    },
    {
      Name = "Ember",
      Cost = { "Fire", "Colorless" },
      ConvertedEnergyCost = 2,
      Damage = "30",
      Text = "Discard 1 Fire Energy card attached to Charmander in order to use this attack."
    }
  },
  Weaknesses = {
    {
      Type = "Water",
      Value = "×2"
    }
  },
  ImageUrl = "https://images.pokemontcg.io/base1/46.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/46_hires.png"
}

if (not SERVER) then
  return
end
