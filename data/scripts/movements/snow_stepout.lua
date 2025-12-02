-- Converted from: snow.lua
-- Event: StepOut

local moveEvent1 = MoveEvent()
moveEvent1:type("stepout")
moveEvent1:id(670)

local moveEvent2 = MoveEvent()
moveEvent2:type("stepout")
moveEvent2:id(6580)
moveEvent2:id(6581)
moveEvent2:id(6582)
moveEvent2:id(6583)
moveEvent2:id(6584)
moveEvent2:id(6585)
moveEvent2:id(6586)
moveEvent2:id(6587)
moveEvent2:id(6588)
moveEvent2:id(6589)
moveEvent2:id(6590)
moveEvent2:id(6591)
moveEvent2:id(6592)
moveEvent2:id(6593)

local function onStepOut(creature, item, position, fromPosition)

	if creature:isPlayer() and creature:isInGhostMode() then
		return true
	end

	if item:getId() == 670 then
		item:transform(6594)
	else
		item:transform(item.itemid + 15)
	end
	item:decay()
	return true
end

moveEvent1:onStepOut(onStepOut)
moveEvent1:register()
moveEvent2:onStepOut(onStepOut)
moveEvent2:register()