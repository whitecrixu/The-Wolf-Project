-- Minotaur Amazon
-- Converted from XML

local monster = Game.createMonsterType("Minotaur Amazon")
if not monster then return end

monster:name("Minotaur Amazon")
monster:nameDescription("a minotaur amazon")
monster:health(2600)
monster:maxHealth(2600)
monster:experience(2200)
monster:speed(250)
monster:race(RACE_BLOOD)
monster:corpseId(23371)
monster:outfit({lookType = 608})
monster:defense(35)
monster:armor(35)
monster:runHealth(260)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = -10},
    {type = COMBAT_FIREDAMAGE, percent = -5},
    {type = COMBAT_ICEDAMAGE, percent = 5},
    {type = COMBAT_DEATHDAMAGE, percent = 10},
    {type = COMBAT_HOLYDAMAGE, percent = 10}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "I'll protect the herd!", yell = false},
    {text = "Never surrender!", yell = false},
    {text = "You won't hurt us!", yell = false},
    {text = "I will not allow your evil to continue!", yell = false}
})

-- Loot
monster:loot({
    {id = 7368, chance = 3040, maxCount = 5},
    {id = 23575, chance = 19830},
    {id = 2148, chance = 100000, maxCount = 196},
    {id = 2671, chance = 60780},
    {id = 2666, chance = 4920},
    {id = 2152, chance = 62080, maxCount = 3},
    {id = 9971, chance = 290},
    {id = 5878, chance = 17950},
    {id = 7591, chance = 7670},
    {id = 7590, chance = 7380},
    {id = 12428, chance = 6800, maxCount = 2},
    {id = 2214, chance = 3040},
    {id = 2147, chance = 5500, maxCount = 2},
    {id = 9970, chance = 5500, maxCount = 2},
    {id = 2150, chance = 5070, maxCount = 2},
    {id = 2149, chance = 4050, maxCount = 2},
    {id = 23546, chance = 3040},
    {id = 23545, chance = 1740},
    {id = 5911, chance = 1010},
    {id = 2156, chance = 430},
    {id = 2197, chance = 1450},
    {id = 2154, chance = 870},
    {id = 2475, chance = 1160},
    {id = 7443, chance = 720}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -100},
    {name = "manadrain", interval = 2000, chance = 10, minDamage = -50, maxDamage = -305, length = 8},
    {name = "lifedrain", interval = 2000, chance = 16, minDamage = -50, maxDamage = -150, radius = 4},
    {name = "physical", interval = 2000, chance = 22, maxDamage = -150, range = 7},
    {name = "bleedcondition", interval = 2000, chance = 40, minDamage = -300, maxDamage = -400, radius = 4},
    {name = "minotaur amazon paralyze", interval = 2000, chance = 15}
})

monster:register()
