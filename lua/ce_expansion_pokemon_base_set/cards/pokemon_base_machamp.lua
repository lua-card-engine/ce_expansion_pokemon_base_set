local CARD = CARD

CARD.Name = "pokemon_base_machamp"
CARD.Description = "pokemon_base_machamp_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_machamp"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
CARD.HolographicStrength = Vector(1, 1, 1)
CARD.HolographicTexture = "card_engine/holo_rainbow_strong"

CARD.Attributes = {
  Id = "base1-8",
  Rarity = "rare",
  Supertype = "Pokémon",
  Subtype = "Stage 2",
  Number = "8",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Ken Sugimori",
  Types = { "Fighting" },
  HP = "100",
  Level = "67",
  EvolvesFrom = "Machoke",
  NationalPokedexNumber = 68,
  RetreatCost = { "Colorless", "Colorless", "Colorless" },
  ConvertedRetreatCost = 3,
  Ability = {
    Name = "Strikes Back",
    Text =
    "Whenever your opponent's attack damages Machamp (even if Machamp is Knoced Out), this power does 10 damage to attacking Pokémon. (Don't apply Weakness and Resistance.) This power can't be used if Machamp is already Asleep, Confused, or Paralyzed when your opponent attacks.",
    Type = "Pokémon Power"
  },
  Attacks = {
    {
      Name = "Seismic Toss",
      Cost = { "Fighting", "Fighting", "Fighting", "Colorless" },
      ConvertedEnergyCost = 4,
      Damage = "60",
      Text = ""
    }
  },
  Weaknesses = {
    {
      Type = "Psychic",
      Value = "×2"
    }
  },
  ImageUrl = "https://images.pokemontcg.io/base1/8.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/8_hires.png"
}

if (not SERVER) then
  return
end
