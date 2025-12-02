-- Water Elemental
-- Auto-converted from XML

local monster = Game.createMonsterType("Water Elemental")
if not monster then return end

monster:name("Water Elemental")
monster:nameDescription("a water elemental")
monster:health(550)
monster:maxHealth(550)
monster:experience(650)
monster:speed(220)
monster:race(RACE_UNDEAD)
monster:corpseId(10499)
monster:outfit({lookType = 286})
monster:defense(20)
monster:armor(20)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 35},
    {type = COMBAT_HOLYDAMAGE, percent = 50},
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
    {id = 2152, chance = 10000},
    {id = 2667, chance = 20000},
    {id = 2149, chance = 1000, maxCount = 2},
    {id = 2145, chance = 1000},
    {id = 2146, chance = 1000},
    {id = 7632, chance = 800},
    {id = 7633, chance = 800},
    {id = 7588, chance = 10000},
    {id = 7589, chance = 10000},
    {id = 2167, chance = 950},
    {id = 2168, chance = 930},
    {id = 7158, chance = 940},
    {id = 7159, chance = 1050},
    {id = 10220, chance = 260},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=30, attack=80
-- name=drown, interval=2000, chance=10, range=7, min=-125, max=-235, radius=2, target=1, areaEffect=bluebubble
-- name=icicle, interval=2000, chance=20, range=7, min=-88, max=-150
-- name=poisoncondition, interval=2000, chance=15, min=-225, max=-260, radius=5, areaEffect=poison
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=5, min=50, max=80, areaEffect=blueshimmer
-- name=speed, interval=2000, chance=15, duration=5000, speedchange=300, areaEffect=redshimmer
--]]

monster:register()
