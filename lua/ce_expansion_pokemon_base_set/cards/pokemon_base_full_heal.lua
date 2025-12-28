local CARD = CARD

CARD.Name = "pokemon_base_full_heal"
CARD.Description = "pokemon_base_full_heal_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_full_heal"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED

CARD.Attributes = {
  Id = "base1-82",
  Rarity = "uncommon",
  Supertype = "Trainer",
  Number = "82",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Keiji Kinebuchi",
  ImageUrl = "https://images.pokemontcg.io/base1/82.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/82_hires.png"
}

if (not SERVER) then
  return
end
