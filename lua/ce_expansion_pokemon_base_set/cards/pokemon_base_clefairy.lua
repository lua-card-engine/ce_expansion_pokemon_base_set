local CARD = CARD

CARD.Name = "pokemon_base_clefairy"
CARD.Description = "pokemon_base_clefairy_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_clefairy"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
CARD.HolographicStrength = Vector(1, 1, 1)
CARD.HolographicTexture = "card_engine/holo_rainbow_strong"

CARD.Attributes = {
  Id = "base1-5",
  Rarity = "rare",
  Supertype = "Pokémon",
  Subtype = "Basic",
  Number = "5",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Ken Sugimori",
  Types = { "Colorless" },
  HP = "40",
  Level = "14",
  EvolvesTo = { "Clefable" },
  NationalPokedexNumber = 35,
  RetreatCost = { "Colorless" },
  ConvertedRetreatCost = 1,
  Attacks = {
    {
      Name = "Sing",
      Cost = { "Colorless" },
      ConvertedEnergyCost = 1,
      Damage = "",
      Text = "Flip a coin. If heads, the Defending Pokémon is now Asleep."
    },
    {
      Name = "Metronome",
      Cost = { "Colorless", "Colorless", "Colorless" },
      ConvertedEnergyCost = 3,
      Damage = "",
      Text =
      "Choose 1 of Defending Pokémon's attacks. Metronome copies that attack except for its Energy costs and anything else required in order to use that attack, such as discarding energy cards. (No matter what type the defender is, Clefairy's type is still Colorless.)"
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
  ImageUrl = "https://images.pokemontcg.io/base1/5.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/5_hires.png"
}

if (not SERVER) then
  return
end
