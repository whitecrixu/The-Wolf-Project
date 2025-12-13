-- Stairs down movement script
-- Backup script for floorchange items when C++ engine doesn't work

local stairsDownIds = {
	-- All stairs/holes with floorchange="down" in items.xml
	294, 369, 370, 383, 392, 408, 409, 410, 411, 423, 427, 428, 429,
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

	-- Calculate destination: z+1 and +1 tile in the direction player was moving
	local dx = position.x - fromPosition.x
	local dy = position.y - fromPosition.y
	
	-- Default to +1 tile in the movement direction, or east if standing still
	local offsetX = dx ~= 0 and dx or 1
	local offsetY = dy ~= 0 and dy or 0
	
	local newPos = Position(position.x + offsetX, position.y + offsetY, position.z + 1)
	local tile = Tile(newPos)
	
	-- If destination is blocked, try just going straight down
	if not tile or not tile:getGround() or tile:hasFlag(TILESTATE_BLOCKSOLID) then
		newPos = Position(position.x, position.y, position.z + 1)
		tile = Tile(newPos)
		
		-- If still blocked, try alternatives
		if not tile or not tile:getGround() or tile:hasFlag(TILESTATE_BLOCKSOLID) then
			-- Try each direction: east, south, west, north
			local directions = {
				{1, 0},   -- east
				{0, 1},   -- south
				{-1, 0},  -- west
				{0, -1}   -- north
			}
			
			for _, dir in ipairs(directions) do
				local testPos = Position(position.x + dir[1], position.y + dir[2], position.z + 1)
				local testTile = Tile(testPos)
				if testTile and testTile:getGround() and not testTile:hasFlag(TILESTATE_BLOCKSOLID) then
					newPos = testPos
					tile = testTile
					break
				end
			end
		end
	end
	
	-- Final check - if still no valid tile, abort
	if not tile or not tile:getGround() then
		return true
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
