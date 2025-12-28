local CARD = CARD

CARD.Name = "pokemon_base_computer_search"
CARD.Description = "pokemon_base_computer_search_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_computer_search"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED

CARD.Attributes = {
  Id = "base1-71",
  Rarity = "rare",
  Supertype = "Trainer",
  Number = "71",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Keiji Kinebuchi",
  ImageUrl = "https://images.pokemontcg.io/base1/71.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/71_hires.png"
}

if (not SERVER) then
  return
end
