local CARD = CARD

CARD.Name = "pokemon_base_scoop_up"
CARD.Description = "pokemon_base_scoop_up_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_scoop_up"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED

CARD.Attributes = {
  Id = "base1-78",
  Rarity = "rare",
  Supertype = "Trainer",
  Number = "78",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Keiji Kinebuchi",
  ImageUrl = "https://images.pokemontcg.io/base1/78.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/78_hires.png"
}

if (not SERVER) then
  return
end
