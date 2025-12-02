-- Example RevScriptSys Action
-- This demonstrates the new Lua-based event registration system

local action = Action()

function action.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    player:sendTextMessage(MESSAGE_INFO_DESCR, "You used item: " .. item:getName())
    return true
end

action:id(2160)  -- Gold coin
action:register()

print(">> [RevScriptSys] Loaded example_action.lua")
