local CARD = CARD

CARD.Name = "pokemon_base_alakazam"
CARD.Description = "pokemon_base_alakazam_description"
CARD.Texture = "card_engine/expansions/pokemon_base_set/base_alakazam"
CARD.RearTexture = "card_engine/expansions/pokemon_base_set/back"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
CARD.HolographicStrength = Vector(1, 1, 1)
CARD.HolographicTexture = "card_engine/holo_rainbow_strong"

CARD.Attributes = {
	Id = "base1-1",
	Rarity = "rare",
	Supertype = "Pokémon",
	Subtype = "Stage 2",
	Number = "1",
	Set = "Base",
	SetCode = "base1",
	Series = "Base",
	Artist = "Ken Sugimori",
	Types = { "Psychic" },
	HP = "80",
	Level = "42",
	EvolvesFrom = "Kadabra",
	NationalPokedexNumber = 65,
	RetreatCost = { "Colorless", "Colorless", "Colorless" },
	ConvertedRetreatCost = 3,
	Ability = {
		Name = "Damage Swap",
		Text =
		"As often as you like during your turn (before your attack), you may move 1 damage counter from 1 of your Pokémon to another as long as you don't Knock Out that Pokémon. This power can't be used if Alakazam is Asleep, Confused, or Paralyzed.",
		Type = "Pokémon Power"
	},
	Attacks = {
		{
			Name = "Confuse Ray",
			Cost = { "Psychic", "Psychic", "Psychic" },
			ConvertedEnergyCost = 3,
			Damage = "30",
			Text = "Flip a coin. If heads, the Defending Pokémon is now Confused."
		}
	},
	Weaknesses = {
		{
			Type = "Psychic",
			Value = "×2"
		}
	},
	ImageUrl = "https://images.pokemontcg.io/base1/1.png",
	ImageUrlHiRes = "https://images.pokemontcg.io/base1/1_hires.png"
}

if (not SERVER) then
	return
end
