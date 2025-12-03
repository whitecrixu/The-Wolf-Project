-- Skill Trainer Statues for Offline Training
-- Use a statue to start offline training for that skill

local statues = {
	[18488] = SKILL_SWORD,
	[18489] = SKILL_AXE,
	[18490] = SKILL_CLUB,
	[18491] = SKILL_DISTANCE,
	[18492] = SKILL_MAGLEVEL,
}

local action1 = Action()

local function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local skill = statues[item:getId()]
	if not skill then
		return false
	end

	if not player:isPremium() then
		player:sendTextMessage(MESSAGE_STATUS_SMALL, Game.getReturnMessage(RETURNVALUE_YOUNEEDPREMIUMACCOUNT))
		return true
	end

	if player:isPzLocked() then
		player:sendTextMessage(MESSAGE_STATUS_SMALL, "You can't train while being in a fight.")
		return false
	end

	player:setOfflineTrainingSkill(skill)
	player:remove()
	return true
end

for itemId, _ in pairs(statues) do
	action1:id(itemId)
end

action1:onUse(onUse)
action1:register()