-- Stonecracker
-- Converted from XML

local monster = Game.createMonsterType("Stonecracker")
if not monster then return end

monster:name("Stonecracker")
monster:nameDescription("stonecracker")
monster:health(6500)
monster:maxHealth(6500)
monster:experience(3500)
monster:speed(280)
monster:race(RACE_BLOOD)
monster:corpseId(5999)
monster:outfit({lookType = 55})
monster:defense(45)
monster:armor(40)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = 85},
    {type = COMBAT_HOLYDAMAGE, percent = 35},
    {type = COMBAT_FIREDAMAGE, percent = 40},
    {type = COMBAT_ENERGYDAMAGE, percent = 15},
    {type = COMBAT_PHYSICALDAMAGE, percent = 15},
    {type = COMBAT_ICEDAMAGE, percent = -5}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "HUAHAHA!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 76225, maxCount = 100},
    {id = 5893, chance = 64800},
    {id = 2666, chance = 36200},
    {id = 5930, chance = 50500},
    {id = 7368, chance = 11225, maxCount = 2},
    {id = 2489, chance = 7650},
    {id = 2553, chance = 14800},
    {id = 2416, chance = 14800},
    {id = 2150, chance = 7650, maxCount = 2},
    {id = 2387, chance = 7650},
    {id = 2463, chance = 7650}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -190},
    {name = "physical", interval = 2000, chance = 20, minDamage = -200, maxDamage = -280, range = 7}
})

monster:register()
