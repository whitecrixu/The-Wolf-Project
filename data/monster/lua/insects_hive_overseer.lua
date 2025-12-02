-- Hive Overseer
-- Auto-converted from XML

local monster = Game.createMonsterType("Hive Overseer")
if not monster then return end

monster:name("Hive Overseer")
monster:nameDescription("a Hive Overseer")
monster:health(7500)
monster:maxHealth(7500)
monster:experience(5500)
monster:speed(200)
monster:race(RACE_VENOM)
monster:corpseId(15354)
monster:outfit({lookType = 458})
monster:defense(45)
monster:armor(45)
monster:targetDistance(4)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 70},
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
    {type = COMBAT_PHYSICALDAMAGE, percent = 60},
    {type = COMBAT_HOLYDAMAGE, percent = 10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Zopp!", yell = false},
    {text = "Kropp!", yell = false},
})

-- Summons
monster:summons({
    {name = "Spidris Elite", chance = 40, interval = 2000, max = 2},
})

-- Loot
monster:loot({
    {id = 2148, chance = 40000, maxCount = 100},
    {id = 2148, chance = 58000, maxCount = 98},
    {id = 2152, chance = 84000, maxCount = 6},
    {id = 15480, chance = 28000},
    {id = 7590, chance = 18000},
    {id = 15486, chance = 16000},
    {id = 8473, chance = 12000},
    {id = 2147, chance = 16000, maxCount = 2},
    {id = 7632, chance = 6000},
    {id = 9971, chance = 29000},
    {id = 15572, chance = 13000, maxCount = 2},
    {id = 15489, chance = 830},
    {id = 15492, chance = 1650},
    {id = 15643, chance = 830},
    {id = 15491, chance = 920},
    {id = 2645, chance = 550},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=90, attack=90
-- name=earth, interval=2000, chance=20, min=-60, max=-80, radius=4, areaEffect=poison
-- name=poisoncondition, interval=2000, chance=20, min=-600, max=-1000, radius=4, areaEffect=greenbubble
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=50, min=50, max=100, areaEffect=blueshimmer
-- name=healing, interval=2000, chance=15, min=500, max=700, areaEffect=blueshimmer
--]]

monster:register()
