-- Ethershreck
-- Auto-converted from XML

local monster = Game.createMonsterType("Ethershreck")
if not monster then return end

monster:name("Ethershreck")
monster:nameDescription("Ethershreck")
monster:health(12500)
monster:maxHealth(12500)
monster:experience(7500)
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
    {id = 11366, chance = 100000},
    {id = 2148, chance = 100000, maxCount = 230},
    {id = 2152, chance = 100000, maxCount = 15},
    {id = 11367, chance = 100000},
    {id = 6500, chance = 97000},
    {id = 7632, chance = 45000},
    {id = 7633, chance = 45000},
    {id = 9970, chance = 97000, maxCount = 10},
    {id = 11323, chance = 76000},
    {id = 8473, chance = 60000},
    {id = 11227, chance = 45000},
    {id = 11368, chance = 37000},
    {id = 7591, chance = 34000, maxCount = 3},
    {id = 11303, chance = 30000},
    {id = 7590, chance = 26000, maxCount = 3},
    {id = 8472, chance = 26000, maxCount = 3},
    {id = 11355, chance = 21000},
    {id = 11304, chance = 15000},
    {id = 11301, chance = 13000},
    {id = 11302, chance = 13000},
    {id = 11306, chance = 10000},
    {id = 11305, chance = 8700},
    {id = 13938, chance = 2170},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=124, attack=1000
-- name=ghastly dragon curse, interval=2000, chance=5, range=5
-- name=poisoncondition, interval=2000, chance=10, range=5, min=-920, max=-1280, target=1, areaEffect=bats
-- name=lifedrain, interval=2000, chance=15, range=7, min=-180, max=-330, target=1, areaEffect=redshimmer
-- name=death, interval=2000, chance=10, min=-220, max=-350, length=8, spread=3, areaEffect=bluebubble
-- name=death, interval=2000, chance=15, min=-210, max=-280, radius=4, areaEffect=smallclouds
-- name=speed, interval=2000, chance=20, range=7, target=1, duration=30000, speedchange=-300, areaEffect=smallclouds
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=4000, chance=10, min=215, max=300, areaEffect=blueshimmer
--]]

monster:register()
