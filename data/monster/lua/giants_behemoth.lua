-- Behemoth
-- Auto-converted from XML

local monster = Game.createMonsterType("Behemoth")
if not monster then return end

monster:name("Behemoth")
monster:nameDescription("a behemoth")
monster:health(4000)
monster:maxHealth(4000)
monster:experience(2500)
monster:speed(260)
monster:race(RACE_BLOOD)
monster:corpseId(5999)
monster:outfit({lookType = 55})
monster:defense(45)
monster:armor(45)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(70)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = 80},
    {type = COMBAT_HOLYDAMAGE, percent = 30},
    {type = COMBAT_FIREDAMAGE, percent = 30},
    {type = COMBAT_ENERGYDAMAGE, percent = 10},
    {type = COMBAT_PHYSICALDAMAGE, percent = 10},
    {type = COMBAT_ICEDAMAGE, percent = -10},
    {type = COMBAT_DEATHDAMAGE, percent = -5},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "You're so little!", yell = false},
    {text = "Human flesh - delicious!", yell = false},
    {text = "Crush the intruders!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 595300, maxCount = 100},
    {id = 2148, chance = 40000, maxCount = 99},
    {id = 2152, chance = 59800, maxCount = 5},
    {id = 2023, chance = 100},
    {id = 7368, chance = 9750, maxCount = 5},
    {id = 2231, chance = 670},
    {id = 2416, chance = 100},
    {id = 2489, chance = 4370},
    {id = 2387, chance = 10510},
    {id = 2666, chance = 30000, maxCount = 6},
    {id = 5893, chance = 1090},
    {id = 2553, chance = 650},
    {id = 2463, chance = 3930},
    {id = 2150, chance = 6380, maxCount = 5},
    {id = 2645, chance = 380},
    {id = 2377, chance = 5980},
    {id = 2393, chance = 1006},
    {id = 7591, chance = 5120},
    {id = 2174, chance = 750},
    {id = 5930, chance = 430},
    {id = 2454, chance = 50},
    {id = 7396, chance = 170},
    {id = 2125, chance = 2530},
    {id = 7413, chance = 90},
    {id = 12403, chance = 14000},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=80, attack=100
-- name=physical, interval=2000, chance=15, range=7, max=-200, shootEffect=largerock
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=speed, interval=2000, chance=15, duration=5000, speedchange=300, areaEffect=redshimmer
--]]

monster:register()
