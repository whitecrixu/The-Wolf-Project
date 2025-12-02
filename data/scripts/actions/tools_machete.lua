-- Converted from: tools/machete.lua
-- Original XML: actions.xml

local action1 = Action()
action1:id(2420)

local action2 = Action()
action2:id(2442)

local function onUse(player, item, fromPosition, target, toPosition, isHotkey)

	return onUseMachete(player, item, fromPosition, target, toPosition, isHotkey)
end

action1:onUse(onUse)
action1:register()
action2:onUse(onUse)
action2:register()