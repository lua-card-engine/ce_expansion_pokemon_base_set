local CARD = CARD

CARD.Name = "pokemon_base_arcanine"
CARD.Description = "pokemon_base_arcanine_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_arcanine"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED

CARD.Attributes = {
  Id = "base1-23",
  Rarity = "uncommon",
  Supertype = "Pokémon",
  Subtype = "Stage 1",
  Number = "23",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Ken Sugimori",
  Types = { "Fire" },
  HP = "100",
  Level = "45",
  EvolvesFrom = "Growlithe",
  NationalPokedexNumber = 59,
  RetreatCost = { "Colorless", "Colorless", "Colorless" },
  ConvertedRetreatCost = 3,
  Attacks = {
    {
      Name = "Flamethrower",
      Cost = { "Fire", "Fire", "Colorless" },
      ConvertedEnergyCost = 3,
      Damage = "50",
      Text = "Discard 1 Fire Energy card attached to Arcanine in order to use this attack."
    },
    {
      Name = "Take Down",
      Cost = { "Fire", "Fire", "Colorless", "Colorless" },
      ConvertedEnergyCost = 4,
      Damage = "80",
      Text = "Arcanine does 30 damage to itself."
    }
  },
  Weaknesses = {
    {
      Type = "Water",
      Value = "×2"
    }
  },
  ImageUrl = "https://images.pokemontcg.io/base1/23.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/23_hires.png"
}

if (not SERVER) then
  return
end
