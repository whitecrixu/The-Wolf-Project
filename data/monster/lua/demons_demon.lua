-- Demon
-- Auto-converted from XML

local monster = Game.createMonsterType("Demon")
if not monster then return end

monster:name("Demon")
monster:nameDescription("a demon")
monster:health(8200)
monster:maxHealth(8200)
monster:experience(6000)
monster:speed(280)
monster:race(RACE_FIRE)
monster:corpseId(5995)
monster:outfit({lookType = 35})
monster:defense(55)
monster:armor(55)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(70)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 30},
    {type = COMBAT_DEATHDAMAGE, percent = 30},
    {type = COMBAT_ENERGYDAMAGE, percent = 50},
    {type = COMBAT_EARTHDAMAGE, percent = 40},
    {type = COMBAT_ICEDAMAGE, percent = -10},
    {type = COMBAT_HOLYDAMAGE, percent = -10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_DROWN, immunity = true},
    {condition = CONDITION_LIFEDRAIN, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Your soul will be mine!", yell = false},
    {text = "MUHAHAHAHA!", yell = false},
    {text = "CHAMEK ATH UTHUL ARAK!", yell = false},
    {text = "I SMELL FEEEEAAAAAR!", yell = false},
    {text = "Your resistance is futile!", yell = false},
})

-- Summons
monster:summons({
    {name = "fire elemental", chance = 10, interval = 2000, max = 1},
})

-- Loot
monster:loot({
    {id = 2148, chance = 60000, maxCount = 100},
    {id = 2148, chance = 60000, maxCount = 99},
    {id = 2152, chance = 100000, maxCount = 6},
    {id = 2795, chance = 20740, maxCount = 6},
    {id = 8473, chance = 20000, maxCount = 3},
    {id = 7590, chance = 14285, maxCount = 3},
    {id = 2387, chance = 14285},
    {id = 2149, chance = 10000},
    {id = 7368, chance = 5263, maxCount = 5},
    {id = 2432, chance = 3703},
    {id = 2151, chance = 3571},
    {id = 2176, chance = 2854},
    {id = 2393, chance = 2000},
    {id = 2418, chance = 1428},
    {id = 2165, chance = 1333},
    {id = 2462, chance = 1204},
    {id = 1982, chance = 1190},
    {id = 2179, chance = 1010},
    {id = 2171, chance = 813},
    {id = 2396, chance = 666},
    {id = 2520, chance = 649},
    {id = 2214, chance = 473},
    {id = 5954, chance = 467},
    {id = 2470, chance = 413},
    {id = 2514, chance = 389},
    {id = 2164, chance = 170},
    {id = 2472, chance = 70},
    {id = 7393, chance = 100},
    {id = 7382, chance = 80},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=70, attack=130
-- name=manadrain, interval=2000, chance=10, range=7, max=-120
-- name=fire, interval=2000, chance=20, range=7, min=-150, max=-250, radius=7, target=1, shootEffect=fire, areaEffect=firearea
-- name=firefield, interval=2000, chance=10, range=7, radius=1, target=1, shootEffect=fire
-- name=lifedrain, interval=2000, chance=10, min=-300, max=-490, length=8, areaEffect=purpleenergy
-- name=energy strike, interval=2000, chance=10, range=1, min=-210, max=-300
-- name=speed, interval=2000, chance=15, radius=1, target=1, duration=30000, speedchange=-700, areaEffect=redshimmer
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=15, min=180, max=250, areaEffect=blueshimmer
-- name=speed, interval=2000, chance=15, duration=5000, speedchange=320, areaEffect=redshimmer
--]]

monster:register()
