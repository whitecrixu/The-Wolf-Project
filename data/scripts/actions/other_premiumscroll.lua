-- Converted from: other/premiumscroll.lua
-- Original XML: actions.xml

local action1 = Action()
action1:id(16101)

local function onUse(player, item, fromPosition, target, toPosition, isHotkey)

	player:addPremiumDays(30)
	player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have received 30 premium days.")
	item:remove(1)
	return true
end

action1:onUse(onUse)
action1:register()