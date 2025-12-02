-- Converted from: walkback.lua
-- Event: StepIn

local function isQuestChest(item)
	local itemid = item:getId()
	if itemid == 1738 or itemid == 1740 or (itemid >= 1746 and itemid <= 1749) or (itemid >= 12664 and itemid <= 12665) or (itemid >= 12796 and itemid <= 12797) then
		return true
	end
	return false
end

local function isWalkable(item)
	if item.uid > 0 and item.uid <= 65535 then
		return false
	end
	return true
end

local function isPositionSafe(position)
	local tile = Tile(position)
	if tile then
		for _, item in ipairs(tile:getItems()) do
			if isQuestChest(item) and not isWalkable(item) then
				return false
			end
		end
	end
	return true
end

local moveEvent1 = MoveEvent()
moveEvent1:type("stepin")
moveEvent1:id(1738)

local moveEvent2 = MoveEvent()
moveEvent2:type("stepin")
moveEvent2:id(1740)

local moveEvent3 = MoveEvent()
moveEvent3:type("stepin")
moveEvent3:id(1746)
moveEvent3:id(1747)
moveEvent3:id(1748)
moveEvent3:id(1749)

local moveEvent4 = MoveEvent()
moveEvent4:type("stepin")
moveEvent4:id(12664)
moveEvent4:id(12665)

local moveEvent5 = MoveEvent()
moveEvent5:type("stepin")
moveEvent5:id(12796)
moveEvent5:id(12797)

local function onStepIn(creature, item, position, fromPosition)
	if not isWalkable(item) then
		if creature:isPlayer() then
			local safePosition = creature:getTown():getTemplePosition()

			if position.x == fromPosition.x and position.y == fromPosition.y and position.z == fromPosition.z then
				creature:teleportTo(safePosition, false)
				return true
			elseif not isPositionSafe(fromPosition) then
				creature:teleportTo(safePosition, false)
				return true
			end
		end

		creature:teleportTo(fromPosition, false)
	end
	return true
end

moveEvent1:onStepIn(onStepIn)
moveEvent1:register()
moveEvent2:onStepIn(onStepIn)
moveEvent2:register()
moveEvent3:onStepIn(onStepIn)
moveEvent3:register()
moveEvent4:onStepIn(onStepIn)
moveEvent4:register()
moveEvent5:onStepIn(onStepIn)
moveEvent5:register()
