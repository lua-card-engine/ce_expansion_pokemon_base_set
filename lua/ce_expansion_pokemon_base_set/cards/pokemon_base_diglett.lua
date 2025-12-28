local CARD = CARD

CARD.Name = "pokemon_base_diglett"
CARD.Description = "pokemon_base_diglett_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_diglett"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED

CARD.Attributes = {
  Id = "base1-47",
  Rarity = "common",
  Supertype = "Pokémon",
  Subtype = "Basic",
  Number = "47",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Keiji Kinebuchi",
  Types = { "Fighting" },
  HP = "30",
  Level = "8",
  EvolvesTo = { "Dugtrio" },
  NationalPokedexNumber = 50,
  Attacks = {
    {
      Name = "Dig",
      Cost = { "Fighting" },
      ConvertedEnergyCost = 1,
      Damage = "10",
      Text = ""
    },
    {
      Name = "Mud Slap",
      Cost = { "Fighting", "Fighting" },
      ConvertedEnergyCost = 2,
      Damage = "30",
      Text = ""
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
  ImageUrl = "https://images.pokemontcg.io/base1/47.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/47_hires.png"
}

if (not SERVER) then
  return
end
