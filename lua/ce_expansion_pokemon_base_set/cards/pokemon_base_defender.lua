local CARD = CARD

CARD.Name = "pokemon_base_defender"
CARD.Description = "pokemon_base_defender_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_defender"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED

CARD.Attributes = {
  Id = "base1-80",
  Rarity = "uncommon",
  Supertype = "Trainer",
  Number = "80",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Keiji Kinebuchi",
  ImageUrl = "https://images.pokemontcg.io/base1/80.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/80_hires.png"
}

if (not SERVER) then
  return
end
