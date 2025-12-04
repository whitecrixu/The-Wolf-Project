-- Stairs down movement script
-- Backup script for floorchange items when C++ engine doesn't work

local stairsDownIds = {
	-- All stairs/holes with floorchange="down" in items.xml
	293, 294, 369, 370, 383, 392, 408, 409, 410, 411, 423, 427, 428, 429,
	432, 433, 459, 462, 469, 470, 475, 476, 479, 480, 482, 484, 485, 489,
	594, 595, 596, 924
}

local moveEvent = MoveEvent()
moveEvent:type("stepin")

local function onStepIn(creature, item, position, fromPosition)
	-- Only for players
	if not creature:isPlayer() then
		return true
	end
	
	-- Don't teleport if coming from below (prevents loop when going up)
	if fromPosition.z > position.z then
		return true
	end
	
	-- Don't teleport if we just teleported (same X,Y but different Z)
	if fromPosition.x == position.x and fromPosition.y == position.y then
		return true
	end

	local newPos = Position(position.x, position.y, position.z + 1)
	local tile = Tile(newPos)
	
	-- If no tile directly below, try to find walkable tile around
	if not tile or not tile:getGround() then
		return true
	end
	
	-- Check if destination is walkable
	if tile:hasFlag(TILESTATE_BLOCKSOLID) then
		-- Try south (y+1)
		local southPos = Position(position.x, position.y + 1, position.z + 1)
		local southTile = Tile(southPos)
		if southTile and southTile:getGround() and not southTile:hasFlag(TILESTATE_BLOCKSOLID) then
			newPos = southPos
		end
	end
	
	-- Check for PZ lock
	if Tile(newPos):hasFlag(TILESTATE_PROTECTIONZONE) and creature:isPzLocked() then
		creature:sendCancelMessage(RETURNVALUE_PLAYERISPZLOCKED)
		return true
	end
	
	creature:teleportTo(newPos, false)
	return false  -- Return false to prevent C++ from also moving the player
end

moveEvent:onStepIn(onStepIn)

for _, id in ipairs(stairsDownIds) do
	moveEvent:id(id)
end

moveEvent:register()
