-- Converted from: decay.lua
-- Event: StepIn

local moveEvent1 = MoveEvent()
moveEvent1:type("stepin")
moveEvent1:id(293)

local moveEvent2 = MoveEvent()
moveEvent2:type("stepin")
moveEvent2:id(461)

local moveEvent3 = MoveEvent()
moveEvent3:type("stepin")
moveEvent3:id(3310)

local function onStepIn(creature, item, position, fromPosition)

	item:transform(item.itemid + 1)
	item:decay()
	return true
end

moveEvent1:onStepIn(onStepIn)
moveEvent1:register()
moveEvent2:onStepIn(onStepIn)
moveEvent2:register()
moveEvent3:onStepIn(onStepIn)
moveEvent3:register()