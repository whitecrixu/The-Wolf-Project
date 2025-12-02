-- Regenerate Stamina Event (RevScriptSys)

local function regenerateStaminaCallback(player)
	local lastLogout = player:getLastLogout()
	if lastLogout == 0 then
		return true
	end

	local currentStamina = player:getStamina()
	if currentStamina >= 2520 then
		return true
	end

	local offlineTime = os.time() - lastLogout
	local staminaGain = math.floor(offlineTime / 180) -- 3 minutes = 1 stamina minute
	local newStamina = math.min(2520, currentStamina + staminaGain)
	
	if newStamina > currentStamina then
		player:setStamina(newStamina)
	end

	return true
end

local regenerateStamina = CreatureEvent("RegenerateStamina")
regenerateStamina:type("login")
regenerateStamina:onLogin(regenerateStaminaCallback)
regenerateStamina:register()
