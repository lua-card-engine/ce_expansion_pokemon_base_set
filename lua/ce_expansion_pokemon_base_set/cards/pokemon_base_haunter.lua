local CARD = CARD

CARD.Name = "pokemon_base_haunter"
CARD.Description = "pokemon_base_haunter_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_haunter"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED

CARD.Attributes = {
  Id = "base1-29",
  Rarity = "uncommon",
  Supertype = "Pokémon",
  Subtype = "Stage 1",
  Number = "29",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Keiji Kinebuchi",
  Types = { "Psychic" },
  HP = "60",
  Level = "22",
  EvolvesFrom = "Gastly",
  EvolvesTo = { "Gengar" },
  NationalPokedexNumber = 93,
  RetreatCost = { "Colorless" },
  ConvertedRetreatCost = 1,
  Attacks = {
    {
      Name = "Hypnosis",
      Cost = { "Psychic" },
      ConvertedEnergyCost = 1,
      Damage = "",
      Text = "The Defending Pokémon is now Asleep."
    },
    {
      Name = "Dream Eater",
      Cost = { "Psychic", "Psychic" },
      ConvertedEnergyCost = 2,
      Damage = "50",
      Text = "You can't this attack unless the Defending Pokémon is Asleep."
    }
  },
  Resistances = {
    {
      Type = "Fighting",
      Value = "-30"
    }
  },
  ImageUrl = "https://images.pokemontcg.io/base1/29.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/29_hires.png"
}

if (not SERVER) then
  return
end
