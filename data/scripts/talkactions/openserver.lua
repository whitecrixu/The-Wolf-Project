-- Converted from: openserver.lua
-- Words: /openserver

local talk = TalkAction("/openserver")

-- Original script content:
function onSay(player, words, param)
	if not player:getGroup():getAccess() then
		return true
	end

	if player:getAccountType() < ACCOUNT_TYPE_GOD then
		return false
	end

	Game.setGameState(GAME_STATE_NORMAL)
	player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "Server is now open.")
	return false
end


talk:onSay(onSay)
talk:register()