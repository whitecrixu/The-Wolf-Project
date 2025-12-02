-- Converted from: other/spellbook.lua
-- Original XML: actions.xml

local action1 = Action()
action1:id(2175)

local action2 = Action()
action2:id(6120)

local action3 = Action()
action3:id(8900)
action3:id(8901)
action3:id(8902)
action3:id(8903)
action3:id(8904)

local action4 = Action()
action4:id(8918)

local action5 = Action()
action5:id(12647)

local action6 = Action()
action6:id(16112)

local action7 = Action()
action7:id(18401)

local action8 = Action()
action8:id(22422)
action8:id(22423)
action8:id(22424)

local function onUse(player, item, fromPosition, target, toPosition, isHotkey)

	local count = getPlayerInstantSpellCount(player)
	local text = ""
	local spells = {}
	for i = 0, count - 1 do
		local spell = getPlayerInstantSpellInfo(player, i)
		if spell.level ~= 0 then
			if spell.manapercent > 0 then
				spell.mana = spell.manapercent .. "%"
			end
			spells[#spells + 1] = spell
		end
	end

	table.sort(spells, function(a, b) return a.level < b.level end)

	local prevLevel = -1
	for i, spell in ipairs(spells) do
		local line = ""
		if prevLevel ~= spell.level then
			if i ~= 1 then
				line = "\n"
			end
			line = line .. "Spells for Level " .. spell.level .. "\n"
			prevLevel = spell.level
		end
		text = text .. line .. "  " .. spell.words .. " - " .. spell.name .. " : " .. spell.mana .. "\n"
	end

	player:showTextDialog(item:getId(), text)
	return true
end

action1:onUse(onUse)
action1:register()
action2:onUse(onUse)
action2:register()
action3:onUse(onUse)
action3:register()
action4:onUse(onUse)
action4:register()
action5:onUse(onUse)
action5:register()
action6:onUse(onUse)
action6:register()
action7:onUse(onUse)
action7:register()
action8:onUse(onUse)
action8:register()