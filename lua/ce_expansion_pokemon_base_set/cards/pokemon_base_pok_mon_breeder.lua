local CARD = CARD

CARD.Name = "pokemon_base_pok_mon_breeder"
CARD.Description = "pokemon_base_pok_mon_breeder_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_pok_mon_breeder"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED

CARD.Attributes = {
  Id = "base1-76",
  Rarity = "rare",
  Supertype = "Trainer",
  Number = "76",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Ken Sugimori",
  ImageUrl = "https://images.pokemontcg.io/base1/76.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/76_hires.png"
}

if (not SERVER) then
  return
end
