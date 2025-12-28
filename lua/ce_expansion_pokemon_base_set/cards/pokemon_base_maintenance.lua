local CARD = CARD

CARD.Name = "pokemon_base_maintenance"
CARD.Description = "pokemon_base_maintenance_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_maintenance"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED

CARD.Attributes = {
  Id = "base1-83",
  Rarity = "uncommon",
  Supertype = "Trainer",
  Number = "83",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Keiji Kinebuchi",
  ImageUrl = "https://images.pokemontcg.io/base1/83.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/83_hires.png"
}

if (not SERVER) then
  return
end
