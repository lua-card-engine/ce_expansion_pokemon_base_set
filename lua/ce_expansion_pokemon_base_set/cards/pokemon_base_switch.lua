local CARD = CARD

CARD.Name = "pokemon_base_switch"
CARD.Description = "pokemon_base_switch_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_switch"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED

CARD.Attributes = {
  Id = "base1-95",
  Rarity = "common",
  Supertype = "Trainer",
  Number = "95",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Keiji Kinebuchi",
  ImageUrl = "https://images.pokemontcg.io/base1/95.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/95_hires.png"
}

if (not SERVER) then
  return
end
