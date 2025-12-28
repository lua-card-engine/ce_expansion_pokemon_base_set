local CARD = CARD

CARD.Name = "pokemon_base_potion"
CARD.Description = "pokemon_base_potion_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_potion"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED

CARD.Attributes = {
  Id = "base1-94",
  Rarity = "common",
  Supertype = "Trainer",
  Number = "94",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Keiji Kinebuchi",
  ImageUrl = "https://images.pokemontcg.io/base1/94.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/94_hires.png"
}

if (not SERVER) then
  return
end
