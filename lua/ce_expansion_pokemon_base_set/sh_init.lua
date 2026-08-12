hook.Add(
	"CardEngineInitializeExpansionPacks",
	"CardEngine.PokemonBaseSet.InitializeExpansionPack",
	function()
		local EXPANSION_SET_ID = "pokemon_base_set"

		-- Register the expansion set with its metadata and filterable attributes
		CardEngine.ExpansionSet.Register({
			UniqueID = EXPANSION_SET_ID,
			Name = "expansion_set_ce_expansion_pokemon_base_set",
			RemoteDownloadURL = "https://card-engine-r2.luttonline.nl/",

			-- Define which attributes should appear as filters in the collection menu
			FilterableAttributes = {
				-- E.g: Trainer, Pokémon, Energy
				Supertype = {
					Name = "collection_filter_supertype",
					AttributeName = "Supertype",
					IsArray = false,
				},
				-- E.g: Basic, Stage 1, Stage 2
				Subtype = {
					Name = "collection_filter_subtype",
					AttributeName = "Subtype",
					IsArray = false,
				},
				Types = {
					Name = "collection_filter_types",
					AttributeName = "Types",
					IsArray = true,
				},
				Rarity = {
					Name = "collection_filter_rarity",
					AttributeName = "Rarity",
					IsArray = false,
				},
			},
		})

		-- cards/sh_all_cards.lua is a generated file (see tools/concat_cards.js) that
		-- concatenates all individual card files into a single file, to reduce the
		-- amount of Lua files the addon has to ship/include
		local sharedFilePath = CardEngine.PathCombine("ce_expansion_pokemon_base_set", "cards/sh_all_cards.lua")
		AddCSLuaFile(sharedFilePath)
		local ALL_CARDS = include(sharedFilePath)

		CardEngine.Collection.IncludeRegistrations(
			ALL_CARDS,
			-- Automatically inject the ExpansionSet property into all cards loaded from this expansion pack
			function(fileName, cardFilePath)
				CARD.ExpansionSet = EXPANSION_SET_ID
			end
		)

		CardEngine.Booster.IncludeDirectory(
			CardEngine.PathCombine("ce_expansion_pokemon_base_set", "boosters/"),
			nil,
			function(fileName, boosterFilePath)
				BOOSTER.ExpansionSet = EXPANSION_SET_ID

				-- All our base set boosters have the same seeding and settings, so we can just set them here instead of in each individual booster file
				-- Only the material will be different for each booster, as that is the only thing that changes between them
				BOOSTER.Name = "ce_expansion_pokemon_base_set_booster"
				BOOSTER.Description = "ce_expansion_pokemon_base_set_booster_description"
				BOOSTER.MaterialWidth = 261
				BOOSTER.MaterialHeight = 446
				BOOSTER.SealHeight = 30

				BOOSTER.RearTexture =
				"card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_booster_back"

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
				--   - requiredAttributes: Filter cards that MUST have certain attributes (e.g., Category = "Trainer")
				--   - modifiers: Apply modifiers to the card (e.g., condition, foil)
				--
				-- Legacy support: You can still use rarityWeights instead of attributeWeights.Rarity
				BOOSTER.SlotConfiguration = {
					-- Slot 1: Common Pokemon
					{
						attributeWeights = {
							Rarity = {
								Common = 1,
							},
						},
					},

					-- Slots 2-5: Commons
					{
						attributeWeights = {
							Rarity = {
								Common = 1,
							},
						},
					},
					{
						attributeWeights = {
							Rarity = {
								Common = 1,
							},
						},
					},
					{
						attributeWeights = {
							Rarity = {
								Common = 1,
							},
						},
					},
					{
						attributeWeights = {
							Rarity = {
								Common = 1,
							},
						},
					},

					-- Slots 6-8: Uncommons
					{
						attributeWeights = {
							Rarity = {
								Uncommon = 1,
							},
						},
					},
					{
						attributeWeights = {
							Rarity = {
								Uncommon = 1,
							},
						},
					},
					{
						attributeWeights = {
							Rarity = {
								Uncommon = 1,
							},
						},
					},

					-- Slot 9: Rare / Holo Rare
					{
						attributeWeights = {
							Rarity = {
								Rare = 1,
							},
						},
						requiredAttributes = {
							["Variants.Holo"] = true,
						},
					},

					-- Slots 10-11: Basic Energy
					{
						requiredAttributes = {
							EnergyType = "Normal",
						},
						attributeWeights = {
							Rarity = {
								Common = 1,
							},
						},
					},
					{
						requiredAttributes = {
							EnergyType = "Normal",
						},
						attributeWeights = {
							Rarity = {
								Common = 1,
							},
						},
					},
				}
			end
		)

		CardEngine.Language.IncludeDirectory(CardEngine.PathCombine("ce_expansion_pokemon_base_set", "languages/"))
	end
)
