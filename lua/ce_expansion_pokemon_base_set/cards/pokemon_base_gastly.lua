local CARD = CARD

CARD.Name = "pokemon_base_gastly"
CARD.Description = "pokemon_base_gastly_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_gastly"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED

CARD.Attributes = {
  Id = "base1-50",
  Rarity = "common",
  Supertype = "Pokémon",
  Subtype = "Basic",
  Number = "50",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Keiji Kinebuchi",
  Types = { "Psychic" },
  HP = "30",
  Level = "8",
  EvolvesTo = { "Haunter" },
  NationalPokedexNumber = 92,
  Attacks = {
    {
      Name = "Sleeping Gas",
      Cost = { "Psychic" },
      ConvertedEnergyCost = 1,
      Damage = "",
      Text = "Flip a coin. If heads, the Defending Pokémon is now Asleep."
    },
    {
      Name = "Destiny Bond",
      Cost = { "Psychic", "Colorless" },
      ConvertedEnergyCost = 2,
      Damage = "",
      Text =
      "Discard 1 Psychic Energy card attached to Gastly in order to use this attack. If a Pokémon Knocks Out Gastly during your opponent's next turn, Knock Out that Pokémon."
    }
  },
  Resistances = {
    {
      Type = "Fighting",
      Value = "-30"
    }
  },
  ImageUrl = "https://images.pokemontcg.io/base1/50.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/50_hires.png"
}

if (not SERVER) then
  return
end
