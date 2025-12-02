-- The Old Widow
-- Auto-converted from XML

local monster = Game.createMonsterType("The Old Widow")
if not monster then return end

monster:name("The Old Widow")
monster:nameDescription("the Old Widow")
monster:health(3200)
monster:maxHealth(3200)
monster:experience(4200)
monster:speed(240)
monster:race(RACE_BLOOD)
monster:corpseId(5977)
monster:outfit({lookType = 208})
monster:defense(21)
monster:armor(17)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_LIFEDRAIN, immunity = true},
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Summons
monster:summons({
    {name = "giant spider", chance = 13, interval = 1000, max = 2},
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 99},
    {id = 2152, chance = 100000, maxCount = 10},
    {id = 5879, chance = 100000},
    {id = 2457, chance = 100000},
    {id = 7591, chance = 100000, maxCount = 4},
    {id = 2476, chance = 50000},
    {id = 2165, chance = 33333},
    {id = 2167, chance = 33333},
    {id = 2169, chance = 33333},
    {id = 13307, chance = 33333},
    {id = 2477, chance = 25000},
    {id = 2171, chance = 25000},
    {id = 5886, chance = 25000},
    {id = 7416, chance = 3225},
    {id = 7419, chance = 1639},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, min=-100, max=-500
-- name=poison, interval=1000, chance=15, range=7, min=-250, max=-300, shootEffect=poison, areaEffect=poison
-- name=speed, interval=1000, chance=20, range=7, duration=25000, speedchange=-850, shootEffect=poison, areaEffect=poison
-- name=poisonfield, interval=1000, chance=10, range=7, radius=4, target=1, shootEffect=poison
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=1000, chance=17, min=225, max=275, areaEffect=blueshimmer
-- name=speed, interval=1000, chance=8, duration=6000, speedchange=345, areaEffect=redshimmer
--]]

monster:register()
