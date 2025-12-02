-- Converted from: tiles.lua
-- Event: StepOut

local increasing = {[416] = 417, [426] = 425, [446] = 447, [3216] = 3217, [3202] = 3215, [11062] = 11063}
local decreasing = {[417] = 416, [425] = 426, [447] = 446, [3217] = 3216, [3215] = 3202, [11063] = 11062}
local maxLevel = 1000

local moveEvent1 = MoveEvent()
moveEvent1:type("stepout")
moveEvent1:id(417)

local moveEvent2 = MoveEvent()
moveEvent2:type("stepout")
moveEvent2:id(425)

local moveEvent3 = MoveEvent()
moveEvent3:type("stepout")
moveEvent3:id(447)

local moveEvent4 = MoveEvent()
moveEvent4:type("stepout")
moveEvent4:id(3217)

local moveEvent5 = MoveEvent()
moveEvent5:type("stepout")
moveEvent5:id(11063)

local function onStepOut(creature, item, position, fromPosition)

	if not decreasing[item.itemid] then
		return true
	end

	if creature:isPlayer() and creature:isInGhostMode() then
		return true
	end

	item:transform(decreasing[item.itemid])
	return true
end

moveEvent1:onStepOut(onStepOut)
moveEvent1:register()
moveEvent2:onStepOut(onStepOut)
moveEvent2:register()
moveEvent3:onStepOut(onStepOut)
moveEvent3:register()
moveEvent4:onStepOut(onStepOut)
moveEvent4:register()
moveEvent5:onStepOut(onStepOut)
moveEvent5:register()