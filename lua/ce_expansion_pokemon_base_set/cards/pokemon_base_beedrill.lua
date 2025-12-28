local CARD = CARD

CARD.Name = "pokemon_base_beedrill"
CARD.Description = "pokemon_base_beedrill_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_beedrill"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED

CARD.Attributes = {
  Id = "base1-17",
  Rarity = "rare",
  Supertype = "Pokémon",
  Subtype = "Stage 2",
  Number = "17",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Ken Sugimori",
  Types = { "Grass" },
  HP = "80",
  Level = "32",
  EvolvesFrom = "Kakuna",
  NationalPokedexNumber = 15,
  Attacks = {
    {
      Name = "Twineedle",
      Cost = { "Colorless", "Colorless", "Colorless" },
      ConvertedEnergyCost = 3,
      Damage = "30×",
      Text = "Flip 2 coins. This attack does 30 damage times the number of heads."
    },
    {
      Name = "Poison Sting",
      Cost = { "Grass", "Grass", "Grass" },
      ConvertedEnergyCost = 3,
      Damage = "40",
      Text = "Flip a coin. If heads, the Defending Pokémon is now Poisoned."
    }
  },
  Weaknesses = {
    {
      Type = "Fire",
      Value = "×2"
    }
  },
  Resistances = {
    {
      Type = "Fighting",
      Value = "-30"
    }
  },
  ImageUrl = "https://images.pokemontcg.io/base1/17.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/17_hires.png"
}

if (not SERVER) then
  return
end
