local CARD = CARD

CARD.Name = "pokemon_base_drowzee"
CARD.Description = "pokemon_base_drowzee_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_drowzee"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED

CARD.Attributes = {
  Id = "base1-49",
  Rarity = "common",
  Supertype = "Pokémon",
  Subtype = "Basic",
  Number = "49",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Ken Sugimori",
  Types = { "Psychic" },
  HP = "50",
  Level = "10",
  EvolvesTo = { "Hypno" },
  NationalPokedexNumber = 96,
  Attacks = {
    {
      Name = "Pound",
      Cost = { "Colorless" },
      ConvertedEnergyCost = 1,
      Damage = "10",
      Text = ""
    },
    {
      Name = "Confuse Ray",
      Cost = { "Psychic", "Psychic" },
      ConvertedEnergyCost = 2,
      Damage = "10",
      Text = "Flip a coin. If heads, the Defending Pokémon is now Confused."
    }
  },
  Weaknesses = {
    {
      Type = "Psychic",
      Value = "×2"
    }
  },
  ImageUrl = "https://images.pokemontcg.io/base1/49.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/49_hires.png"
}

if (not SERVER) then
  return
end
