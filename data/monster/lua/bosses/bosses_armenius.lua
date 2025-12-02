-- Armenius
-- Auto-converted from XML

local monster = Game.createMonsterType("Armenius")
if not monster then return end

monster:name("Armenius")
monster:nameDescription("Armenius")
monster:health(550)
monster:maxHealth(550)
monster:experience(500)
monster:speed(220)
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
    {type = COMBAT_PHYSICALDAMAGE, percent = 35},
    {type = COMBAT_FIREDAMAGE, percent = -10},
    {type = COMBAT_HOLYDAMAGE, percent = -25},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_LIFEDRAIN, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_DROWN, immunity = true},
})

-- Voices
monster:voices({
    {text = "I smell warm blood!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 90230, maxCount = 60},
    {id = 10602, chance = 7600},
    {id = 12405, chance = 5100},
    {id = 2747, chance = 1910},
    {id = 2144, chance = 1800},
    {id = 2412, chance = 1560},
    {id = 7588, chance = 1500},
    {id = 2383, chance = 1000},
    {id = 2229, chance = 1000},
    {id = 2396, chance = 420},
    {id = 2479, chance = 420},
    {id = 2127, chance = 230},
    {id = 2534, chance = 230},
    {id = 2172, chance = 220},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=50, attack=50
-- name=lifedrain, interval=2000, chance=20, range=1, min=-50, max=-200, radius=1, target=1, areaEffect=smallclouds
-- name=speed, interval=2000, chance=15, radius=1, duration=60000, speedchange=-400, areaEffect=redshimmer
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=outfit, interval=2000, chance=10, duration=5000, areaEffect=groundshaker
-- name=speed, interval=2000, chance=15, duration=3000, speedchange=300, areaEffect=redshimmer
-- name=healing, interval=2000, chance=15, min=15, max=25
--]]

monster:register()
