-- Ghastly Dragon
-- Auto-converted from XML

local monster = Game.createMonsterType("Ghastly Dragon")
if not monster then return end

monster:name("Ghastly Dragon")
monster:nameDescription("a ghastly dragon")
monster:health(7800)
monster:maxHealth(7800)
monster:experience(4600)
monster:speed(320)
monster:race(RACE_UNDEAD)
monster:corpseId(11362)
monster:outfit({lookType = 351})
monster:defense(35)
monster:armor(35)
monster:runHealth(366)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(70)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 10},
    {type = COMBAT_ICEDAMAGE, percent = 50},
    {type = COMBAT_PHYSICALDAMAGE, percent = -10},
    {type = COMBAT_HOLYDAMAGE, percent = -15},
    {type = COMBAT_ENERGYDAMAGE, percent = -10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
})

-- Voices
monster:voices({
    {text = "EMBRACE MY GIFTS!", yell = true},
    {text = "I WILL FEAST ON YOUR SOUL!", yell = true},
})

-- Loot
monster:loot({
    {id = 2148, chance = 33725, maxCount = 100},
    {id = 2148, chance = 33725, maxCount = 100},
    {id = 2148, chance = 33725, maxCount = 66},
    {id = 2152, chance = 29840, maxCount = 2},
    {id = 11366, chance = 6650},
    {id = 8473, chance = 24700},
    {id = 11368, chance = 810},
    {id = 5944, chance = 12170},
    {id = 11323, chance = 15020},
    {id = 8472, chance = 29460, maxCount = 2},
    {id = 7590, chance = 30560, maxCount = 2},
    {id = 11301, chance = 870},
    {id = 11367, chance = 19830},
    {id = 6500, chance = 8920},
    {id = 9810, chance = 180},
    {id = 11304, chance = 1400},
    {id = 11309, chance = 15100},
    {id = 11305, chance = 1470},
    {id = 11355, chance = 690},
    {id = 11227, chance = 860},
    {id = 11240, chance = 200},
    {id = 11307, chance = 100},
    {id = 11303, chance = 870},
    {id = 11302, chance = 150},
    {id = 7885, chance = 3130},
    {id = 7886, chance = 9510},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=124, attack=90
-- name=ghastly dragon curse, interval=2000, chance=5, range=5
-- name=poisoncondition, interval=2000, chance=10, range=5, min=-920, max=-1280, target=1, areaEffect=smallclouds
-- name=lifedrain, interval=2000, chance=15, range=7, min=-80, max=-230, target=1, areaEffect=redshimmer
-- name=death, interval=2000, chance=10, min=-120, max=-250, length=8, spread=3, areaEffect=bluebubble
-- name=death, interval=2000, chance=15, min=-110, max=-180, radius=4, areaEffect=mortarea
-- name=speed, interval=2000, chance=20, range=7, target=1, duration=30000, speedchange=-800, areaEffect=smallclouds
--]]

monster:register()
