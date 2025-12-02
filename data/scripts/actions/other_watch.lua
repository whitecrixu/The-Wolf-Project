-- Converted from: other/watch.lua
-- Original XML: actions.xml

local action1 = Action()
action1:id(1728)
action1:id(1729)
action1:id(1730)
action1:id(1731)

local action2 = Action()
action2:id(2036)

local function onUse(player, item, fromPosition, target, toPosition, isHotkey)

	player:sendTextMessage(MESSAGE_INFO_DESCR, "The time is " .. getFormattedWorldTime() .. ".")
	return true
end

action1:onUse(onUse)
action1:register()
action2:onUse(onUse)
action2:register()