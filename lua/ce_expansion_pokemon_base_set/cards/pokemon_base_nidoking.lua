local CARD = CARD

CARD.Name = "pokemon_base_nidoking"
CARD.Description = "pokemon_base_nidoking_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_nidoking"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
CARD.HolographicStrength = Vector(1, 1, 1)
CARD.HolographicTexture = "card_engine/holo_rainbow_strong"

CARD.Attributes = {
  Id = "base1-11",
  Rarity = "rare",
  Supertype = "Pokémon",
  Subtype = "Stage 2",
  Number = "11",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Ken Sugimori",
  Types = { "Grass" },
  HP = "90",
  Level = "23",
  EvolvesFrom = "Nidorino",
  NationalPokedexNumber = 34,
  RetreatCost = { "Colorless", "Colorless", "Colorless" },
  ConvertedRetreatCost = 3,
  Attacks = {
    {
      Name = "Thrash",
      Cost = { "Grass", "Colorless", "Colorless" },
      ConvertedEnergyCost = 3,
      Damage = "30+",
      Text =
      "Flip a coin. If heads, this attack does 30 damage plus 10 more damage; if tails, this attack does 30 damage and Nidoking does 10 damage to itself."
    },
    {
      Name = "Toxic",
      Cost = { "Grass", "Grass", "Grass" },
      ConvertedEnergyCost = 3,
      Damage = "40",
      Text =
      "The Defending Pokémon is now Poisoned. It now takes 20 Poison damage instead of 10 after each player's turn (even if it was already Poisoned)."
    }
  },
  Weaknesses = {
    {
      Type = "Psychic",
      Value = "×2"
    }
  },
  ImageUrl = "https://images.pokemontcg.io/base1/11.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/11_hires.png"
}

if (not SERVER) then
  return
end
