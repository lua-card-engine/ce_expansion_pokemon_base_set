local CARD = CARD

CARD.Name = "pokemon_base_pidgeotto"
CARD.Description = "pokemon_base_pidgeotto_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_pidgeotto"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED

CARD.Attributes = {
  Id = "base1-22",
  Rarity = "rare",
  Supertype = "Pokémon",
  Subtype = "Stage 1",
  Number = "22",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Ken Sugimori",
  Types = { "Colorless" },
  HP = "60",
  Level = "36",
  EvolvesFrom = "Pidgey",
  EvolvesTo = { "Pidgeot" },
  NationalPokedexNumber = 17,
  RetreatCost = { "Colorless" },
  ConvertedRetreatCost = 1,
  Attacks = {
    {
      Name = "Whirlwind",
      Cost = { "Colorless", "Colorless" },
      ConvertedEnergyCost = 2,
      Damage = "20",
      Text =
      "If your opponent has any Benched Pokémon, he or she chooses 1 of them and switches it with the Defending Pokémon. (Do the damage before switching the Pokémon.)"
    },
    {
      Name = "Mirror Move",
      Cost = { "Colorless", "Colorless", "Colorless" },
      ConvertedEnergyCost = 3,
      Damage = "",
      Text =
      "If Pidgeotto was attacked last turn, do the final result of that attack on Pidgeotto to the Defending Pokémon."
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
  ImageUrl = "https://images.pokemontcg.io/base1/22.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/22_hires.png"
}

if (not SERVER) then
  return
end
