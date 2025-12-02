-- Converted from: tools/rope.lua
-- Original XML: actions.xml

local action1 = Action()
action1:id(2120)

local action2 = Action()
action2:id(7731)

local function onUse(player, item, fromPosition, target, toPosition, isHotkey)

	return onUseRope(player, item, fromPosition, target, toPosition, isHotkey)
end

action1:onUse(onUse)
action1:register()
action2:onUse(onUse)
action2:register()