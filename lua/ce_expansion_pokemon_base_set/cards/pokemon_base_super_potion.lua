local CARD = CARD

CARD.Name = "pokemon_base_super_potion"
CARD.Description = "pokemon_base_super_potion_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_super_potion"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED

CARD.Attributes = {
  Id = "base1-90",
  Rarity = "uncommon",
  Supertype = "Trainer",
  Number = "90",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Keiji Kinebuchi",
  ImageUrl = "https://images.pokemontcg.io/base1/90.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/90_hires.png"
}

if (not SERVER) then
  return
end
