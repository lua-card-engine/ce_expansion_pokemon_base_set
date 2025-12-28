local CARD = CARD

CARD.Name = "pokemon_base_onix"
CARD.Description = "pokemon_base_onix_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_onix"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED

CARD.Attributes = {
  Id = "base1-56",
  Rarity = "common",
  Supertype = "Pokémon",
  Subtype = "Basic",
  Number = "56",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Ken Sugimori",
  Types = { "Fighting" },
  HP = "90",
  Level = "12",
  EvolvesTo = { "Steelix" },
  NationalPokedexNumber = 95,
  RetreatCost = { "Colorless", "Colorless", "Colorless" },
  ConvertedRetreatCost = 3,
  Attacks = {
    {
      Name = "Rock Throw",
      Cost = { "Fighting" },
      ConvertedEnergyCost = 1,
      Damage = "10",
      Text = ""
    },
    {
      Name = "Harden",
      Cost = { "Fighting", "Fighting" },
      ConvertedEnergyCost = 2,
      Damage = "",
      Text =
      "During opponent's next turn, whenever 30 or less damage is done to Onix (after applying Weakness and Resistance), prevent that damage. (Any other effects of attacks still happen.)"
    }
  },
  Weaknesses = {
    {
      Type = "Grass",
      Value = "×2"
    }
  },
  ImageUrl = "https://images.pokemontcg.io/base1/56.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/56_hires.png"
}

if (not SERVER) then
  return
end
