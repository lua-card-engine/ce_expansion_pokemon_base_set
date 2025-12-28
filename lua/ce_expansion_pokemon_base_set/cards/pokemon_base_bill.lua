local CARD = CARD

CARD.Name = "pokemon_base_bill"
CARD.Description = "pokemon_base_bill_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_bill"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED

CARD.Attributes = {
  Id = "base1-91",
  Rarity = "common",
  Supertype = "Trainer",
  Number = "91",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Ken Sugimori",
  ImageUrl = "https://images.pokemontcg.io/base1/91.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/91_hires.png"
}

if (not SERVER) then
  return
end
