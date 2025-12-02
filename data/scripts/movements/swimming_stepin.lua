-- Converted from: swimming.lua
-- Event: StepIn

local outfit = {lookType = 267, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0}

local moveEvent1 = MoveEvent()
moveEvent1:type("stepin")
moveEvent1:id(4620)
moveEvent1:id(4621)
moveEvent1:id(4622)
moveEvent1:id(4623)
moveEvent1:id(4624)
moveEvent1:id(4625)

local moveEvent2 = MoveEvent()
moveEvent2:type("stepin")
moveEvent2:id(4820)
moveEvent2:id(4821)
moveEvent2:id(4822)
moveEvent2:id(4823)
moveEvent2:id(4824)
moveEvent2:id(4825)

local function onStepIn(creature, item, position, fromPosition)

	if not creature:isPlayer() then
		return false
	end

	doSetCreatureOutfit(creature, outfit, -1)
	return true
end

moveEvent1:onStepIn(onStepIn)
moveEvent1:register()
moveEvent2:onStepIn(onStepIn)
moveEvent2:register()