-- Converted from: other/checkbless.lua
-- Original XML: actions.xml

local action1 = Action()
action1:id(6561)

local action2 = Action()
action2:id(12424)

local function onUse(player, item, fromPosition, target, toPosition, isHotkey)

	local result, bless = 'Received blessings:'
	for i = 1, #blessings do
		bless = blessings[i]
		result = player:hasBlessing(bless.id) and result .. '\n' .. bless.name or result
	end

	player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 20 > result:len() and 'No blessings received.' or result)
	return true
end

action1:onUse(onUse)
action1:register()
action2:onUse(onUse)
action2:register()