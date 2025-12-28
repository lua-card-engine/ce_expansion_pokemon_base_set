local CARD = CARD

CARD.Name = "pokemon_base_farfetch_d"
CARD.Description = "pokemon_base_farfetch_d_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_farfetch_d"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED

CARD.Attributes = {
  Id = "base1-27",
  Rarity = "uncommon",
  Supertype = "Pokémon",
  Subtype = "Basic",
  Number = "27",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Ken Sugimori",
  Types = { "Colorless" },
  HP = "50",
  Level = "20",
  EvolvesTo = { "Sirfetch'd" },
  NationalPokedexNumber = 83,
  RetreatCost = { "Colorless" },
  ConvertedRetreatCost = 1,
  Attacks = {
    {
      Name = "Leek Slap",
      Cost = { "Colorless" },
      ConvertedEnergyCost = 1,
      Damage = "30",
      Text =
      "Flip a coin. If tails, this attack does nothing. Either way, you can't use this attack again as long as Farfetch'd stays in play (even putting Farfetch'd on the Bench won't let you use it again.)"
    },
    {
      Name = "Pot Smash",
      Cost = { "Colorless", "Colorless", "Colorless" },
      ConvertedEnergyCost = 3,
      Damage = "30",
      Text = ""
    }
  },
  Weaknesses = {
    {
      Type = "Lightning",
      Value = "×2"
    }
  },
  Resistances = {
    {
      Type = "Fighting",
      Value = "-30"
    }
  },
  ImageUrl = "https://images.pokemontcg.io/base1/27.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/27_hires.png"
}

if (not SERVER) then
  return
end
