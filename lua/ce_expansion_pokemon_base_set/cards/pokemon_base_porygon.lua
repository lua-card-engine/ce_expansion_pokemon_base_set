local CARD = CARD

CARD.Name = "pokemon_base_porygon"
CARD.Description = "pokemon_base_porygon_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_porygon"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED

CARD.Attributes = {
  Id = "base1-39",
  Rarity = "uncommon",
  Supertype = "Pokémon",
  Subtype = "Basic",
  Number = "39",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Tomoaki Imakuni",
  Types = { "Colorless" },
  HP = "30",
  Level = "12",
  EvolvesTo = { "Porygon2" },
  NationalPokedexNumber = 137,
  RetreatCost = { "Colorless" },
  ConvertedRetreatCost = 1,
  Attacks = {
    {
      Name = "Conversion 1",
      Cost = { "Colorless" },
      ConvertedEnergyCost = 1,
      Damage = "",
      Text =
      "If the Defending Pokémon has a Weakness, you may change it to a type of your choice other than Colorless."
    },
    {
      Name = "Conversion 2",
      Cost = { "Colorless", "Colorless" },
      ConvertedEnergyCost = 2,
      Damage = "",
      Text = "Change Porygon's Resistance to a type of your choice other than Colorless."
    }
  },
  Weaknesses = {
    {
      Type = "Fighting",
      Value = "×2"
    }
  },
  Resistances = {
    {
      Type = "Psychic",
      Value = "-30"
    }
  },
  ImageUrl = "https://images.pokemontcg.io/base1/39.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/39_hires.png"
}

if (not SERVER) then
  return
end
