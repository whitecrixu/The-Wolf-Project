-- Converted from: swimming.lua
-- Event: StepOut

local outfit = {lookType = 267, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0}

local moveEvent1 = MoveEvent()
moveEvent1:type("stepout")
moveEvent1:id(4620)
moveEvent1:id(4621)
moveEvent1:id(4622)
moveEvent1:id(4623)
moveEvent1:id(4624)
moveEvent1:id(4625)

local moveEvent2 = MoveEvent()
moveEvent2:type("stepout")
moveEvent2:id(4820)
moveEvent2:id(4821)
moveEvent2:id(4822)
moveEvent2:id(4823)
moveEvent2:id(4824)
moveEvent2:id(4825)

local function onStepOut(creature, item, position, fromPosition)

	local player = creature:getPlayer()
	if player == nil then
		return false
	end

	player:removeCondition(CONDITION_OUTFIT)
	return true
end

moveEvent1:onStepOut(onStepOut)
moveEvent1:register()
moveEvent2:onStepOut(onStepOut)
moveEvent2:register()