-- Player Logout Event (RevScriptSys)

local function logoutCallback(player)
	return true
end

local playerLogout = CreatureEvent("PlayerLogout")
playerLogout:type("logout")
playerLogout:onLogout(logoutCallback)
playerLogout:register()
