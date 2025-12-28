local CARD = CARD

CARD.Name = "pokemon_base_gust_of_wind"
CARD.Description = "pokemon_base_gust_of_wind_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_gust_of_wind"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED

CARD.Attributes = {
  Id = "base1-93",
  Rarity = "common",
  Supertype = "Trainer",
  Number = "93",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Keiji Kinebuchi",
  ImageUrl = "https://images.pokemontcg.io/base1/93.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/93_hires.png"
}

if (not SERVER) then
  return
end
