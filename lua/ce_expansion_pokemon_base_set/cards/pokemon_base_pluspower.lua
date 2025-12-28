local CARD = CARD

CARD.Name = "pokemon_base_pluspower"
CARD.Description = "pokemon_base_pluspower_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_pluspower"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED

CARD.Attributes = {
  Id = "base1-84",
  Rarity = "uncommon",
  Supertype = "Trainer",
  Number = "84",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Keiji Kinebuchi",
  ImageUrl = "https://images.pokemontcg.io/base1/84.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/84_hires.png"
}

if (not SERVER) then
  return
end
