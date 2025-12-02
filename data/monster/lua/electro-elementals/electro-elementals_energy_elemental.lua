-- Energy Elemental
-- Auto-converted from XML

local monster = Game.createMonsterType("Energy Elemental")
if not monster then return end

monster:name("Energy Elemental")
monster:nameDescription("an energy elemental")
monster:health(500)
monster:maxHealth(500)
monster:experience(550)
monster:speed(200)
monster:race(RACE_ENERGY)
monster:corpseId(8966)
monster:outfit({lookType = 293})
monster:defense(15)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:pushable(false)
monster:staticAttackChance(85)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 30},
    {type = COMBAT_HOLYDAMAGE, percent = 10},
    {type = COMBAT_DEATHDAMAGE, percent = 5},
    {type = COMBAT_EARTHDAMAGE, percent = -15},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_ENERGY, immunity = true},
    {condition = CONDITION_FREEZING, immunity = true},
    {condition = CONDITION_LIFEDRAIN, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 100},
    {id = 2148, chance = 50000, maxCount = 70},
    {id = 7620, chance = 11711},
    {id = 7638, chance = 10000, maxCount = 10},
    {id = 2399, chance = 9900, maxCount = 5},
    {id = 7589, chance = 7692},
    {id = 7449, chance = 5882},
    {id = 2150, chance = 5000, maxCount = 2},
    {id = 2425, chance = 3571},
    {id = 2124, chance = 2000},
    {id = 2170, chance = 1020},
    {id = 2167, chance = 892},
    {id = 2189, chance = 636},
    {id = 2515, chance = 243},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=40, attack=70
-- name=energy, interval=2000, chance=10, range=7, min=-125, max=-252, radius=2, target=1, shootEffect=energy, areaEffect=energy
-- name=energy, interval=2000, chance=15, range=7, min=-100, max=-130, target=1, shootEffect=energyball, areaEffect=energy
-- name=energy elemental electrify, interval=2000, chance=20
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=10, min=90, max=150, areaEffect=blueshimmer
--]]

monster:register()
