local CARD = CARD

CARD.Name = "pokemon_base_venusaur"
CARD.Description = "pokemon_base_venusaur_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_venusaur"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
CARD.HolographicStrength = Vector(1, 1, 1)
CARD.HolographicTexture = "card_engine/holo_rainbow_strong"

CARD.Attributes = {
  Id = "base1-15",
  Rarity = "rare",
  Supertype = "Pokémon",
  Subtype = "Stage 2",
  Number = "15",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Mitsuhiro Arita",
  Types = { "Grass" },
  HP = "100",
  Level = "67",
  EvolvesFrom = "Ivysaur",
  NationalPokedexNumber = 3,
  RetreatCost = { "Colorless", "Colorless" },
  ConvertedRetreatCost = 2,
  Ability = {
    Name = "Energy Trans",
    Text =
    "As often as you like during your turn (before your attack), you may take 1 Grass Energy card attached to 1 of your Pokémon and attach it to a different one. This power can't be used if Venusaur is Asleep, Confused, or Paralyzed.",
    Type = "Pokémon Power"
  },
  Attacks = {
    {
      Name = "Solarbeam",
      Cost = { "Grass", "Grass", "Grass", "Grass" },
      ConvertedEnergyCost = 4,
      Damage = "60",
      Text = ""
    }
  },
  Weaknesses = {
    {
      Type = "Fire",
      Value = "×2"
    }
  },
  ImageUrl = "https://images.pokemontcg.io/base1/15.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/15_hires.png"
}

if (not SERVER) then
  return
end
