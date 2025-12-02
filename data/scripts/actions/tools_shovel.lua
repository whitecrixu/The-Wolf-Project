-- Converted from: tools/shovel.lua
-- Original XML: actions.xml

local action1 = Action()
action1:id(2554)

local action2 = Action()
action2:id(5710)

local function onUse(player, item, fromPosition, target, toPosition, isHotkey)

	return onUseShovel(player, item, fromPosition, target, toPosition, isHotkey)
end

action1:onUse(onUse)
action1:register()
action2:onUse(onUse)
action2:register()