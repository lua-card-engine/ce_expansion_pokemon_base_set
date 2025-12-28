local CARD = CARD

CARD.Name = "pokemon_base_zapdos"
CARD.Description = "pokemon_base_zapdos_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_zapdos"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
CARD.HolographicStrength = Vector(1, 1, 1)
CARD.HolographicTexture = "card_engine/holo_rainbow_strong"

CARD.Attributes = {
  Id = "base1-16",
  Rarity = "rare",
  Supertype = "Pokémon",
  Subtype = "Basic",
  Number = "16",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Ken Sugimori",
  Types = { "Lightning" },
  HP = "90",
  Level = "64",
  NationalPokedexNumber = 145,
  RetreatCost = { "Colorless", "Colorless", "Colorless" },
  ConvertedRetreatCost = 3,
  Attacks = {
    {
      Name = "Thunder",
      Cost = { "Lightning", "Lightning", "Lightning", "Colorless" },
      ConvertedEnergyCost = 4,
      Damage = "60",
      Text = "Flip a coin. If tails, Zapdos does 30 damage to itself."
    },
    {
      Name = "Thunderbolt",
      Cost = { "Lightning", "Lightning", "Lightning", "Lightning" },
      ConvertedEnergyCost = 4,
      Damage = "100",
      Text = "Discard all Energy cards attached to Zapdos in order to use this attack."
    }
  },
  Resistances = {
    {
      Type = "Fighting",
      Value = "-30"
    }
  },
  ImageUrl = "https://images.pokemontcg.io/base1/16.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/16_hires.png"
}

if (not SERVER) then
  return
end
