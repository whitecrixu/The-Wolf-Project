-- Converted from: trap.lua
-- Event: StepOut

local moveEvent1 = MoveEvent()
moveEvent1:type("stepout")
moveEvent1:id(1511)

local moveEvent2 = MoveEvent()
moveEvent2:type("stepout")
moveEvent2:id(2579)

local moveEvent3 = MoveEvent()
moveEvent3:type("stepout")
moveEvent3:id(4209)

local function onStepOut(creature, item, position, fromPosition)
	item:transform(item.itemid - 1)
	return true
end

moveEvent1:onStepOut(onStepOut)
moveEvent1:register()
moveEvent2:onStepOut(onStepOut)
moveEvent2:register()
moveEvent3:onStepOut(onStepOut)
moveEvent3:register()
