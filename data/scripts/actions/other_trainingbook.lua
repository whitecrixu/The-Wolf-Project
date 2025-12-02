-- Converted from: other/trainingbook.lua
-- Original XML: actions.xml

local action1 = Action()
action1:id(12397)

local function onUse(player, item, fromPosition, target, toPosition, isHotkey)

	player:showTextDialog(item.itemid, text)
	return true
end

action1:onUse(onUse)
action1:register()