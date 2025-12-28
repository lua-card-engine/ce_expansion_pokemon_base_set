local CARD = CARD

CARD.Name = "pokemon_base_blastoise"
CARD.Description = "pokemon_base_blastoise_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_blastoise"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
CARD.HolographicStrength = Vector(1, 1, 1)
CARD.HolographicTexture = "card_engine/holo_rainbow_strong"

CARD.Attributes = {
  Id = "base1-2",
  Rarity = "rare",
  Supertype = "Pokémon",
  Subtype = "Stage 2",
  Number = "2",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Ken Sugimori",
  Types = { "Water" },
  HP = "100",
  Level = "52",
  EvolvesFrom = "Wartortle",
  NationalPokedexNumber = 9,
  RetreatCost = { "Colorless", "Colorless", "Colorless" },
  ConvertedRetreatCost = 3,
  Ability = {
    Name = "Rain Dance",
    Text =
    "As often as you like during your turn (before your attack), you may attach 1 Water Energy Card to 1 of your Water Pokémon. (This doesn't use up your 1 Energy card attachment for the turn.) This power can't be used if Blastoise is Asleep, Confused, or Paralyzed.",
    Type = "Pokémon Power"
  },
  Attacks = {
    {
      Name = "Hydro Pump",
      Cost = { "Water", "Water", "Water" },
      ConvertedEnergyCost = 3,
      Damage = "40+",
      Text =
      "Does 40 damage plus 10 more damage for each Water energy attached to Blastoise but not used to pay for this attack's Energy cost. Extra Water Energy after the 2nd doesn't count."
    }
  },
  Weaknesses = {
    {
      Type = "Lightning",
      Value = "×2"
    }
  },
  ImageUrl = "https://images.pokemontcg.io/base1/2.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/2_hires.png"
}

if (not SERVER) then
  return
end
