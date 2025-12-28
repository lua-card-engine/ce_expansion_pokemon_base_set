local CARD = CARD

CARD.Name = "pokemon_base_dugtrio"
CARD.Description = "pokemon_base_dugtrio_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_dugtrio"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED

CARD.Attributes = {
  Id = "base1-19",
  Rarity = "rare",
  Supertype = "Pokémon",
  Subtype = "Stage 1",
  Number = "19",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Keiji Kinebuchi",
  Types = { "Fighting" },
  HP = "70",
  Level = "36",
  EvolvesFrom = "Diglett",
  NationalPokedexNumber = 51,
  RetreatCost = { "Colorless", "Colorless" },
  ConvertedRetreatCost = 2,
  Attacks = {
    {
      Name = "Slash",
      Cost = { "Fighting", "Fighting", "Colorless" },
      ConvertedEnergyCost = 3,
      Damage = "40",
      Text = ""
    },
    {
      Name = "Earthquake",
      Cost = { "Fighting", "Fighting", "Fighting", "Fighting" },
      ConvertedEnergyCost = 4,
      Damage = "70",
      Text =
      "Does 10 damage to each of your own Benched Pokémon. (Don't apply Weakness and Resistance for Benched Pokémon.)"
    }
  },
  Weaknesses = {
    {
      Type = "Grass",
      Value = "×2"
    }
  },
  Resistances = {
    {
      Type = "Lightning",
      Value = "-30"
    }
  },
  ImageUrl = "https://images.pokemontcg.io/base1/19.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/19_hires.png"
}

if (not SERVER) then
  return
end
