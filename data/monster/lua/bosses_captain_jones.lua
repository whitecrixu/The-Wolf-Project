-- Captain Jones
-- Auto-converted from XML

local monster = Game.createMonsterType("Captain Jones")
if not monster then return end

monster:name("Captain Jones")
monster:nameDescription("Captain Jones")
monster:health(800)
monster:maxHealth(800)
monster:experience(825)
monster:speed(170)
monster:race(RACE_UNDEAD)
monster:corpseId(5566)
monster:outfit({lookType = 196})
monster:defense(0)
monster:armor(0)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_HOLYDAMAGE, percent = -15},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_LIFEDRAIN, immunity = true},
    {condition = CONDITION_BLEEDING, immunity = true},
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 150},
    {id = 2165, chance = 33000},
    {id = 10601, chance = 13700},
    {id = 2488, chance = 5070},
    {id = 8871, chance = 3070},
    {id = 2655, chance = 1110},
    {id = 2383, chance = 1110},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-95
-- name=lifedrain, interval=2000, chance=15, min=-30, max=-80, radius=1, areaEffect=redshimmer
-- name=death, interval=2000, chance=10, range=1, min=-130, max=-150, radius=1, target=1, shootEffect=death, areaEffect=smallclouds
-- name=outfit, interval=2000, chance=5, range=3, target=1, duration=4000, shootEffect=explosion
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=5, min=40, max=70, areaEffect=blueshimmer
--]]

monster:register()
