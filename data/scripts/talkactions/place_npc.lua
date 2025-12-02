-- Converted from: place_npc.lua
-- Words: /s

local talk = TalkAction("/s")
talk:separator(" ")

-- Original script content:
function onSay(player, words, param)
	if not player:getGroup():getAccess() then
		return true
	end

	if player:getAccountType() < ACCOUNT_TYPE_GOD then
		return false
	end

	local position = player:getPosition()
	local npc = Game.createNpc(param, position)
	if npc ~= nil then
		npc:setMasterPos(position)
		position:sendMagicEffect(CONST_ME_MAGIC_RED)
	else
		player:sendCancelMessage("There is not enough room.")
		position:sendMagicEffect(CONST_ME_POFF)
	end
	return false
end


talk:onSay(onSay)
talk:register()