local CARD = CARD

CARD.Name = "pokemon_base_kadabra"
CARD.Description = "pokemon_base_kadabra_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_kadabra"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED

CARD.Attributes = {
  Id = "base1-32",
  Rarity = "uncommon",
  Supertype = "Pokémon",
  Subtype = "Stage 1",
  Number = "32",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Ken Sugimori",
  Types = { "Psychic" },
  HP = "60",
  Level = "38",
  EvolvesFrom = "Abra",
  EvolvesTo = { "Alakazam" },
  NationalPokedexNumber = 64,
  RetreatCost = { "Colorless", "Colorless", "Colorless" },
  ConvertedRetreatCost = 3,
  Attacks = {
    {
      Name = "Recover",
      Cost = { "Psychic", "Psychic" },
      ConvertedEnergyCost = 2,
      Damage = "",
      Text =
      "Discard 1 Psychic Energy card attached to Kadabra in order use this attack. Remove all damage counters from Kadabra."
    },
    {
      Name = "Super Psy",
      Cost = { "Psychic", "Psychic", "Colorless" },
      ConvertedEnergyCost = 3,
      Damage = "50",
      Text = ""
    }
  },
  Weaknesses = {
    {
      Type = "Psychic",
      Value = "×2"
    }
  },
  ImageUrl = "https://images.pokemontcg.io/base1/32.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/32_hires.png"
}

if (not SERVER) then
  return
end
