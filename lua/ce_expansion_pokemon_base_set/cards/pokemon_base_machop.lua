local CARD = CARD

CARD.Name = "pokemon_base_machop"
CARD.Description = "pokemon_base_machop_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_machop"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED

CARD.Attributes = {
  Id = "base1-52",
  Rarity = "common",
  Supertype = "Pokémon",
  Subtype = "Basic",
  Number = "52",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Mitsuhiro Arita",
  Types = { "Fighting" },
  HP = "50",
  Level = "20",
  EvolvesTo = { "Machoke" },
  NationalPokedexNumber = 66,
  RetreatCost = { "Colorless" },
  ConvertedRetreatCost = 1,
  Attacks = {
    {
      Name = "Low Kick",
      Cost = { "Fighting" },
      ConvertedEnergyCost = 1,
      Damage = "20",
      Text = ""
    }
  },
  Weaknesses = {
    {
      Type = "Psychic",
      Value = "×2"
    }
  },
  ImageUrl = "https://images.pokemontcg.io/base1/52.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/52_hires.png"
}

if (not SERVER) then
  return
end
