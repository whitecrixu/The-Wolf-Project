-- Frazzlemaw
-- Auto-converted from XML

local monster = Game.createMonsterType("Frazzlemaw")
if not monster then return end

monster:name("Frazzlemaw")
monster:nameDescription("Frazzlemaw")
monster:health(4100)
monster:maxHealth(4100)
monster:experience(3400)
monster:speed(250)
monster:race(RACE_BLOOD)
monster:corpseId(22567)
monster:outfit({lookType = 594})
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
    {type = COMBAT_PHYSICALDAMAGE, percent = 10},
    {type = COMBAT_DEATHDAMAGE, percent = 15},
    {type = COMBAT_FIREDAMAGE, percent = 10},
    {type = COMBAT_ENERGYDAMAGE, percent = 15},
    {type = COMBAT_ICEDAMAGE, percent = 5},
    {type = COMBAT_EARTHDAMAGE, percent = 20},
    {type = COMBAT_HOLYDAMAGE, percent = -10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Mwaaaahnducate youuuuuu *gurgle*", yell = false},
    {text = "mwaaah!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 100},
    {id = 2152, chance = 100000, maxCount = 7},
    {id = 2219, chance = 9500},
    {id = 2225, chance = 10400},
    {id = 2226, chance = 10000},
    {id = 2229, chance = 12680},
    {id = 2230, chance = 10000},
    {id = 2231, chance = 5500},
    {id = 2377, chance = 3200},
    {id = 2667, chance = 6750, maxCount = 3},
    {id = 2671, chance = 6000, maxCount = 2},
    {id = 5880, chance = 3000},
    {id = 5895, chance = 4700},
    {id = 5925, chance = 5000},
    {id = 5951, chance = 10800},
    {id = 7404, chance = 1000},
    {id = 7407, chance = 2240},
    {id = 7418, chance = 1100},
    {id = 7590, chance = 15000, maxCount = 3},
    {id = 7591, chance = 15000, maxCount = 2},
    {id = 9971, chance = 2300},
    {id = 11306, chance = 1460},
    {id = 18414, chance = 3000},
    {id = 18417, chance = 16000},
    {id = 18420, chance = 7600},
    {id = 18554, chance = 10000},
    {id = 22396, chance = 450},
    {id = 22532, chance = 18760},
    {id = 22533, chance = 16000},
    {id = 2240, chance = 9420},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=90, attack=80
-- name=bleedcondition, interval=2000, chance=10, min=-300, max=-400, radius=3, areaEffect=redspark
-- name=physical, interval=2000, chance=10, max=-700, length=5, target=1, areaEffect=explosionarea
-- name=physical, interval=2000, chance=15, max=-400, radius=2, target=1, shootEffect=largerock, areaEffect=stones
-- name=speed, interval=2000, chance=15, radius=5, duration=15000, speedchange=-600, areaEffect=redshimmer
-- name=manadrain, interval=2000, chance=10, min=-80, max=-150, radius=4, areaEffect=redshimmer
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=15, min=250, max=425, areaEffect=greenspark
--]]

monster:register()
