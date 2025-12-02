-- Converted from: drowning.lua
-- Event: StepOut

local condition = Condition(CONDITION_DROWN)

local moveEvent1 = MoveEvent()
moveEvent1:type("stepout")
moveEvent1:id(5405)

local function onStepOut(creature, item, position, fromPosition)

	local player = creature:getPlayer()
	if player == nil then
		return true
	end

	player:removeCondition(CONDITION_DROWN)
	return true
end

moveEvent1:onStepOut(onStepOut)
moveEvent1:register()