-- How the game looks. Every section is optional; the board works without any of it.

CardEngine.ExpansionSets.PokemonBase = CardEngine.ExpansionSets.PokemonBase or {}

local PokemonBase = CardEngine.ExpansionSets.PokemonBase
local Key = PokemonBase.Key

local MATERIAL_PATH = "card_engine/expansions/ce_expansion_pokemon_base_set/"

--- The yellow of the Pokémon logo, which the table's frames and dividing line borrow
local COLOR_TRIM = Color(255, 203, 5)

local COLOR_DAMAGE = Color(220, 60, 60)
local COLOR_TEXT = Color(255, 240, 240)
local COLOR_CONDITION = Color(180, 90, 200)
local COLOR_EFFECT = Color(90, 160, 220)
local COLOR_TOOL = Color(40, 40, 50, 230)
local PIP_OUTLINE = Color(15, 15, 20, 230)
local PIP_RIM = Color(255, 255, 255, 240)

local CONDITION_BADGES = {
	Paralyzed = { text = "PAR", color = Color(230, 200, 60) },
	Confused = { text = "CNF", color = Color(200, 120, 220) },
	Asleep = { text = "SLP", color = Color(110, 140, 220) },
	Poisoned = { text = "PSN", color = Color(120, 190, 90) },
}

--- Short tags for the Trainers that stay attached to a Pokémon
local ATTACHED_TAGS = {
	[PokemonBase.PLUSPOWER_ID] = "+10",
	[PokemonBase.DEFENDER_ID] = "-20",
}

--- Only a Pokémon in play gets overlays: not a card in a hand or a discard pile
local function inPlay(match, instance)
	return PokemonBase.IsInPlay(match, instance)
end

local function drawDamage(panel, match, instance, w, h)
	if (not inPlay(match, instance)) then
		return
	end

	local damage = PokemonBase.GetDamage(match, instance)

	if (damage <= 0) then
		return
	end

	local text = tostring(damage)

	surface.SetFont("CardEngineSmall")

	local textWidth, textHeight = surface.GetTextSize(text)
	local badgeWidth = math.max(textWidth + 8, 20)

	draw.RoundedBox(4, w - badgeWidth - 2, 2, badgeWidth, textHeight + 4, COLOR_DAMAGE)
	draw.SimpleText(text, "CardEngineSmall", w - badgeWidth * 0.5 - 2, 4, COLOR_TEXT, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP)
end

local function drawConditions(panel, match, instance, w, h)
	if (not inPlay(match, instance)) then
		return
	end

	surface.SetFont("CardEngineTiny")

	local y = 2

	for _, condition in ipairs(PokemonBase.GetConditions(match, instance)) do
		local badge = CONDITION_BADGES[condition]

		if (badge) then
			local textWidth, textHeight = surface.GetTextSize(badge.text)

			draw.RoundedBox(3, 2, y, textWidth + 6, textHeight + 2, badge.color)
			draw.SimpleText(badge.text, "CardEngineTiny", 5, y + 1, COLOR_TEXT, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)

			y = y + textHeight + 4
		end
	end
end

--- A pip for every unit of Energy in its type's colour (Double Colorless shows as two), with a light
--- rim inside a dark outline so a Water pip stands out on a blue card
local function drawEnergy(panel, match, instance, w, h)
	if (not inPlay(match, instance)) then
		return
	end

	local units = PokemonBase.GetEnergyUnits(match, instance)
	local size = math.max(7, math.min(11, w / 8))
	local x = 4
	local y = h - size - 4

	for _, unit in ipairs(units) do
		draw.RoundedBox(size * 0.5 + 2, x - 2, y - 2, size + 4, size + 4, PIP_OUTLINE)
		draw.RoundedBox(size * 0.5 + 1, x - 1, y - 1, size + 2, size + 2, PIP_RIM)
		draw.RoundedBox(size * 0.5, x, y, size, size, PokemonBase.TYPE_COLORS[unit] or COLOR_EFFECT)

		x = x + size + 4

		if (x + size > w - 4) then
			break
		end
	end
end

--- A tag for each PlusPower or Defender on the Pokémon, and a dot when an effect is in force
local function drawAttachments(panel, match, instance, w, h)
	if (not inPlay(match, instance)) then
		return
	end

	surface.SetFont("CardEngineTiny")

	local y = h - 24

	for _, attached in ipairs(match:GetAttached(instance)) do
		local tag = ATTACHED_TAGS[attached.cardID]

		if (tag) then
			local textWidth, textHeight = surface.GetTextSize(tag)

			draw.RoundedBox(3, w - textWidth - 9, y, textWidth + 6, textHeight + 2, COLOR_TOOL)
			draw.SimpleText(tag, "CardEngineTiny", w - 6, y + 1, COLOR_TRIM, TEXT_ALIGN_RIGHT, TEXT_ALIGN_TOP)

			y = y - textHeight - 4
		end
	end

	if (#match:GetEffects(instance) > 0) then
		draw.RoundedBox(3, w - 10, h - 10, 7, 7, COLOR_EFFECT)
	end
end

local function typeName(energyType)
	return energyType and CardEngine.T(Key("type_" .. string.lower(energyType))) or CardEngine.T(Key("inspect_none"))
end

local function printedType(match, instance, attribute)
	local printed = match:GetInstanceAttribute(instance, attribute, nil) or {}

	return printed[1] and printed[1].Type or nil
end

local function inspectPokemon(match, instance)
	local rows = {}

	if (not PokemonBase.IsInPlay(match, instance)) then
		return rows
	end

	local damage = PokemonBase.GetDamage(match, instance)

	table.insert(rows, {
		label = CardEngine.T(Key("inspect_hp")),
		color = damage > 0 and COLOR_DAMAGE or nil,
		value = CardEngine.T(Key("inspect_hp_value"), {
			remaining = PokemonBase.GetRemainingHP(match, instance),
			max = PokemonBase.GetMaxHP(match, instance),
		}),
	})

	local conditions = {}

	for _, condition in ipairs(PokemonBase.GetConditions(match, instance)) do
		table.insert(conditions, CardEngine.T(PokemonBase.CONDITIONS[condition].Label))
	end

	if (#conditions > 0) then
		table.insert(rows, {
			label = CardEngine.T(Key("inspect_conditions")),
			value = table.concat(conditions, ", "),
			color = COLOR_CONDITION,
		})
	end

	local units = {}

	for _, unit in ipairs(PokemonBase.GetEnergyUnits(match, instance)) do
		table.insert(units, typeName(unit))
	end

	table.insert(rows, {
		label = CardEngine.T(Key("inspect_energy")),
		value = #units > 0 and table.concat(units, ", ") or CardEngine.T(Key("inspect_none")),
	})

	-- Conversion 1 and 2 change these, which the card itself cannot show
	local weakness = PokemonBase.GetWeakness(match, instance)
	local resistance = PokemonBase.GetResistance(match, instance)

	table.insert(rows, {
		label = CardEngine.T(Key("inspect_weakness")),
		value = typeName(weakness),
		color = weakness ~= printedType(match, instance, "Weaknesses") and COLOR_EFFECT or nil,
	})

	table.insert(rows, {
		label = CardEngine.T(Key("inspect_resistance")),
		value = typeName(resistance),
		color = resistance ~= printedType(match, instance, "Resistances") and COLOR_EFFECT or nil,
	})

	if (not PokemonBase.IsDoll(match, instance)) then
		table.insert(rows, {
			label = CardEngine.T(Key("inspect_retreat")),
			value = tostring(PokemonBase.GetRetreatCost(match, instance)),
		})
	end

	local power = PokemonBase.GetPrintedPower(match:GetInstanceCard(instance))

	if (power) then
		table.insert(rows, {
			label = CardEngine.T(Key("inspect_power")),
			value = power.Name,
		})
	end

	return rows
end

--- The cost of an attack as a short string of type initials, e.g. "FFC"
local function costText(cost)
	local letters = {}

	for _, symbol in ipairs(cost or {}) do
		table.insert(letters, symbol == "Lightning" and "L" or string.sub(symbol, 1, 1))
	end

	return table.concat(letters)
end

local ACTIONS = {
	Order = {
		"AttachEnergy",
		"PlayBasic",
		"Evolve",
		"PlayTrainer",
		"UsePower",
		"Retreat",
		"DiscardDoll",
		"Attack",
		"EndTurn",
	},

	AttachEnergy = { Targets = 2, Label = Key("action_attach_energy") },
	Evolve = { Targets = 2, Label = Key("action_evolve") },
	PlayBasic = { Targets = 1, Label = Key("action_play_basic") },
	PlayTrainer = { Targets = 1, Label = Key("action_play_trainer") },
	Retreat = { Targets = 1, Label = Key("action_retreat") },
	EndTurn = { Targets = 0, Label = Key("action_end_turn") },

	-- Offered on the Pokémon that has the power, wherever it is
	UsePower = {
		Targets = 0,
		Label = Key("action_use_power"),

		OnCard = function(match, viewer, instance)
			return instance.controller == viewer and PokemonBase.IsInPlay(match, instance)
				and PokemonBase.GetPowerScript(match, instance) ~= nil
				and PokemonBase.GetPowerScript(match, instance).Activated == true
		end,

		Variants = function(match, viewer)
			local variants = {}

			for _, instance in ipairs(viewer and PokemonBase.GetPokemonInPlay(match, viewer) or {}) do
				local power = PokemonBase.GetPowerScript(match, instance)
				local printed = PokemonBase.GetPrintedPower(match:GetInstanceCard(instance))

				if (power and power.Activated and printed) then
					table.insert(variants, {
						key = instance.id,
						params = { card = instance.id },
						label = CardEngine.T(Key("action_use_power_named"), { name = printed.Name }),

						OnCard = function(_, _, card)
							return card.id == instance.id
						end,
					})
				end
			end

			return variants
		end,
	},

	DiscardDoll = {
		Targets = 1,
		Label = Key("action_discard_doll"),

		OnCard = function(match, viewer, instance)
			return instance.controller == viewer and PokemonBase.IsDoll(match, instance)
				and PokemonBase.IsInPlay(match, instance)
		end,
	},

	-- Each attack is its own button, named and priced like the card, offered on the Active Pokémon
	Attack = {
		Targets = 0,

		OnCard = function(match, viewer, instance)
			return instance.zone == "Active" and instance.controller == viewer
		end,

		Variants = function(match, viewer)
			local variants = {}
			local active = viewer and PokemonBase.GetActive(match, viewer)

			for index, attack in ipairs(active and PokemonBase.GetAttacks(match, active) or {}) do
				table.insert(variants, {
					key = index,
					params = { attack = index },

					label = CardEngine.T(attack.Damage and Key("attack_button") or Key("attack_button_no_damage"), {
						name = attack.Name,
						damage = tostring(attack.Damage or ""),
						cost = costText(attack.Cost),
					}),
				})
			end

			return variants
		end,
	},
}

local function nameOf(match, instanceOrID)
	return PokemonBase.NameOf(match, instanceOrID)
end

local LOG = {
	pokemon_damage = function(match, event)
		local key = Key("log_damage")

		if (event.weak) then
			key = Key("log_damage_weak")
		elseif (event.resisted) then
			key = Key("log_damage_resisted")
		end

		return CardEngine.T(key, { target = nameOf(match, event.instance), amount = event.amount })
	end,

	pokemon_healed = function(match, event)
		return CardEngine.T(Key("log_healed"), { target = nameOf(match, event.instance), amount = event.amount })
	end,

	pokemon_knocked_out = function(match, event)
		return CardEngine.T(Key("log_knocked_out"), { target = nameOf(match, event.instance) })
	end,

	pokemon_prize_taken = function(match, event)
		return CardEngine.T(Key("log_prize_taken"), {
			player = PokemonBase.PlayerName(match, event.player),
			remaining = event.remaining,
		})
	end,

	pokemon_condition_applied = function(match, event)
		return CardEngine.T(Key("log_condition_applied"), {
			target = nameOf(match, event.instance),
			condition = CardEngine.T(PokemonBase.CONDITIONS[event.condition].Label),
		})
	end,

	pokemon_condition_cured = function(match, event)
		return CardEngine.T(Key("log_condition_cured"), {
			target = nameOf(match, event.instance),
			condition = CardEngine.T(PokemonBase.CONDITIONS[event.condition].Label),
		})
	end,

	pokemon_promoted = function(match, event)
		return CardEngine.T(Key("log_promoted"), { target = nameOf(match, event.instance) })
	end,

	pokemon_switched = function(match, event)
		return CardEngine.T(Key("log_switched"), { target = nameOf(match, event.instance) })
	end,

	pokemon_mulligan = function(match, event)
		return CardEngine.T(Key("log_mulligan"), { player = PokemonBase.PlayerName(match, event.player) })
	end,
}

--- Registers how the game looks. Called from sh_init.lua once every file has loaded.
--- @realm client
function PokemonBase.RegisterPresentation()
	CardEngine.GameRules.RegisterPresentation(PokemonBase.EXPANSION_SET_ID, {
		Layout = {
			Battlefield = {
				{ zone = "Active", style = "slots", cardWidth = 96 },
				{ zone = "Bench", style = "slots", cardWidth = 64 },
			},
			Private = {
				{ zone = "Hand", style = "hand", cardWidth = 96 },
			},
			Stacks = {
				{ zone = "Prizes", style = "stack", cardWidth = 48 },
				{ zone = "Deck", style = "stack", cardWidth = 48 },
				{ zone = "Discard", style = "stack", cardWidth = 48 },
			},
		},

		CardOverlays = {
			damage = drawDamage,
			conditions = drawConditions,
			energy = drawEnergy,
			attachments = drawAttachments,
		},

		Actions = ACTIONS,
		Inspect = inspectPokemon,
		Log = LOG,
		Events = PokemonBase.PresentationEvents or {},

		Board = {
			Background = MATERIAL_PATH .. "board_background.jpg",
			CenterLogo = MATERIAL_PATH .. "board_logo_center.png",
			CardBack = MATERIAL_PATH .. "board_back.png",
			CoinHeads = MATERIAL_PATH .. "coin_heads.png",
			CoinTails = MATERIAL_PATH .. "coin_tails.png",

			DividerHeight = 72,
			DividerThickness = 6,

			ZoneOutline = COLOR_TRIM,
			ZoneOutlineThickness = 4,
			ZoneCornerRadius = 12,
			ZoneLabels = true,

			RowHeights = {
				Battlefield = 170,
				Stacks = 110,
			},
		},

		Theme = {
			Background = Color(20, 28, 48),
			Divider = COLOR_TRIM,
			ActiveTurn = Color(120, 210, 130),
			WaitingTurn = Color(255, 203, 5),
		},
	})
end
