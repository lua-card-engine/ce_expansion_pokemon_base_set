local CARD = CARD

CARD.Name = "pokemon_base_pok_dex"
CARD.Description = "pokemon_base_pok_dex_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_pok_dex"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED

CARD.Attributes = {
  Id = "base1-87",
  Rarity = "uncommon",
  Supertype = "Trainer",
  Number = "87",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Keiji Kinebuchi",
  ImageUrl = "https://images.pokemontcg.io/base1/87.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/87_hires.png"
}

if (not SERVER) then
  return
end
