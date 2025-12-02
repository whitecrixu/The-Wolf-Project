-- Converted from: tools/noxiousclaw.lua
-- Original XML: actions.xml

local action1 = Action()
action1:id(10309)

local function onUse(player, item, fromPosition, target, toPosition, isHotkey)

	local player, useItem, depleteChance = player, item, 5
	if math.random(100) <= depleteChance then
		player:addCondition(cursed)
		useItem:transform(10312)
		useItem:decay()
		player:getPosition():sendMagicEffect(CONST_ME_MAGIC_RED)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'Ouch! The serpent claw stabbed you.')
	else
		if player:getCondition(CONDITION_POISON) then
			player:removeCondition(CONDITION_POISON)
		end
		useItem:transform(10311)
		useItem:decay()
		player:getPosition():sendMagicEffect(CONST_ME_MAGIC_GREEN)
	end
	return true
end

action1:onUse(onUse)
action1:register()