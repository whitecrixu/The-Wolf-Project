-- Lava Golem
-- Auto-converted from XML

local monster = Game.createMonsterType("Lava Golem")
if not monster then return end

monster:name("Lava Golem")
monster:nameDescription("a lava golem")
monster:health(9000)
monster:maxHealth(9000)
monster:experience(6200)
monster:speed(290)
monster:race(RACE_FIRE)
monster:corpseId(17332)
monster:outfit({lookType = 491})
monster:defense(60)
monster:armor(60)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ICEDAMAGE, percent = -5},
    {type = COMBAT_PHYSICALDAMAGE, percent = 1},
    {type = COMBAT_ENERGYDAMAGE, percent = 1},
    {type = COMBAT_DEATHDAMAGE, percent = 1},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Grrrrunt", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 200},
    {id = 2152, chance = 100000, maxCount = 11},
    {id = 7620, chance = 20720, maxCount = 2},
    {id = 7588, chance = 19000, maxCount = 2},
    {id = 7589, chance = 18150, maxCount = 2},
    {id = 7590, chance = 16030, maxCount = 2},
    {id = 18424, chance = 15370, maxCount = 2},
    {id = 8473, chance = 15290},
    {id = 18425, chance = 15000},
    {id = 18416, chance = 14000, maxCount = 2},
    {id = 10553, chance = 13580},
    {id = 18435, chance = 12460, maxCount = 5},
    {id = 5880, chance = 11620},
    {id = 18420, chance = 10990},
    {id = 5914, chance = 7300},
    {id = 2154, chance = 6480},
    {id = 18414, chance = 6200},
    {id = 5909, chance = 4810},
    {id = 5911, chance = 3530},
    {id = 2187, chance = 3050},
    {id = 7890, chance = 2950},
    {id = 7891, chance = 2570},
    {id = 2392, chance = 1730},
    {id = 2432, chance = 1560},
    {id = 18409, chance = 1390},
    {id = 2519, chance = 1250},
    {id = 2156, chance = 1200},
    {id = 8902, chance = 530},
    {id = 7899, chance = 410},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-390
-- name=fire, interval=2000, chance=15, min=-350, max=-700, length=8, areaEffect=fireattack
-- name=manadrain, interval=2000, chance=10, min=-600, max=-1300, length=8, areaEffect=mortarea
-- name=lava golem soulfire, interval=2000, chance=15
-- name=fire, interval=2000, chance=15, min=-220, max=-350, radius=4, target=1, areaEffect=firearea
-- name=speed, interval=2000, chance=10, length=5, spread=3, duration=10000, speedchange=-300, areaEffect=yellowspark
-- name=fire, interval=2000, chance=30, min=-280, max=-350, radius=3, areaEffect=fire
--]]

monster:register()
