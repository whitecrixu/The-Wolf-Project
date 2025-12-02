-- Converted from: other/blessingCharms.lua
-- Original XML: actions.xml

local action1 = Action()
action1:id(11258)
action1:id(11259)
action1:id(11260)
action1:id(11261)
action1:id(11262)

local function onUse(player, item, fromPosition, target, toPosition, isHotkey)

	local useItem = config[item.itemid]
	if not useItem then
		return true
	end

	if player:hasBlessing(useItem.blessId) then
		player:say('You already possess this blessing.', TALKTYPE_MONSTER_SAY)
		return true
	end

	player:addBlessing(useItem.blessId)
	player:sendTextMessage(MESSAGE_EVENT_ADVANCE, useItem.text .. ' protects you.')
	player:getPosition():sendMagicEffect(CONST_ME_LOSEENERGY)
	item:remove(1)
	return true
end

action1:onUse(onUse)
action1:register()