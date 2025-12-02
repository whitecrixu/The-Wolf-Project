-- The Weakened Count
-- Auto-converted from XML

local monster = Game.createMonsterType("The Weakened Count")
if not monster then return end

monster:name("The Weakened Count")
monster:nameDescription("The Weakened Count")
monster:health(740)
monster:maxHealth(740)
monster:experience(450)
monster:speed(370)
monster:race(RACE_UNDEAD)
monster:corpseId(6006)
monster:outfit({lookType = 68})
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

-- Loot
monster:loot({
    {id = 2148, chance = 40000, maxCount = 98},
    {id = 8752, chance = 100000},
    {id = 2391, chance = 2300},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, min=-50, max=-75, skill=100
-- name=lifedrain, interval=1000, chance=9, max=-100, radius=4, areaEffect=smallclouds
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=1000, chance=25, min=50, max=105, areaEffect=blueshimmer
-- name=invisible, interval=3000, chance=30, duration=6000, areaEffect=blueshimmer
--]]

monster:register()
