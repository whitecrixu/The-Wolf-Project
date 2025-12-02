-- Converted from: tools/pick.lua
-- Original XML: actions.xml

local action1 = Action()
action1:id(2553)

local function onUse(player, item, fromPosition, target, toPosition, isHotkey)

	return onUsePick(player, item, fromPosition, target, toPosition, isHotkey)
end

action1:onUse(onUse)
action1:register()