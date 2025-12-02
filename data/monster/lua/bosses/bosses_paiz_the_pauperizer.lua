-- Paiz The Pauperizer
-- Converted from XML

local monster = Game.createMonsterType("Paiz The Pauperizer")
if not monster then return end

monster:name("Paiz The Pauperizer")
monster:nameDescription("Paiz The Pauperizer")
monster:health(8500)
monster:maxHealth(8500)
monster:experience(6300)
monster:speed(280)
monster:race(RACE_BLOOD)
monster:corpseId(12609)
monster:outfit({lookType = 362})
monster:defense(35)
monster:armor(35)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_HOLYDAMAGE, percent = 30},
    {type = COMBAT_PHYSICALDAMAGE, percent = 10},
    {type = COMBAT_DEATHDAMAGE, percent = 30},
    {type = COMBAT_ENERGYDAMAGE, percent = 40}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {type = COMBAT_EARTHDAMAGE, combat = true}
})

-- Voices
monster:voices({
    {text = "Hizzzzzz!", yell = false},
    {text = "For ze emperor!", yell = false},
    {text = "You will die zhouzandz deazhz!", yell = false}
})

-- Loot
monster:loot({
    {id = 12616, chance = 100000},
    {id = 12617, chance = 100000},
    {id = 12614, chance = 100000},
    {id = 12615, chance = 100000},
    {id = 2148, chance = 100000, maxCount = 99},
    {id = 5881, chance = 100000},
    {id = 2666, chance = 100000, maxCount = 5},
    {id = 2152, chance = 100000, maxCount = 10},
    {id = 5904, chance = 43000},
    {id = 7591, chance = 36960, maxCount = 3},
    {id = 2154, chance = 36960},
    {id = 8472, chance = 32610, maxCount = 3},
    {id = 7590, chance = 30430, maxCount = 3},
    {id = 2156, chance = 23910},
    {id = 11306, chance = 23910},
    {id = 2155, chance = 21740},
    {id = 11307, chance = 19570},
    {id = 11301, chance = 15220},
    {id = 2492, chance = 13040},
    {id = 8880, chance = 10870},
    {id = 12613, chance = 10870},
    {id = 2158, chance = 8700},
    {id = 12607, chance = 8700},
    {id = 2149, chance = 8700, maxCount = 8},
    {id = 13294, chance = 4350}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -450},
    {name = "fire", interval = 2000, chance = 10, minDamage = -240, maxDamage = -550, length = 5, spread = 3},
    {name = "fire", interval = 2000, chance = 12, minDamage = -200, maxDamage = -350, range = 7},
    {name = "earth", interval = 2000, chance = 12, minDamage = -280, maxDamage = -450, range = 4, radius = 4},
    {name = "soulfire", interval = 2000, chance = 10},
    {name = "poisoncondition", interval = 2000, chance = 11, minDamage = -20, maxDamage = -20, range = 7}
})

monster:register()
