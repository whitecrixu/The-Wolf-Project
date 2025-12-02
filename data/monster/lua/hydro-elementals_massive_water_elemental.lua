-- Massive Water Elemental
-- Auto-converted from XML

local monster = Game.createMonsterType("Massive Water Elemental")
if not monster then return end

monster:name("Massive Water Elemental")
monster:nameDescription("a massive water elemental")
monster:health(1250)
monster:maxHealth(1250)
monster:experience(1100)
monster:speed(280)
monster:race(RACE_UNDEAD)
monster:corpseId(10499)
monster:outfit({lookType = 11})
monster:defense(25)
monster:armor(25)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 30},
    {type = COMBAT_HOLYDAMAGE, percent = 30},
    {type = COMBAT_DEATHDAMAGE, percent = 50},
    {type = COMBAT_ENERGYDAMAGE, percent = -25},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_DROWN, immunity = true},
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_FREEZING, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_LIFEDRAIN, immunity = true},
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 100},
    {id = 2152, chance = 20000, maxCount = 2},
    {id = 2667, chance = 40000, maxCount = 2},
    {id = 2145, chance = 1900, maxCount = 2},
    {id = 2149, chance = 1000, maxCount = 2},
    {id = 7591, chance = 10000},
    {id = 7590, chance = 10400},
    {id = 2167, chance = 910},
    {id = 2168, chance = 1000},
    {id = 7158, chance = 1340},
    {id = 7159, chance = 1590},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=45, attack=80
-- name=drown, interval=2000, chance=15, range=7, min=-330, max=-450, radius=2, target=1, areaEffect=bluebubble
-- name=icicle, interval=2000, chance=20, range=7, min=-170, max=-210
-- name=poisoncondition, interval=2000, chance=20, min=-355, max=-420, radius=5, areaEffect=poison
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=5, min=120, max=250, areaEffect=blueshimmer
--]]

monster:register()
