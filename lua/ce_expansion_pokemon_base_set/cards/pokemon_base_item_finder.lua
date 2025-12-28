local CARD = CARD

CARD.Name = "pokemon_base_item_finder"
CARD.Description = "pokemon_base_item_finder_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_item_finder"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED

CARD.Attributes = {
  Id = "base1-74",
  Rarity = "rare",
  Supertype = "Trainer",
  Number = "74",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Keiji Kinebuchi",
  ImageUrl = "https://images.pokemontcg.io/base1/74.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/74_hires.png"
}

if (not SERVER) then
  return
end
