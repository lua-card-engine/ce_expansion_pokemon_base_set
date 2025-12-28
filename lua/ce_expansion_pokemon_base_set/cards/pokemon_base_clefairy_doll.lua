local CARD = CARD

CARD.Name = "pokemon_base_clefairy_doll"
CARD.Description = "pokemon_base_clefairy_doll_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_clefairy_doll"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
CARD.HolographicStrength = Vector(1, 1, 1)
CARD.HolographicTexture = "card_engine/holo_rainbow_strong"

CARD.Attributes = {
  Id = "base1-70",
  Rarity = "rare",
  Supertype = "Trainer",
  Number = "70",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Keiji Kinebuchi",
  HP = "10",
  ImageUrl = "https://images.pokemontcg.io/base1/70.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/70_hires.png"
}

if (not SERVER) then
  return
end
