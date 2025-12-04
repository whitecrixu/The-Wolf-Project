-- Converted from: other/teleport.lua
-- Original XML: actions.xml

-- IDs that teleport UP (ladders)
local upFloorIds = {1386, 3678, 5543, 8599}

-- IDs that teleport DOWN (sewer grates, etc.)
local downFloorIds = {430, 1369}

local action1 = Action()
action1:id(430)

local action2 = Action()
action2:id(1369)

local action3 = Action()
action3:id(1386)

local action4 = Action()
action4:id(3678)

local action5 = Action()
action5:id(5543)

local action6 = Action()
action6:id(8599)

local function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	-- Get the position of the item (ladder/grate), not the player
	local itemPos = item:getPosition()
	local playerPos = player:getPosition()

	if isInArray(upFloorIds, item.itemid) then
		-- Going UP - teleport one level up
		-- Try multiple positions: south, then player's current position offset
local positions = {
Position(itemPos.x, itemPos.y + 1, itemPos.z - 1),  -- South of ladder
Position(playerPos.x, playerPos.y, playerPos.z - 1), -- Above player
Position(itemPos.x + 1, itemPos.y, itemPos.z - 1),  -- East of ladder
Position(itemPos.x - 1, itemPos.y, itemPos.z - 1),  -- West of ladder
Position(itemPos.x, itemPos.y - 1, itemPos.z - 1),  -- North of ladder
}

for _, newPos in ipairs(positions) do
local tile = Tile(newPos)
if tile and tile:getGround() and not tile:hasFlag(TILESTATE_FLOORCHANGE) then
if tile:hasFlag(TILESTATE_PROTECTIONZONE) and player:isPzLocked() then
player:sendTextMessage(MESSAGE_STATUS_SMALL, Game.getReturnMessage(RETURNVALUE_PLAYERISPZLOCKED))
return true
end
player:teleportTo(newPos, true)
return true
end
end

player:sendCancelMessage("Sorry, not possible.")
return true
else
-- Going DOWN - from the item position
local newPos = Position(itemPos.x, itemPos.y, itemPos.z + 1)
local tile = Tile(newPos)

if not tile or not tile:getGround() then
player:sendCancelMessage("Sorry, not possible.")
return true
end

if tile:hasFlag(TILESTATE_PROTECTIONZONE) and player:isPzLocked() then
player:sendTextMessage(MESSAGE_STATUS_SMALL, Game.getReturnMessage(RETURNVALUE_PLAYERISPZLOCKED))
return true
end

player:teleportTo(newPos, true)
return true
end
end

action1:onUse(onUse)
action1:register()
action2:onUse(onUse)
action2:register()
action3:onUse(onUse)
action3:register()
action4:onUse(onUse)
action4:register()
action5:onUse(onUse)
action5:register()
action6:onUse(onUse)
action6:register()
