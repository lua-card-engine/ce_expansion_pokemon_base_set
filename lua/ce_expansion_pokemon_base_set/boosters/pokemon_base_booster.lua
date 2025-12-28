local BOOSTER = BOOSTER

BOOSTER.Name = "pokemon_base_booster"
BOOSTER.Description = "pokemon_base_booster_description"
BOOSTER.Material = "card_engine/expansions/pokemon_base_set/base_booster.png"
BOOSTER.MaterialWidth = 261
BOOSTER.MaterialHeight = 446
BOOSTER.SealHeight = 30
BOOSTER.CardCount = 5

-- Define the card pool for this booster pack
-- These are the card unique IDs that can appear in this pack
BOOSTER.CardPool = {
  "pokemon_base_zapdos",
  -- Add more card IDs here as they are created
}

-- Define the slot configuration for the booster pack
-- Each slot can have:
--   - attributeWeights: Roll for specific attribute values (e.g., Rarity, Type)
--   - requiredAttributes: Filter cards that MUST have certain attributes (e.g., IsTrainer = true)
--   - modifiers: Apply modifiers to the card (e.g., condition, foil)
--
-- Legacy support: You can still use rarityWeights instead of attributeWeights.Rarity
BOOSTER.SlotConfiguration = {
  -- Slot 1: Common Pokemon card (guaranteed)
  {
    requiredAttributes = {
      IsPokemon = true,
    },
    attributeWeights = {
      Rarity = {
        common = 1,
      },
    },
  },
  -- Slot 2: Common card (guaranteed)
  {
    attributeWeights = {
      Rarity = {
        common = 1,
      },
    },
  },
  -- Slot 3: Common or Uncommon
  {
    attributeWeights = {
      Rarity = {
        common = 70,
        uncommon = 30,
      },
    },
  },
  -- Slot 4: Uncommon or Rare
  {
    attributeWeights = {
      Rarity = {
        uncommon = 75,
        rare = 25,
      },
    },
  },
  -- Slot 5: Rare slot (chance for epic/legendary)
  {
    attributeWeights = {
      Rarity = {
        rare = 70,
        epic = 20,
        legendary = 10,
      },
    },
  },
}

if (not SERVER) then
  return
end
