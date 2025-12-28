local CARD = CARD

CARD.Name = "pokemon_base_professor_oak"
CARD.Description = "pokemon_base_professor_oak_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_professor_oak"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED

CARD.Attributes = {
  Id = "base1-88",
  Rarity = "uncommon",
  Supertype = "Trainer",
  Number = "88",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Ken Sugimori",
  ImageUrl = "https://images.pokemontcg.io/base1/88.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/88_hires.png"
}

if (not SERVER) then
  return
end
