local CARD = CARD

CARD.Name = "pokemon_base_pok_mon_flute"
CARD.Description = "pokemon_base_pok_mon_flute_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_pok_mon_flute"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED

CARD.Attributes = {
  Id = "base1-86",
  Rarity = "uncommon",
  Supertype = "Trainer",
  Number = "86",
  Set = "Base",
  SetCode = "base1",
  Series = "Base",
  Artist = "Keiji Kinebuchi",
  ImageUrl = "https://images.pokemontcg.io/base1/86.png",
  ImageUrlHiRes = "https://images.pokemontcg.io/base1/86_hires.png"
}

if (not SERVER) then
  return
end
