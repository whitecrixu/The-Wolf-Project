-- Tiquandas Revenge
-- Auto-converted from XML

local monster = Game.createMonsterType("Tiquandas Revenge")
if not monster then return end

monster:name("Tiquandas Revenge")
monster:nameDescription("a tiquandas revenge")
monster:health(2000)
monster:maxHealth(2000)
monster:experience(1755)
monster:speed(440)
monster:race(RACE_VENOM)
monster:corpseId(6047)
monster:outfit({lookType = 120})
monster:defense(31)
monster:armor(30)
monster:runHealth(400)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Immunities
monster:immunities({
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 10},
    {id = 2148, chance = 100000, maxCount = 100},
    {id = 2666, chance = 33333, maxCount = 50},
    {id = 2671, chance = 20000, maxCount = 8},
    {id = 2145, chance = 33333, maxCount = 3},
    {id = 7732, chance = 4000},
    {id = 5015, chance = 100000},
    {id = 3976, chance = 50000, maxCount = 10},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=70, attack=40
-- name=poison, interval=1000, chance=25, range=7, min=-60, max=-200, shootEffect=poison, areaEffect=greenspark
-- name=speed, interval=1000, chance=34, range=7, duration=30000, speedchange=-850, shootEffect=poison, areaEffect=greenspark
-- name=poison, interval=1000, chance=12, min=-40, max=-130, radius=3, areaEffect=poison
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=ultimate healing, interval=1200, chance=35, min=600, max=800
--]]

monster:register()
