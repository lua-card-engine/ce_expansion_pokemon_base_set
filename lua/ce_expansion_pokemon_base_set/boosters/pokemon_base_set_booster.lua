local BOOSTER = BOOSTER

BOOSTER.Name = "pokemon_base_set_booster"
BOOSTER.Description = "pokemon_base_set_booster_description"
BOOSTER.Material = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_booster.png"
BOOSTER.MaterialWidth = 261
BOOSTER.MaterialHeight = 446
BOOSTER.SealHeight = 30

-- Define the card pool for this booster pack
-- These are the card unique IDs that can appear in this pack
BOOSTER.CardPool = {
	"pokemon_base_set_abra",
	"pokemon_base_set_alakazam",
	"pokemon_base_set_arcanine",
	"pokemon_base_set_beedrill",
	"pokemon_base_set_bill",
	"pokemon_base_set_blastoise",
	"pokemon_base_set_bulbasaur",
	"pokemon_base_set_caterpie",
	"pokemon_base_set_chansey",
	"pokemon_base_set_charizard",
	"pokemon_base_set_charmander",
	"pokemon_base_set_charmeleon",
	"pokemon_base_set_clefairy_doll",
	"pokemon_base_set_clefairy",
	"pokemon_base_set_computer_search",
	"pokemon_base_set_defender",
	"pokemon_base_set_devolution_spray",
	"pokemon_base_set_dewgong",
	"pokemon_base_set_diglett",
	"pokemon_base_set_doduo",
	"pokemon_base_set_double_colorless_energy",
	"pokemon_base_set_dragonair",
	"pokemon_base_set_dratini",
	"pokemon_base_set_drowzee",
	"pokemon_base_set_dugtrio",
	"pokemon_base_set_electabuzz",
	"pokemon_base_set_electrode",
	"pokemon_base_set_energy_removal",
	"pokemon_base_set_energy_retrieval",
	"pokemon_base_set_farfetch_d",
	"pokemon_base_set_fighting_energy",
	"pokemon_base_set_fire_energy",
	"pokemon_base_set_full_heal",
	"pokemon_base_set_gastly",
	"pokemon_base_set_grass_energy",
	"pokemon_base_set_growlithe",
	"pokemon_base_set_gust_of_wind",
	"pokemon_base_set_gyarados",
	"pokemon_base_set_haunter",
	"pokemon_base_set_hitmonchan",
	"pokemon_base_set_impostor_professor_oak",
	"pokemon_base_set_item_finder",
	"pokemon_base_set_ivysaur",
	"pokemon_base_set_jynx",
	"pokemon_base_set_kadabra",
	"pokemon_base_set_kakuna",
	"pokemon_base_set_koffing",
	"pokemon_base_set_lass",
	"pokemon_base_set_lightning_energy",
	"pokemon_base_set_machamp",
	"pokemon_base_set_machoke",
	"pokemon_base_set_machop",
	"pokemon_base_set_magikarp",
	"pokemon_base_set_magmar",
	"pokemon_base_set_magnemite",
	"pokemon_base_set_magneton",
	"pokemon_base_set_maintenance",
	"pokemon_base_set_metapod",
	"pokemon_base_set_mewtwo",
	"pokemon_base_set_nidoking",
	"pokemon_base_set_nidoran",
	"pokemon_base_set_nidorino",
	"pokemon_base_set_ninetales",
	"pokemon_base_set_onix",
	"pokemon_base_set_pidgeotto",
	"pokemon_base_set_pidgey",
	"pokemon_base_set_pikachu",
	"pokemon_base_set_pluspower",
	"pokemon_base_set_pok_dex",
	"pokemon_base_set_pok_mon_breeder",
	"pokemon_base_set_pok_mon_center",
	"pokemon_base_set_pok_mon_flute",
	"pokemon_base_set_pok_mon_trader",
	"pokemon_base_set_poliwag",
	"pokemon_base_set_poliwhirl",
	"pokemon_base_set_poliwrath",
	"pokemon_base_set_ponyta",
	"pokemon_base_set_porygon",
	"pokemon_base_set_potion",
	"pokemon_base_set_professor_oak",
	"pokemon_base_set_psychic_energy",
	"pokemon_base_set_raichu",
	"pokemon_base_set_raticate",
	"pokemon_base_set_rattata",
	"pokemon_base_set_revive",
	"pokemon_base_set_sandshrew",
	"pokemon_base_set_scoop_up",
	"pokemon_base_set_seel",
	"pokemon_base_set_squirtle",
	"pokemon_base_set_starmie",
	"pokemon_base_set_staryu",
	"pokemon_base_set_super_energy_removal",
	"pokemon_base_set_super_potion",
	"pokemon_base_set_switch",
	"pokemon_base_set_tangela",
	"pokemon_base_set_venusaur",
	"pokemon_base_set_voltorb",
	"pokemon_base_set_vulpix",
	"pokemon_base_set_wartortle",
	"pokemon_base_set_water_energy",
	"pokemon_base_set_weedle",
	"pokemon_base_set_zapdos",
}

-- Define the slot configuration for the booster pack
-- Each slot can have:
--   - attributeWeights: Roll for specific attribute values (e.g., Rarity, Type)
--   - requiredAttributes: Filter cards that MUST have certain attributes (e.g., IsTrainer = true)
--   - modifiers: Apply modifiers to the card (e.g., condition, foil)
--
-- Legacy support: You can still use rarityWeights instead of attributeWeights.Rarity
BOOSTER.SlotConfiguration = {
	-- Slot 1: Common Pokemon
	{
		attributeWeights = {
			Rarity = {
				common = 1,
			},
		},
	},

	-- Slots 2-5: Commons
	{
		attributeWeights = {
			Rarity = {
				common = 1,
			},
		},
	},
	{
		attributeWeights = {
			Rarity = {
				common = 1,
			},
		},
	},
	{
		attributeWeights = {
			Rarity = {
				common = 1,
			},
		},
	},
	{
		attributeWeights = {
			Rarity = {
				common = 1,
			},
		},
	},

	-- Slots 6-8: Uncommons
	{
		attributeWeights = {
			Rarity = {
				uncommon = 1,
			},
		},
	},
	{
		attributeWeights = {
			Rarity = {
				uncommon = 1,
			},
		},
	},
	{
		attributeWeights = {
			Rarity = {
				uncommon = 1,
			},
		},
	},

	-- Slot 9: Rare / Holo Rare
	{
		attributeWeights = {
			Rarity = {
				rare = 1,
			},
		},
		requiredAttributes = {
			["Variants.Holo"] = true,
		},
	},

	-- Slots 10-11: Basic Energy
	{
		requiredAttributes = {
			IsEnergy = true,
		},
		attributeWeights = {
			Rarity = {
				common = 1,
			},
		},
	},
	{
		requiredAttributes = {
			IsEnergy = true,
		},
		attributeWeights = {
			Rarity = {
				common = 1,
			},
		},
	},
}

if (not SERVER) then
	return
end
