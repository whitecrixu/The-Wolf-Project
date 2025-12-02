-- Converted from: teleport_to_creature.lua
-- Words: /goto

local talk = TalkAction("/goto")
talk:separator(" ")

-- Original script content:
function onSay(player, words, param)
	if not player:getGroup():getAccess() then
		return true
	end

	local target = Creature(param)
	if target == nil then
		player:sendCancelMessage("Creature not found.")
		return false
	end

	player:teleportTo(target:getPosition())
	return false
end


talk:onSay(onSay)
talk:register()