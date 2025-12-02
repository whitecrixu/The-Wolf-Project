-- Ladder IDs for going up (excluding duplicates from other_teleport.lua: 1386, 3678, 5543, 8599)
local ladderIds = {
	428,   -- ladder
	3135,  -- ladder
	3136,  -- ladder
	10035, -- ladder
	19510  -- wooden ladder
}

-- Sewer grate / trap door down IDs (excluding duplicates from other_doors.lua: 5732, 6894, 6895, 17238)
local trapDoorIds = {
	435,   -- closed trap door
	462,   -- closed sewer grate
	469,   -- closed sewer grate
	470,   -- closed sewer grate
	482,   -- closed grate
	484,   -- closed grate
	595,   -- closed sewer grate
	596,   -- closed sewer grate
	3138,  -- closed hole cover
	3139,  -- closed hole cover
	3140,  -- closed hole cover
	3219,  -- closed trap door
	3220,  -- closed trap door
	5731,  -- closed trap door
	6127,  -- closed trap door
	6128,  -- closed trap door
	6129,  -- closed trap door
	6130,  -- closed trap door
	8559,  -- closed trap door
	8560,  -- closed trap door
	9625,  -- closed trap door
	13017, -- closed trap door
}

local function onUseLadder(player, item, fromPosition, target, toPosition, isHotkey)
	local itemId = item.itemid
	print("[Ladder Debug] Item ID: " .. itemId .. " at pos: " .. fromPosition.x .. "," .. fromPosition.y .. "," .. fromPosition.z)
	
	-- Check if it's a ladder (going up)
	if isInArray(ladderIds, itemId) then
		-- Go up one level and one tile south (standard ladder behavior)
		local newPos = Position(fromPosition.x, fromPosition.y + 1, fromPosition.z - 1)
		print("[Ladder Debug] Trying to go UP to: " .. newPos.x .. "," .. newPos.y .. "," .. newPos.z)
		local tile = Tile(newPos)
		
		if not tile then
			print("[Ladder Debug] No tile at destination!")
			player:sendCancelMessage("Sorry, not possible.")
			return true
		end
		
		if not tile:getGround() then
			print("[Ladder Debug] No ground at destination!")
			player:sendCancelMessage("Sorry, not possible.")
			return true
		end
		
		if player:isPzLocked() and tile:hasFlag(TILESTATE_PROTECTIONZONE) then
			player:sendCancelMessage(RETURNVALUE_PLAYERISPZLOCKED)
			return true
		end
		
		print("[Ladder Debug] Teleporting player UP!")
		player:teleportTo(newPos, true)
		return true
	end
	
	-- Check if it's a trap door (going down)
	if isInArray(trapDoorIds, itemId) then
		local newPos = Position(fromPosition.x, fromPosition.y, fromPosition.z + 1)
		print("[Ladder Debug] Trying to go DOWN to: " .. newPos.x .. "," .. newPos.y .. "," .. newPos.z)
		local tile = Tile(newPos)
		
		if not tile or not tile:getGround() then
			player:sendCancelMessage("Sorry, not possible.")
			return true
		end
		
		if player:isPzLocked() and tile:hasFlag(TILESTATE_PROTECTIONZONE) then
			player:sendCancelMessage(RETURNVALUE_PLAYERISPZLOCKED)
			return true
		end
		
		player:teleportTo(newPos, true)
		return true
	end
	
	print("[Ladder Debug] Item ID " .. itemId .. " not in ladder or trapdoor list!")
	return false
end

-- Create and register actions for ladders
local ladderAction = Action()
for _, id in ipairs(ladderIds) do
	ladderAction:id(id)
end
for _, id in ipairs(trapDoorIds) do
	ladderAction:id(id)
end
ladderAction:onUse(onUseLadder)
ladderAction:register()
