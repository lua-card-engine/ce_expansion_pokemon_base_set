local CARD = CARD

CARD.Name = "pokemon_base_fire_energy"
CARD.Description = "pokemon_base_fire_energy_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_fire_energy"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED

CARD.Attributes = {
  Id = "base1-98",
  Rarity = "common",
  Supertype = "Energy",
  Subtype = "Basic",
  Number = "98",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Keiji Kinebuchi",
  ImageUrl = "https://images.pokemontcg.io/base1/98.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/98_hires.png"
}

if (not SERVER) then
  return
end
