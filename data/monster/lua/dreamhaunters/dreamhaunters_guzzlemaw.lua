-- Guzzlemaw
-- Auto-converted from XML

local monster = Game.createMonsterType("Guzzlemaw")
if not monster then return end

monster:name("Guzzlemaw")
monster:nameDescription("Guzzlemaw")
monster:health(6400)
monster:maxHealth(6400)
monster:experience(5500)
monster:speed(270)
monster:race(RACE_BLOOD)
monster:corpseId(22485)
monster:outfit({lookType = 584})
monster:defense(50)
monster:armor(50)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(80)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 10},
    {type = COMBAT_DEATHDAMAGE, percent = 5},
    {type = COMBAT_FIREDAMAGE, percent = 5},
    {type = COMBAT_ENERGYDAMAGE, percent = 5},
    {type = COMBAT_ICEDAMAGE, percent = 5},
    {type = COMBAT_EARTHDAMAGE, percent = 15},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Gmmmooooh! *chomp*", yell = false},
    {text = "MWAAAH! *gurgle*", yell = false},
    {text = "*chomp* Mmmoh! *chomp*", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 100},
    {id = 2152, chance = 100000, maxCount = 7},
    {id = 2219, chance = 10700},
    {id = 2225, chance = 10500},
    {id = 2226, chance = 9500},
    {id = 2229, chance = 10400},
    {id = 2230, chance = 9200},
    {id = 2231, chance = 4500},
    {id = 2377, chance = 2700},
    {id = 2667, chance = 7000, maxCount = 3},
    {id = 2671, chance = 10000},
    {id = 5880, chance = 3000},
    {id = 5895, chance = 5000},
    {id = 5925, chance = 5700},
    {id = 5951, chance = 9400},
    {id = 7404, chance = 1000},
    {id = 7407, chance = 2000},
    {id = 7418, chance = 380},
    {id = 7590, chance = 17000, maxCount = 3},
    {id = 7591, chance = 18500, maxCount = 2},
    {id = 11306, chance = 1200},
    {id = 18414, chance = 3000},
    {id = 18417, chance = 12000, maxCount = 2},
    {id = 18420, chance = 7600},
    {id = 18554, chance = 12000},
    {id = 22396, chance = 920},
    {id = 22532, chance = 15000},
    {id = 22533, chance = 14000},
    {id = 2240, chance = 10110},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=95, attack=95
-- name=bleedcondition, interval=2000, chance=10, min=-500, max=-1000, radius=3, areaEffect=redspark
-- name=physical, interval=2000, chance=10, max=-900, length=8, spread=3, target=1, areaEffect=explosionarea
-- name=physical, interval=2000, chance=20, max=-500, radius=2, target=1, shootEffect=largerock, areaEffect=stones
-- name=speed, interval=2000, chance=15, radius=6, duration=15000, speedchange=-800, areaEffect=redshimmer
-- name=manadrain, interval=2000, chance=10, min=-120, max=-250, radius=4, areaEffect=redshimmer
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=20, min=250, max=425, areaEffect=greenspark
--]]

monster:register()
