-- The Count
-- Auto-converted from XML

local monster = Game.createMonsterType("The Count")
if not monster then return end

monster:name("The Count")
monster:nameDescription("the count")
monster:health(4600)
monster:maxHealth(4600)
monster:experience(1750)
monster:speed(370)
monster:race(RACE_UNDEAD)
monster:corpseId(8937)
monster:outfit({lookType = 287})
monster:defense(30)
monster:armor(30)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 20},
    {type = COMBAT_HOLYDAMAGE, percent = -20},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_LIFEDRAIN, immunity = true},
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Summons
monster:summons({
    {name = "Banshee", chance = 50, interval = 4000, max = 1},
})

-- Loot
monster:loot({
    {id = 2148, chance = 40000, maxCount = 98},
    {id = 8752, chance = 100000},
    {id = 2391, chance = 2300},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=130, attack=135
-- name=lifedrain, interval=1000, chance=9, max=-300, radius=4, areaEffect=smallclouds
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=1000, chance=25, min=100, max=195, areaEffect=blueshimmer
-- name=invisible, interval=3000, chance=30, duration=6000, areaEffect=blueshimmer
--]]

monster:register()
