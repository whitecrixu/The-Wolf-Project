-- Converted from: teleport_to_town.lua
-- Words: /town

local talk = TalkAction("/town")
talk:separator(" ")

-- Original script content:
function onSay(player, words, param)
	if not player:getGroup():getAccess() then
		return true
	end

	local town = Town(param)
	if town == nil then
		town = Town(tonumber(param))
	end

	if town == nil then
		player:sendCancelMessage("Town not found.")
		return false
	end

	player:teleportTo(town:getTemplePosition())
	return false
end


talk:onSay(onSay)
talk:register()