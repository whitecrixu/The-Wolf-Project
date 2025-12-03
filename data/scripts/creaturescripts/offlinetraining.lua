-- Offline Training Event (RevScriptSys)

local function offlineTrainingCallback(player)
	local lastLogout = player:getLastLogout()
	if lastLogout == 0 then
		return true
	end

	local offlineTrainingSkill = player:getOfflineTrainingSkill()
	if offlineTrainingSkill == SKILL_NONE then
		return true
	end

	-- Always reset the skill first to prevent exploits
	player:setOfflineTrainingSkill(SKILL_NONE)

	local offlineTime = math.min(os.time() - lastLogout, 12 * 60 * 60)
	if offlineTime < 600 then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You must be logged out for more than 10 minutes to start offline training.")
		return true
	end

	local trainingTime = offlineTime / 2
	
	-- Calculate tries based on skill type
	local tries = trainingTime
	
	if offlineTrainingSkill == SKILL_CLUB or offlineTrainingSkill == SKILL_SWORD or offlineTrainingSkill == SKILL_AXE or offlineTrainingSkill == SKILL_DISTANCE then
		-- Melee/Distance skills also train shield
		local shieldTries = trainingTime / 4
		player:addOfflineTrainingTries(SKILL_SHIELD, shieldTries)
	end

	player:addOfflineTrainingTries(offlineTrainingSkill, tries)
	
	local hours = math.floor(offlineTime / 3600)
	local minutes = math.floor((offlineTime % 3600) / 60)
	local text = "During your absence you trained for"
	if hours > 0 then
		text = text .. " " .. hours .. " hour" .. (hours > 1 and "s" or "")
	end
	if minutes > 0 then
		if hours > 0 then
			text = text .. " and"
		end
		text = text .. " " .. minutes .. " minute" .. (minutes > 1 and "s" or "")
	end
	text = text .. "."
	player:sendTextMessage(MESSAGE_EVENT_ADVANCE, text)
	
	return true
end

local offlineTraining = CreatureEvent("OfflineTraining")
offlineTraining:type("login")
offlineTraining:onLogin(offlineTrainingCallback)
offlineTraining:register()
