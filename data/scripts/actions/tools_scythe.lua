-- Converted from: tools/scythe.lua
-- Original XML: actions.xml

local action1 = Action()
action1:id(2550)

local function onUse(player, item, fromPosition, target, toPosition, isHotkey)

	return onUseScythe(player, item, fromPosition, target, toPosition, isHotkey)
end

action1:onUse(onUse)
action1:register()