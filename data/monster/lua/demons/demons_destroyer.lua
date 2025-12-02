-- Destroyer
-- Auto-converted from XML

local monster = Game.createMonsterType("Destroyer")
if not monster then return end

monster:name("Destroyer")
monster:nameDescription("a destroyer")
monster:health(3700)
monster:maxHealth(3700)
monster:experience(2500)
monster:speed(270)
monster:race(RACE_UNDEAD)
monster:corpseId(6320)
monster:outfit({lookType = 236})
monster:defense(30)
monster:armor(30)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(70)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 25},
    {type = COMBAT_DEATHDAMAGE, percent = 20},
    {type = COMBAT_FIREDAMAGE, percent = 30},
    {type = COMBAT_EARTHDAMAGE, percent = 20},
    {type = COMBAT_HOLYDAMAGE, percent = -3},
    {type = COMBAT_ICEDAMAGE, percent = -15},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_ENERGY, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "COME HERE AND DIE!", yell = false},
    {text = "Destructiooooon!", yell = false},
    {text = "It's a good day to destroy!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 60000, maxCount = 100},
    {id = 2148, chance = 40000, maxCount = 100},
    {id = 2148, chance = 40000, maxCount = 100},
    {id = 2148, chance = 60000, maxCount = 41},
    {id = 2666, chance = 50000, maxCount = 6},
    {id = 6500, chance = 20000},
    {id = 2416, chance = 14285},
    {id = 2546, chance = 12500, maxCount = 12},
    {id = 2489, chance = 10000},
    {id = 2150, chance = 7692, maxCount = 2},
    {id = 11215, chance = 7142},
    {id = 5944, chance = 6666},
    {id = 2553, chance = 6250},
    {id = 2463, chance = 4347},
    {id = 2152, chance = 4166, maxCount = 3},
    {id = 2393, chance = 1694},
    {id = 7591, chance = 1136},
    {id = 2645, chance = 992},
    {id = 7427, chance = 869},
    {id = 7419, chance = 833},
    {id = 2125, chance = 578},
    {id = 2178, chance = 564},
    {id = 6300, chance = 144},
    {id = 5741, chance = 108},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=90, attack=100
-- name=physical, interval=2000, chance=15, range=7, max=-200, shootEffect=largerock
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=speed, interval=2000, chance=15, duration=5000, speedchange=420, areaEffect=redshimmer
--]]

monster:register()
