local CARD = CARD

CARD.Name = "pokemon_base_super_energy_removal"
CARD.Description = "pokemon_base_super_energy_removal_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_super_energy_removal"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED

CARD.Attributes = {
  Id = "base1-79",
  Rarity = "rare",
  Supertype = "Trainer",
  Number = "79",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Keiji Kinebuchi",
  ImageUrl = "https://images.pokemontcg.io/base1/79.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/79_hires.png"
}

if (not SERVER) then
  return
end
