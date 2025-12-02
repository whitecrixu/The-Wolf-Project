-- Example RevScriptSys CreatureEvent
-- This demonstrates player login/logout events

local loginEvent = CreatureEvent("RevScriptSysLogin")

function loginEvent.onLogin(player)
    player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "Welcome to The Wolf Project! Using RevScriptSys.")
    return true
end

loginEvent:type("login")
loginEvent:register()

local logoutEvent = CreatureEvent("RevScriptSysLogout")

function logoutEvent.onLogout(player)
    print(">> [RevScriptSys] Player " .. player:getName() .. " logged out.")
    return true
end

logoutEvent:type("logout")
logoutEvent:register()

print(">> [RevScriptSys] Loaded example_creatureevent.lua")
