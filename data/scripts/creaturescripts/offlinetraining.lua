-- Offline Training Event (RevScriptSys)

local function offlineTrainingCallback(player)
	local lastLogout = player:getLastLogout()
	if lastLogout == 0 then
		return true
	end

	local offlineTime = math.min(os.time() - lastLogout, 12 * 60 * 60)
	if offlineTime < 600 then
		return true
	end

	local offlineTrainingSkill = player:getOfflineTrainingSkill()
	if offlineTrainingSkill == SKILL_NONE then
		return true
	end

	local trainingTime = offlineTime / 2
	if offlineTrainingSkill == SKILL_CLUB or offlineTrainingSkill == SKILL_SWORD or offlineTrainingSkill == SKILL_AXE then
		local armature = player:getSkillLevel(SKILL_SHIELD) / 10
		player:addOfflineTrainingTries(SKILL_SHIELD, trainingTime / armature)
	end

	player:addOfflineTrainingTries(offlineTrainingSkill, trainingTime)
	player:setOfflineTrainingSkill(SKILL_NONE)
	return true
end

local offlineTraining = CreatureEvent("OfflineTraining")
offlineTraining:type("login")
offlineTraining:onLogin(offlineTrainingCallback)
offlineTraining:register()
