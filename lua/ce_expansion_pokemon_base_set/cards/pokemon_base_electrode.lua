local CARD = CARD

CARD.Name = "pokemon_base_electrode"
CARD.Description = "pokemon_base_electrode_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_electrode"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED

CARD.Attributes = {
  Id = "base1-21",
  Rarity = "rare",
  Supertype = "Pokémon",
  Subtype = "Stage 1",
  Number = "21",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Keiji Kinebuchi",
  Types = { "Lightning" },
  HP = "80",
  Level = "40",
  EvolvesFrom = "Voltorb",
  NationalPokedexNumber = 101,
  RetreatCost = { "Colorless" },
  ConvertedRetreatCost = 1,
  Ability = {
    Name = "Buzzap",
    Text =
    "At any time during your turn (before your attack) you may Knock Out Electrode and attach it to 1 of your other Pokémon. If you do, chose a type of Energy. Electrode is now an Energy card (instead of a Pokémon) that provides 2 energy of that type. This power can't be used if Electrode is Asleep, Confused, or Paralyzed.",
    Type = "Pokémon Power"
  },
  Attacks = {
    {
      Name = "Electric Shock",
      Cost = { "Lightning", "Lightning", "Lightning" },
      ConvertedEnergyCost = 3,
      Damage = "50",
      Text = "Flip a coin. If tails, Electrode does 10 damage to itself."
    }
  },
  Weaknesses = {
    {
      Type = "Fighting",
      Value = "×2"
    }
  },
  ImageUrl = "https://images.pokemontcg.io/base1/21.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/21_hires.png"
}

if (not SERVER) then
  return
end
