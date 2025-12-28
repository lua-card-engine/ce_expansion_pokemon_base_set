local CARD = CARD

CARD.Name = "pokemon_base_pidgey"
CARD.Description = "pokemon_base_pidgey_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_pidgey"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED

CARD.Attributes = {
  Id = "base1-57",
  Rarity = "common",
  Supertype = "Pokémon",
  Subtype = "Basic",
  Number = "57",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Ken Sugimori",
  Types = { "Colorless" },
  HP = "40",
  Level = "8",
  EvolvesTo = { "Pidgeotto" },
  NationalPokedexNumber = 16,
  RetreatCost = { "Colorless" },
  ConvertedRetreatCost = 1,
  Attacks = {
    {
      Name = "Whirlwind",
      Cost = { "Colorless", "Colorless" },
      ConvertedEnergyCost = 2,
      Damage = "10",
      Text =
      "If your opponent has any Benched Pokémon, he or she chooses 1 of them and switches it with the Defending Pokémon. (Do the damage before switching the Pokémon.)"
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
  ImageUrl = "https://images.pokemontcg.io/base1/57.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/57_hires.png"
}

if (not SERVER) then
  return
end
