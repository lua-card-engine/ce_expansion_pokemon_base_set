hook.Add(
	"CardEngineInitializeExpansionPacks",
	"CardEngine.PokemonBaseSet.InitializeExpansionPack",
	function()
		if (not CardEngine) then
			ErrorNoHalt("Card Engine not found! Expansion pack 'ce_expansion_pokemon_base_set' will not load.\n")
			return
		end

		local EXPANSION_SET_ID = "pokemon_base_set"

		-- Register the expansion set with its metadata and filterable attributes
		CardEngine.ExpansionSet.Register({
			UniqueID = EXPANSION_SET_ID,
			Name = "expansion_set_ce_expansion_pokemon_base_set",
			Image = "card_engine/expansions/ce_expansion_pokemon_base_set/set_logo",
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

		CardEngine.Collection.IncludeDirectory(
			CardEngine.PathCombine("ce_expansion_pokemon_base_set", "cards/"),
			nil,
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
			end
		)

		CardEngine.Language.IncludeDirectory(CardEngine.PathCombine("ce_expansion_pokemon_base_set", "languages/"))
	end
)
