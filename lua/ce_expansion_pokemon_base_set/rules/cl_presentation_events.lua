-- The set's own animation: damage floating off the Pokémon that took it. Coin flips and reveals
-- are drawn by Card Engine using this set's coin art (see Board in cl_presentation.lua).

CardEngine.ExpansionSets.PokemonBase = CardEngine.ExpansionSets.PokemonBase or {}

local PokemonBase = CardEngine.ExpansionSets.PokemonBase
local Key = PokemonBase.Key

--- How long a damage number floats for
local DAMAGE_FLOAT_TIME = 0.9

--- Floats the damage a Pokémon took up off its card
--- @param board Panel
--- @param event table
--- @param finished fun()
local function playDamage(board, event, finished)
	local target = board.GetCardPanel and board:GetCardPanel(event.instance)

	if (not IsValid(target) or (event.amount or 0) <= 0) then
		finished()
		return
	end

	local x, y = target:GetPos()

	local float = vgui.Create("EditablePanel", target:GetParent())
	float:SetSize(target:GetWide(), 30)
	float:SetPos(x, y)
	float:SetMouseInputEnabled(false)

	local startedAt = SysTime()
	local suffix = ""

	if (event.weak) then
		suffix = " " .. CardEngine.T(Key("weak_marker"))
	elseif (event.resisted) then
		suffix = " " .. CardEngine.T(Key("resisted_marker"))
	end

	float.Paint = function(panel, w, h)
		local progress = math.min(1, (SysTime() - startedAt) / DAMAGE_FLOAT_TIME)

		panel:SetPos(x, y - progress * 24)

		draw.SimpleText("-" .. event.amount .. suffix, "CardEngineMainSmall", w * 0.5, h * 0.5,
			Color(240, 80, 80, 255 * (1 - progress)), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
	end

	timer.Simple(DAMAGE_FLOAT_TIME, function()
		if (IsValid(float)) then
			float:Remove()
		end

		finished()
	end)
end

--- Picked up by RegisterPresentation
PokemonBase.PresentationEvents = {
	pokemon_damage = playDamage,
}
