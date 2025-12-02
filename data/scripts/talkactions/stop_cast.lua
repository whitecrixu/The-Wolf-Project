-- Converted from: stop_cast.lua
-- Words: !stopcast

local talk = TalkAction("!stopcast")

-- Original script content:
function onSay(player, words, param)
	if player:stopLiveCast(param) then
		player:sendTextMessage(MESSAGE_INFO_DESCR, "You have stopped casting your gameplay.")
	else
		player:sendCancelMessage("You're not casting your gameplay.")
	end
	return false
end


talk:onSay(onSay)
talk:register()