-- Converted from: drowning.lua
-- Event: StepIn

local condition = Condition(CONDITION_DROWN)

local moveEvent1 = MoveEvent()
moveEvent1:type("stepin")
moveEvent1:id(5405)

local function onStepIn(creature, item, position, fromPosition)

	local player = creature:getPlayer()
	if player == nil then
		return true
	end

	if math.random(1, 10) == 1 then
		position:sendMagicEffect(CONST_ME_BUBBLES)
	end
	player:addCondition(condition)
	return true
end

moveEvent1:onStepIn(onStepIn)
moveEvent1:register()