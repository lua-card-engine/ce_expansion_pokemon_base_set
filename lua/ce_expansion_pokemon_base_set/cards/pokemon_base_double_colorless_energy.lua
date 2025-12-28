local CARD = CARD

CARD.Name = "pokemon_base_double_colorless_energy"
CARD.Description = "pokemon_base_double_colorless_energy_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_double_colorless_energy"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED

CARD.Attributes = {
  Id = "base1-96",
  Rarity = "uncommon",
  Supertype = "Energy",
  Subtype = "Special",
  Number = "96",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Keiji Kinebuchi",
  ImageUrl = "https://images.pokemontcg.io/base1/96.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/96_hires.png"
}

if (not SERVER) then
  return
end
