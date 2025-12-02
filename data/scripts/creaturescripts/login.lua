-- Player Login Event (RevScriptSys)

local function onMovementRemoveProtection(cid, oldPosition, time)
	local player = Player(cid)
	if not player then
		return true
	end

	local playerPosition = player:getPosition()
	if (playerPosition.x ~= oldPosition.x or playerPosition.y ~= oldPosition.y or playerPosition.z ~= oldPosition.z) or player:getTarget() then
		player:setStorageValue(Storage.combatProtectionStorage, 0)
		return true
	end

	addEvent(onMovementRemoveProtection, 1000, cid, oldPosition, time - 1)
end

local function loginCallback(player)
	local loginStr = "Welcome to " .. configManager.getString(configKeys.SERVER_NAME) .. "!"
	if player:getLastLoginSaved() <= 0 then
		loginStr = loginStr .. " Please choose your outfit."
		player:sendOutfitWindow()
	else
		if loginStr ~= "" then
			player:sendTextMessage(MESSAGE_STATUS_DEFAULT, loginStr)
		end

		loginStr = string.format("Your last visit was on %s.", os.date("%a %b %d %X %Y", player:getLastLoginSaved()))
	end
	player:sendTextMessage(MESSAGE_STATUS_DEFAULT, loginStr)

	-- Stamina
	nextUseStaminaTime[player:getId()] = 1

	-- Promotion
	local vocation = player:getVocation()
	local promotion = vocation:getPromotion()
	if player:isPremium() then
		local hasPromotion = player:getStorageValue(Storage.promotion) == 1
		if not hasPromotion and promotion then
			player:setVocation(promotion)
			player:setStorageValue(Storage.promotion, 1)
		end
	elseif not promotion then
		player:setVocation(vocation:getDemotion())
	end

	-- Events
	player:registerEvent("PlayerDeath")
	player:registerEvent("DropLoot")

	-- Protection (group ID 2 = Gamemaster)
	local protectionTime = 0
	if player:getGroup():getId() < 2 then
		protectionTime = os.time() + 30  -- 30 seconds protection as timestamp
	end
	player:setStorageValue(Storage.combatProtectionStorage, protectionTime)
	if protectionTime > 0 then
		addEvent(onMovementRemoveProtection, 1000, player:getId(), player:getPosition(), 30)
	end

	return true
end

local playerLogin = CreatureEvent("PlayerLogin")
playerLogin:type("login")
playerLogin:onLogin(loginCallback)
playerLogin:register()
