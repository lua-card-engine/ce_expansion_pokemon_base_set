local CARD = CARD
CARD.Name = "ce_expansion_pokemon_base_set_nidoran"
CARD.Description = "ce_expansion_pokemon_base_set_nidoran_description"
CARD.Texture = "card_engine/expansions/ce_expansion_pokemon_base_set/pokemon_base_set_nidoran"
CARD.RearTexture = "card_engine/expansions/ce_expansion_pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
CARD.Attributes = {
	Category = "Pokemon",
	Id = "base1-55",
	Illustrator = "Ken Sugimori",
	LocalId = "55",
	Rarity = "Common",
	Set = {
		CardCount = {
			Official = 102,
			Total = 102
		},
		Id = "base1",
		Logo = "https://assets.tcgdex.net/en/base/base1/logo",
		Name = "Base Set"
	},
	Variants = {
		FirstEdition = true,
		Holo = false,
		Normal = true,
		Reverse = false,
		WPromo = false
	},
	VariantsDetailed = {
		{
			Type = "normal",
			Subtype = "unlimited",
			Size = "standard"
		},
		{
			Type = "normal",
			Subtype = "shadowless",
			Size = "standard",
			Stamp = {
				"1st-edition"
			}
		},
		{
			Type = "normal",
			Subtype = "shadowless",
			Size = "standard"
		},
		{
			Type = "normal",
			Subtype = "1999-2000-copyright",
			Size = "standard"
		}
	},
	DexId = {
		32
	},
	Hp = 40,
	Types = {
		"Grass"
	},
	Stage = "Basic",
	Attacks = {
		{
			Cost = {
				"Grass"
			},
			Name = "Horn Hazard",
			Effect = "Flip a coin. If tails, this attack does nothing.",
			Damage = 30
		}
	},
	Weaknesses = {
		{
			Type = "Psychic",
			Value = "×2"
		}
	},
	Legal = {
		Standard = false,
		Expanded = false
	},
	Updated = "2025-11-14T00:13:03+01:00",
	Pricing = {
		Cardmarket = nil,
		Tcgplayer = nil
	}
}
