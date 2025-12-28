local CARD = CARD

CARD.Name = "pokemon_base_charizard"
CARD.Description = "pokemon_base_charizard_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_charizard"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
CARD.HolographicStrength = Vector(1, 1, 1)
CARD.HolographicTexture = "card_engine/holo_rainbow_strong"

CARD.Attributes = {
  Id = "base1-4",
  Rarity = "rare",
  Supertype = "Pokémon",
  Subtype = "Stage 2",
  Number = "4",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Mitsuhiro Arita",
  Types = { "Fire" },
  HP = "120",
  Level = "76",
  EvolvesFrom = "Charmeleon",
  NationalPokedexNumber = 6,
  RetreatCost = { "Colorless", "Colorless", "Colorless" },
  ConvertedRetreatCost = 3,
  Ability = {
    Name = "Energy Burn",
    Text =
    "As often as you like during your turn (before your attack), you may turn all Energy attached to Charizard into Fire Energy for the rest of the turn. This power can't be used if Charizard is Asleep, Confused, or Paralyzed.",
    Type = "Pokémon Power"
  },
  Attacks = {
    {
      Name = "Fire Spin",
      Cost = { "Fire", "Fire", "Fire", "Fire" },
      ConvertedEnergyCost = 4,
      Damage = "100",
      Text = "Discard 2 Energy cards attached to Charizard in order to use this attack."
    }
  },
  Weaknesses = {
    {
      Type = "Water",
      Value = "×2"
    }
  },
  Resistances = {
    {
      Type = "Fighting",
      Value = "-30"
    }
  },
  ImageUrl = "https://images.pokemontcg.io/base1/4.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/4_hires.png"
}

if (not SERVER) then
  return
end
