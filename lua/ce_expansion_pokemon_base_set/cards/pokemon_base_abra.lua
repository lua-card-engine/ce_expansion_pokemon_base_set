local CARD = CARD

CARD.Name = "pokemon_base_abra"
CARD.Description = "pokemon_base_abra_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_abra"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED

CARD.Attributes = {
  Id = "base1-43",
  Rarity = "common",
  Supertype = "Pokémon",
  Subtype = "Basic",
  Number = "43",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Mitsuhiro Arita",
  Types = { "Psychic" },
  HP = "30",
  Level = "10",
  EvolvesTo = { "Kadabra" },
  NationalPokedexNumber = 63,
  Attacks = {
    {
      Name = "Psyshock",
      Cost = { "Psychic" },
      ConvertedEnergyCost = 1,
      Damage = "10",
      Text = "Flip a coin. If heads, the Defending Pokémon is now Paralyzed."
    }
  },
  Weaknesses = {
    {
      Type = "Psychic",
      Value = "×2"
    }
  },
  ImageUrl = "https://images.pokemontcg.io/base1/43.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/43_hires.png"
}

if (not SERVER) then
  return
end
