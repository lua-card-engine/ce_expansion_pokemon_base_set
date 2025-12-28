local CARD = CARD

CARD.Name = "pokemon_base_pok_mon_trader"
CARD.Description = "pokemon_base_pok_mon_trader_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_pok_mon_trader"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED

CARD.Attributes = {
  Id = "base1-77",
  Rarity = "rare",
  Supertype = "Trainer",
  Number = "77",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Ken Sugimori",
  ImageUrl = "https://images.pokemontcg.io/base1/77.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/77_hires.png"
}

if (not SERVER) then
  return
end
