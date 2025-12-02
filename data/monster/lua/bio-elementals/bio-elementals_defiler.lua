-- Defiler
-- Converted from XML

local monster = Game.createMonsterType("Defiler")
if not monster then return end

monster:name("Defiler")
monster:nameDescription("a defiler")
monster:health(3650)
monster:maxHealth(3650)
monster:experience(3700)
monster:speed(230)
monster:race(RACE_VENOM)
monster:corpseId(6532)
monster:outfit({lookType = 238})
monster:defense(20)
monster:armor(20)
monster:runHealth(365)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 10},
    {type = COMBAT_ICEDAMAGE, percent = 20},
    {type = COMBAT_FIREDAMAGE, percent = -25}
})

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Blubb", yell = false},
    {text = "Blubb Blubb", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 100},
    {id = 2148, chance = 100000, maxCount = 100},
    {id = 2148, chance = 100000, maxCount = 72},
    {id = 2152, chance = 95000, maxCount = 6},
    {id = 5944, chance = 20000},
    {id = 6500, chance = 20320},
    {id = 9967, chance = 14210},
    {id = 9968, chance = 12000},
    {id = 2151, chance = 5710},
    {id = 2158, chance = 300},
    {id = 2149, chance = 5366, maxCount = 3},
    {id = 2147, chance = 3000, maxCount = 2},
    {id = 6300, chance = 3030},
    {id = 2145, chance = 2439, maxCount = 2},
    {id = 2156, chance = 1538},
    {id = 2154, chance = 1219},
    {id = 2155, chance = 613}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -130},
    {name = "poison", interval = 2000, chance = 20, minDamage = -160, maxDamage = -270, range = 7},
    {name = "poisoncondition", interval = 2000, chance = 15, minDamage = -400, maxDamage = -640, range = 7, radius = 7},
    {name = "poison", interval = 2000, chance = 20, minDamage = -120, maxDamage = -170, radius = 3},
    {name = "poisoncondition", interval = 2000, chance = 10, minDamage = -500, maxDamage = -1000, length = 8, spread = 3},
    {name = "speed", interval = 2000, chance = 15, length = 8, spread = 3}
})

monster:register()
