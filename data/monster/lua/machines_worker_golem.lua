-- Worker Golem
-- Auto-converted from XML

local monster = Game.createMonsterType("Worker Golem")
if not monster then return end

monster:name("Worker Golem")
monster:nameDescription("a worker golem")
monster:health(1470)
monster:maxHealth(1470)
monster:experience(1250)
monster:speed(230)
monster:race(RACE_ENERGY)
monster:corpseId(9801)
monster:outfit({lookType = 304})
monster:defense(35)
monster:armor(35)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(70)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = 50},
    {type = COMBAT_HOLYDAMAGE, percent = 50},
    {type = COMBAT_ENERGYDAMAGE, percent = -5},
    {type = COMBAT_PHYSICALDAMAGE, percent = 10},
    {type = COMBAT_ICEDAMAGE, percent = 10},
    {type = COMBAT_DEATHDAMAGE, percent = 10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
})

-- Voices
monster:voices({
    {text = "INTRUDER ALARM!", yell = false},
    {text = "klonk klonk klonk", yell = false},
    {text = "Rrrtttarrrttarrrtta", yell = false},
    {text = "Awaiting orders.", yell = false},
    {text = "Secret objective complete.", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 43000, maxCount = 100},
    {id = 2148, chance = 50000, maxCount = 40},
    {id = 2145, chance = 1000, maxCount = 2},
    {id = 8309, chance = 5000, maxCount = 5},
    {id = 5880, chance = 1001},
    {id = 9690, chance = 1007},
    {id = 9809, chance = 200},
    {id = 9812, chance = 50},
    {id = 8472, chance = 830},
    {id = 7591, chance = 2100},
    {id = 7439, chance = 820},
    {id = 7452, chance = 1003},
    {id = 2391, chance = 920},
    {id = 2177, chance = 890},
    {id = 2164, chance = 370},
    {id = 7428, chance = 130},
    {id = 7590, chance = 1470},
    {id = 10572, chance = 2270},
    {id = 9979, chance = 2270},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=50, attack=80
-- name=physical, interval=2000, chance=15, range=7, max=-125, shootEffect=smallstone
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=10, min=200, max=250, areaEffect=blueshimmer
--]]

monster:register()
