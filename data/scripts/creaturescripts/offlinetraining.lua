-- Offline Training Event (RevScriptSys)

local function offlineTrainingCallback(player)
	local lastLogout = player:getLastLogout()
	if lastLogout == 0 then
		return true
	end

	local offlineTime = math.min(os.time() - lastLogout, 86400 * 21) -- Max 21 days
	local offlineTrainingSkill = player:getOfflineTrainingSkill()
	
	-- If player didn't use training statue, just add offline time for future use
	if offlineTrainingSkill == -1 or offlineTrainingSkill == SKILL_NONE then
		player:addOfflineTrainingTime(offlineTime * 1000)
		return true
	end

	-- Reset skill to prevent exploits
	player:setOfflineTrainingSkill(-1)

	-- Need at least 10 minutes offline
	if offlineTime < 600 then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You must be logged out for more than 10 minutes to start offline training.")
		return true
	end

	-- Calculate training time (max 12 hours or available offline training time)
	local trainingTime = math.max(0, math.min(offlineTime, math.min(43200, player:getOfflineTrainingTime() / 1000)))
	player:removeOfflineTrainingTime(trainingTime * 1000)

	-- Add remaining time back
	local remainder = offlineTime - trainingTime
	if remainder > 0 then
		player:addOfflineTrainingTime(remainder * 1000)
	end

	if trainingTime < 60 then
		return true
	end

	-- Build message
	local text = "During your absence you trained for"
	local hours = math.floor(trainingTime / 3600)
	if hours > 1 then
		text = string.format("%s %d hours", text, hours)
	elseif hours == 1 then
		text = string.format("%s 1 hour", text)
	end

	local minutes = math.floor((trainingTime % 3600) / 60)
	if minutes ~= 0 then
		if hours ~= 0 then
			text = string.format("%s and", text)
		end
		if minutes > 1 then
			text = string.format("%s %d minutes", text, minutes)
		else
			text = string.format("%s 1 minute", text)
		end
	end
	text = string.format("%s.", text)
	player:sendTextMessage(MESSAGE_EVENT_ADVANCE, text)

	-- Calculate skill tries based on vocation
	local vocation = player:getVocation()
	local promotion = vocation:getPromotion()
	local topVocation = promotion or vocation

	local tries = nil
	if offlineTrainingSkill == SKILL_CLUB or offlineTrainingSkill == SKILL_SWORD or 
	   offlineTrainingSkill == SKILL_AXE or offlineTrainingSkill == SKILL_DISTANCE or
	   offlineTrainingSkill == SKILL_FIST then
		local modifier = topVocation:getAttackSpeed() / 1000
		if modifier == 0 then modifier = 2 end
		tries = (trainingTime / modifier) / (offlineTrainingSkill == SKILL_DISTANCE and 4 or 2)
	elseif offlineTrainingSkill == SKILL_MAGLEVEL then
		local gainTicks = topVocation:getManaGainTicks() / 1000
		if gainTicks == 0 then gainTicks = 1 end
		tries = trainingTime * (vocation:getManaGainAmount() / gainTicks)
	end

	local updateSkills = false
	if tries then
		updateSkills = player:addOfflineTrainingTries(offlineTrainingSkill, tries)
	end

	-- Also train shield for melee/distance skills
	if updateSkills then
		player:addOfflineTrainingTries(SKILL_SHIELD, trainingTime / 4)
	end

	return true
end

local offlineTraining = CreatureEvent("OfflineTraining")
offlineTraining:type("login")
offlineTraining:onLogin(offlineTrainingCallback)
offlineTraining:register()
