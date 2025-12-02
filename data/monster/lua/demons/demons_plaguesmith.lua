-- Plaguesmith
-- Converted from XML

local monster = Game.createMonsterType("Plaguesmith")
if not monster then return end

monster:name("Plaguesmith")
monster:nameDescription("a plaguesmith")
monster:health(8250)
monster:maxHealth(8250)
monster:experience(4500)
monster:speed(240)
monster:race(RACE_VENOM)
monster:corpseId(6516)
monster:outfit({lookType = 247})
monster:defense(40)
monster:armor(40)
monster:runHealth(825)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 30},
    {type = COMBAT_ICEDAMAGE, percent = 20},
    {type = COMBAT_DEATHDAMAGE, percent = 1},
    {type = COMBAT_ENERGYDAMAGE, percent = -10},
    {type = COMBAT_HOLYDAMAGE, percent = -10}
})

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "You are looking a bit feverish!", yell = false},
    {text = "You don't look that good!", yell = false},
    {text = "Hachoo!", yell = false},
    {text = "Cough Cough", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 100},
    {id = 2148, chance = 40000, maxCount = 100},
    {id = 2148, chance = 50000, maxCount = 65},
    {id = 2237, chance = 60000},
    {id = 2235, chance = 50000},
    {id = 2394, chance = 29000},
    {id = 2377, chance = 20000},
    {id = 2509, chance = 20000},
    {id = 2225, chance = 20000},
    {id = 2417, chance = 20000},
    {id = 5944, chance = 11111},
    {id = 7591, chance = 10000},
    {id = 6500, chance = 9033},
    {id = 7365, chance = 7692, maxCount = 4},
    {id = 9810, chance = 540},
    {id = 2152, chance = 7142, maxCount = 2},
    {id = 2477, chance = 6250},
    {id = 2150, chance = 5000, maxCount = 3},
    {id = 2209, chance = 4761},
    {id = 2208, chance = 4347},
    {id = 2391, chance = 2127},
    {id = 2134, chance = 2000},
    {id = 5887, chance = 1234},
    {id = 2645, chance = 1123},
    {id = 5889, chance = 1030},
    {id = 5888, chance = 1010},
    {id = 2444, chance = 952},
    {id = 2127, chance = 341},
    {id = 3957, chance = 100}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 1500, chance = 100, minDamage = 0, maxDamage = -198},
    {name = "poison", interval = 2000, chance = 15, minDamage = -60, maxDamage = -114, radius = 4},
    {name = "poison", interval = 2000, chance = 10, minDamage = -100, maxDamage = -350, length = 5, spread = 3},
    {name = "speed", interval = 2000, chance = 15, radius = 4}
})

monster:register()
