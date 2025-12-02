-- Converted from: other/skilltrainer.lua
-- Original XML: actions.xml

local action1 = Action()
action1:id(18488)
action1:id(18489)
action1:id(18490)
action1:id(18491)
action1:id(18492)

local function onUse(player, item, fromPosition, target, toPosition, isHotkey)

	local skill = statues[item:getId()]
	if not player:isPremium() then
		player:sendTextMessage(MESSAGE_STATUS_SMALL, Game.getReturnMessage(RETURNVALUE_YOUNEEDPREMIUMACCOUNT))
		return true
	end

	if player:isPzLocked() then
		return false
	end

	player:setOfflineTrainingSkill(skill)
	player:remove()
	return true
end

action1:onUse(onUse)
action1:register()