-- Ribstride
-- Auto-converted from XML

local monster = Game.createMonsterType("Ribstride")
if not monster then return end

monster:name("Ribstride")
monster:nameDescription("Ribstride")
monster:health(1000)
monster:maxHealth(1000)
monster:experience(1100)
monster:speed(210)
monster:race(RACE_UNDEAD)
monster:corpseId(6030)
monster:outfit({lookType = 101})
monster:defense(35)
monster:armor(35)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = -10},
    {type = COMBAT_HOLYDAMAGE, percent = -20},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_DROWN, immunity = true},
    {condition = CONDITION_LIFEDRAIN, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Loot
monster:loot({
    {id = 11194, chance = 100000},
    {id = 5925, chance = 98910, maxCount = 3},
    {id = 2152, chance = 98910, maxCount = 8},
    {id = 2145, chance = 61960, maxCount = 4},
    {id = 2541, chance = 60000},
    {id = 2796, chance = 60000, maxCount = 4},
    {id = 11161, chance = 29000},
    {id = 5741, chance = 8700},
    {id = 13291, chance = 2000},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-200
-- name=lifedrain, interval=2000, chance=10, min=-25, max=-47, radius=3, areaEffect=redshimmer
-- name=earth, interval=2000, chance=15, range=7, min=-50, max=-90, shootEffect=poison, areaEffect=poison
-- name=poisoncondition, interval=2000, chance=10, min=-50, max=-60, radius=3, areaEffect=poison
-- name=poisoncondition, interval=2000, chance=10, min=-70, max=-80, length=6, areaEffect=poison
-- name=speed, interval=2000, chance=15, target=1, duration=13000, speedchange=-300
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=15, min=30, max=50, areaEffect=greenspark
--]]

monster:register()
