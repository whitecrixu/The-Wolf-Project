-- Converted from: trap.lua
-- Event: StepIn

local traps = {
	[1510] = {transformTo = 1511, damage = {-50, -100}},
	[1513] = {damage = {-50, -100}},
	[2579] = {transformTo = 2578, damage = {-15, -30}, ignorePlayer = false},
	[4208] = {transformTo = 4209, damage = {-15, -30}, type = COMBAT_EARTHDAMAGE}
}

local moveEvent1 = MoveEvent()
moveEvent1:type("stepin")
moveEvent1:id(1510)

local moveEvent2 = MoveEvent()
moveEvent2:type("stepin")
moveEvent2:id(1513)

local moveEvent3 = MoveEvent()
moveEvent3:type("stepin")
moveEvent3:id(2579)

local moveEvent4 = MoveEvent()
moveEvent4:type("stepin")
moveEvent4:id(4208)

local function onStepIn(creature, item, position, fromPosition)
	local trap = traps[item.itemid]
	if not trap then
		return true
	end

	if trap.transformTo then
		item:transform(trap.transformTo)
	end

	if trap.ignorePlayer and creature:isPlayer() then
		return true
	end

	doTargetCombatHealth(0, creature, trap.type or COMBAT_PHYSICALDAMAGE, trap.damage[1], trap.damage[2], CONST_ME_NONE)
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
