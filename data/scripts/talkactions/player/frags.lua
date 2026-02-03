-- Talkaction to check player frags
-- Usage: !frags or !kills

local frags = TalkAction("!frags", "!kills", "!frag")

function frags.onSay(player, words, param)
	-- getKills() returns array of {target_id, expire_time, unavenged}
	local kills = player:getKills()
	local dayKills = 0
	local weekKills = 0
	local monthKills = 0
	
	local currentTime = os.time()
	local daySeconds = 24 * 60 * 60
	local weekSeconds = 7 * daySeconds
	local monthSeconds = 30 * daySeconds
	
	for _, kill in ipairs(kills) do
		-- kill[1] = target id, kill[2] = expire time, kill[3] = unavenged
		local killExpireTime = kill[2]
		local timeDiff = currentTime - killExpireTime
		
		-- Count only active (not expired) kills
		if killExpireTime > currentTime then
			-- Check if within time limits (based on when kill will expire vs now)
			if timeDiff <= daySeconds then
				dayKills = dayKills + 1
			end
			if timeDiff <= weekSeconds then
				weekKills = weekKills + 1
			end
			if timeDiff <= monthSeconds then
				monthKills = monthKills + 1
			end
		end
	end
	
	local skull = player:getSkull()
	local skullName = "None"
	if skull == SKULL_WHITE then
		skullName = "White Skull"
	elseif skull == SKULL_YELLOW then
		skullName = "Yellow Skull"
	elseif skull == SKULL_RED then
		skullName = "Red Skull"
	elseif skull == SKULL_BLACK then
		skullName = "Black Skull"
	elseif skull == SKULL_ORANGE then
		skullName = "Orange Skull"
	elseif skull == SKULL_GREEN then
		skullName = "Green Skull"
	end
	
	-- Get frag limits from config
	local redSkullLength = configManager.getNumber(configKeys.RED_SKULL_LENGTH) or 30
	local dayFragLimit = configManager.getNumber(configKeys.KILLS_DAY_RED_SKULL) or 3
	local weekFragLimit = configManager.getNumber(configKeys.KILLS_WEEK_RED_SKULL) or 5
	local monthFragLimit = configManager.getNumber(configKeys.KILLS_MONTH_RED_SKULL) or 10
	
	player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "=== Your Frag Status ===")
	player:sendTextMessage(MESSAGE_EVENT_ADVANCE, string.format("Current Skull: %s", skullName))
	player:sendTextMessage(MESSAGE_EVENT_ADVANCE, string.format("Frags today: %d / %d", dayKills, dayFragLimit))
	player:sendTextMessage(MESSAGE_EVENT_ADVANCE, string.format("Frags this week: %d / %d", weekKills, weekFragLimit))
	player:sendTextMessage(MESSAGE_EVENT_ADVANCE, string.format("Frags this month: %d / %d", monthKills, monthFragLimit))
	player:sendTextMessage(MESSAGE_EVENT_ADVANCE, string.format("Total active kills: %d", #kills))
	
	return true
end

frags:separator(" ")
frags:groupType("normal")
frags:register()
