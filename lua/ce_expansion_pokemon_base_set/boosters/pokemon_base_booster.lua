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
	"pokemon_base_abra",
	"pokemon_base_alakazam",
	"pokemon_base_arcanine",
	"pokemon_base_beedrill",
	"pokemon_base_bill",
	"pokemon_base_blastoise",
	"pokemon_base_bulbasaur",
	"pokemon_base_caterpie",
	"pokemon_base_chansey",
	"pokemon_base_charizard",
	"pokemon_base_charmander",
	"pokemon_base_charmeleon",
	"pokemon_base_clefairy_doll",
	"pokemon_base_clefairy",
	"pokemon_base_computer_search",
	"pokemon_base_defender",
	"pokemon_base_devolution_spray",
	"pokemon_base_dewgong",
	"pokemon_base_diglett",
	"pokemon_base_doduo",
	"pokemon_base_double_colorless_energy",
	"pokemon_base_dragonair",
	"pokemon_base_dratini",
	"pokemon_base_drowzee",
	"pokemon_base_dugtrio",
	"pokemon_base_electabuzz",
	"pokemon_base_electrode",
	"pokemon_base_energy_removal",
	"pokemon_base_energy_retrieval",
	"pokemon_base_farfetch_d",
	"pokemon_base_fighting_energy",
	"pokemon_base_fire_energy",
	"pokemon_base_full_heal",
	"pokemon_base_gastly",
	"pokemon_base_grass_energy",
	"pokemon_base_growlithe",
	"pokemon_base_gust_of_wind",
	"pokemon_base_gyarados",
	"pokemon_base_haunter",
	"pokemon_base_hitmonchan",
	"pokemon_base_impostor_professor_oak",
	"pokemon_base_item_finder",
	"pokemon_base_ivysaur",
	"pokemon_base_jynx",
	"pokemon_base_kadabra",
	"pokemon_base_kakuna",
	"pokemon_base_koffing",
	"pokemon_base_lass",
	"pokemon_base_lightning_energy",
	"pokemon_base_machamp",
	"pokemon_base_machoke",
	"pokemon_base_machop",
	"pokemon_base_magikarp",
	"pokemon_base_magmar",
	"pokemon_base_magnemite",
	"pokemon_base_magneton",
	"pokemon_base_maintenance",
	"pokemon_base_metapod",
	"pokemon_base_mewtwo",
	"pokemon_base_nidoking",
	"pokemon_base_nidoran",
	"pokemon_base_nidorino",
	"pokemon_base_ninetales",
	"pokemon_base_onix",
	"pokemon_base_pidgeotto",
	"pokemon_base_pidgey",
	"pokemon_base_pikachu",
	"pokemon_base_pluspower",
	"pokemon_base_pok_dex",
	"pokemon_base_pok_mon_breeder",
	"pokemon_base_pok_mon_center",
	"pokemon_base_pok_mon_flute",
	"pokemon_base_pok_mon_trader",
	"pokemon_base_poliwag",
	"pokemon_base_poliwhirl",
	"pokemon_base_poliwrath",
	"pokemon_base_ponyta",
	"pokemon_base_porygon",
	"pokemon_base_potion",
	"pokemon_base_professor_oak",
	"pokemon_base_psychic_energy",
	"pokemon_base_raichu",
	"pokemon_base_raticate",
	"pokemon_base_rattata",
	"pokemon_base_revive",
	"pokemon_base_sandshrew",
	"pokemon_base_scoop_up",
	"pokemon_base_seel",
	"pokemon_base_squirtle",
	"pokemon_base_starmie",
	"pokemon_base_staryu",
	"pokemon_base_super_energy_removal",
	"pokemon_base_super_potion",
	"pokemon_base_switch",
	"pokemon_base_tangela",
	"pokemon_base_venusaur",
	"pokemon_base_voltorb",
	"pokemon_base_vulpix",
	"pokemon_base_wartortle",
	"pokemon_base_water_energy",
	"pokemon_base_weedle",
	"pokemon_base_zapdos",
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
