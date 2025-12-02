-- Converted from: tiles.lua
-- Event: StepIn

local increasing = {[416] = 417, [426] = 425, [446] = 447, [3216] = 3217, [3202] = 3215, [11062] = 11063}
local decreasing = {[417] = 416, [425] = 426, [447] = 446, [3217] = 3216, [3215] = 3202, [11063] = 11062}
local maxLevel = 1000

local moveEvent1 = MoveEvent()
moveEvent1:type("stepin")
moveEvent1:id(416)

local moveEvent2 = MoveEvent()
moveEvent2:type("stepin")
moveEvent2:id(426)

local moveEvent3 = MoveEvent()
moveEvent3:type("stepin")
moveEvent3:id(446)

local moveEvent4 = MoveEvent()
moveEvent4:type("stepin")
moveEvent4:id(3216)

local moveEvent5 = MoveEvent()
moveEvent5:type("stepin")
moveEvent5:id(11062)

local function onStepIn(creature, item, position, fromPosition)

	if not increasing[item.itemid] then
		return true
	end

	local player = creature:getPlayer()
	if player == nil or player:isInGhostMode() then
		return true
	end

	item:transform(increasing[item.itemid])

	if item.actionid >= 1000 and item.actionid - 1000 <= maxLevel then
		if player:getLevel() < item.actionid - 1000 then
			player:teleportTo(fromPosition, false)
			position:sendMagicEffect(CONST_ME_MAGIC_BLUE)
			player:sendTextMessage(MESSAGE_INFO_DESCR, "The tile seems to be protected against unwanted intruders.")
		end
		return true
	end

	if Tile(position):hasFlag(TILESTATE_PROTECTIONZONE) then
		local lookPosition = player:getPosition()
		lookPosition:getNextPosition(player:getDirection())
		local depotItem = Tile(lookPosition):getItemByType(ITEM_TYPE_DEPOT)
		if depotItem ~= nil then
			local depotItems = 0
			for i = 1, 17 do
				depotItems = depotItems + player:getDepotChest(i, true):getItemHoldingCount()
			end
			player:sendTextMessage(MESSAGE_STATUS_DEFAULT, "Your depot contains " .. depotItems .. " item" .. (depotItems > 1 and "s." or "."))
			return true
		end
	end

	if item.actionid ~= 0 and player:getStorageValue(item.actionid) <= 0 then
		player:teleportTo(fromPosition, false)
		position:sendMagicEffect(CONST_ME_MAGIC_BLUE)
		player:sendTextMessage(MESSAGE_INFO_DESCR, "The tile seems to be protected against unwanted intruders.")
		return true
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