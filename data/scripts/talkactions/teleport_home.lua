-- Converted from: teleport_home.lua
-- Words: /t

local talk = TalkAction("/t")

-- Original script content:
function onSay(player, words, param)
	if not player:getGroup():getAccess() then
		return true
	end

	player:teleportTo(player:getTown():getTemplePosition())
	return false
end


talk:onSay(onSay)
talk:register()