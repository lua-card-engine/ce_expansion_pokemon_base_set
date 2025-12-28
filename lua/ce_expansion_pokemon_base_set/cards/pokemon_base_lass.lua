local CARD = CARD

CARD.Name = "pokemon_base_lass"
CARD.Description = "pokemon_base_lass_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_lass"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED

CARD.Attributes = {
  Id = "base1-75",
  Rarity = "rare",
  Supertype = "Trainer",
  Number = "75",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Ken Sugimori",
  ImageUrl = "https://images.pokemontcg.io/base1/75.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/75_hires.png"
}

if (not SERVER) then
  return
end
