-- Converted from: citizen.lua
-- Event: StepIn

local moveEvent1 = MoveEvent()
moveEvent1:type("stepin")
moveEvent1:id(1387)

local moveEvent2 = MoveEvent()
moveEvent2:type("stepin")
moveEvent2:id(1397)

local function onStepIn(creature, item, position, fromPosition)

	if item.actionid > 30020 and item.actionid < 30050 then
		local player = creature:getPlayer()
		if player == nil then
			return false
		end

		local town = Town(item.actionid - 30020)
		player:setTown(town)
		player:sendTextMessage(MESSAGE_INFO_DESCR, "You are the newest resident of " .. town:getName(town) .. ".")
	end
	return true
end

moveEvent1:onStepIn(onStepIn)
moveEvent1:register()
moveEvent2:onStepIn(onStepIn)
moveEvent2:register()