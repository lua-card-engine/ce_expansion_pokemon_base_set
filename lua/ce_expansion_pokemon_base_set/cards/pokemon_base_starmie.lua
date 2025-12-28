local CARD = CARD

CARD.Name = "pokemon_base_starmie"
CARD.Description = "pokemon_base_starmie_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_starmie"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED

CARD.Attributes = {
  Id = "base1-64",
  Rarity = "common",
  Supertype = "Pokémon",
  Subtype = "Stage 1",
  Number = "64",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Keiji Kinebuchi",
  Types = { "Water" },
  HP = "60",
  Level = "28",
  EvolvesFrom = "Staryu",
  NationalPokedexNumber = 121,
  RetreatCost = { "Colorless" },
  ConvertedRetreatCost = 1,
  Attacks = {
    {
      Name = "Recover",
      Cost = { "Water", "Water" },
      ConvertedEnergyCost = 2,
      Damage = "",
      Text =
      "Discard 1 Water Energy card to Starmie in order to use this attack. Remove all damage counters from Starmie."
    },
    {
      Name = "Star Freeze",
      Cost = { "Water", "Colorless", "Colorless" },
      ConvertedEnergyCost = 3,
      Damage = "20",
      Text = "Flip a coin. If heads, the Defending Pokémon is now Paralyzed."
    }
  },
  Weaknesses = {
    {
      Type = "Lightning",
      Value = "×2"
    }
  },
  ImageUrl = "https://images.pokemontcg.io/base1/64.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/64_hires.png"
}

if (not SERVER) then
  return
end
