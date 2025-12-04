-- Rope Tool
-- Handles rope usage on holes and rope spots

local holeIds = {
	294, 369, 370, 383, 392, 408, 409, 410, 427, 428, 429, 430, 462, 469, 470, 482,
	484, 485, 489, 924, 3135, 3136, 4835, 4837, 7933, 7938, 8170, 8249, 8250, 8251,
	8252, 8253, 8254, 8255, 8256, 8276, 8277, 8279, 8281, 8284, 8285, 8286, 8323,
	8380, 8567, 8585, 8595, 8596, 8972, 9606, 9625, 13189, 14461, 19519, 21536, 23713,
	26020
}

local ropeSpots = {
	384, 418, 8278, 8592, 13189, 14435, 14436, 15635, 19518, 386, 421, 7762, 12202,
	12936, 14238, 17238, 23363, 21965, 21966, 21967, 21968
}

-- Helper function to check if value is in array
local function isInArray(array, value)
	for _, v in ipairs(array) do
		if v == value then
			return true
		end
	end
	return false
end

-- Find free position around the hole (north, south, west, east)
-- Pattern:    N
--           W x E
--             S
local function findFreePosition(centerPos, targetZ)
	local offsets = {
		{x = 0, y = -1}, -- North
		{x = 0, y = 1},  -- South
		{x = -1, y = 0}, -- West
		{x = 1, y = 0}   -- East
	}
	
	for _, offset in ipairs(offsets) do
		local checkPos = Position(centerPos.x + offset.x, centerPos.y + offset.y, targetZ)
		local tile = Tile(checkPos)
		
		if tile and tile:getGround() then
			-- Check if tile is walkable (no blocking items/creatures)
			if not tile:hasFlag(TILESTATE_BLOCKSOLID) and not tile:getTopCreature() then
				return checkPos
			end
		end
	end
	
	return nil -- No free position found
end

local rope = Action()

local function onUseRope(player, item, fromPosition, target, toPosition, isHotkey)
	if toPosition.x == CONTAINER_POSITION then
		return false
	end

	local tile = Tile(toPosition)
	if not tile then
		return false
	end

	local ground = tile:getGround()
	if not ground then
		return false
	end

	local groundId = ground:getId()

	-- Check if it's a rope spot (like rope holes) - teleport player UP
	if isInArray(ropeSpots, groundId) then
		local targetZ = toPosition.z - 1
		local freePos = findFreePosition(toPosition, targetZ)
		
		if freePos then
			player:teleportTo(freePos)
			return true
		else
			player:sendCancelMessage("There is no room.")
			return true
		end
	end

	-- Check if it's a hole - pull up creature or item from below
	if isInArray(holeIds, target.itemid) then
		local belowPos = Position(toPosition.x, toPosition.y, toPosition.z + 1)
		local belowTile = Tile(belowPos)

		if belowTile then
			local creature = belowTile:getTopCreature()
			if creature and creature:isPlayer() then
				local freePos = findFreePosition(toPosition, toPosition.z)
				if freePos then
					creature:teleportTo(freePos)
					return true
				else
					player:sendCancelMessage("There is no room.")
					return true
				end
			end

			local thing = belowTile:getTopVisibleThing()
			if thing and thing:isItem() then
				local itemType = thing:getType()
				if itemType and itemType:isMovable() then
					local freePos = findFreePosition(toPosition, toPosition.z)
					if freePos then
						thing:moveTo(freePos)
						return true
					else
						player:sendCancelMessage("There is no room.")
						return true
					end
				end
			end
		end

		player:sendCancelMessage(RETURNVALUE_NOTPOSSIBLE)
		return true
	end

	return false
end

rope:onUse(onUseRope)
rope:id(2120, 7731, 3003, 646)
rope:register()