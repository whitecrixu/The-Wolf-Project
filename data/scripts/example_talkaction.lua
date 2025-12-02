-- Example RevScriptSys TalkAction
-- This demonstrates the new Lua-based talkaction registration

local talk = TalkAction("/test")

function talk.onSay(player, words, param, type)
    player:sendTextMessage(MESSAGE_INFO_DESCR, "RevScriptSys TalkAction works! Param: " .. param)
    return false  -- Don't consume the message
end

talk:separator(" ")
talk:register()

print(">> [RevScriptSys] Loaded example_talkaction.lua")
