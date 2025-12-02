-- Minotaur Hunter
-- Converted from XML

local monster = Game.createMonsterType("Minotaur Hunter")
if not monster then return end

monster:name("Minotaur Hunter")
monster:nameDescription("a minotaur hunter")
monster:health(1400)
monster:maxHealth(1400)
monster:experience(1700)
monster:speed(230)
monster:race(RACE_BLOOD)
monster:corpseId(23466)
monster:outfit({lookType = 612})
monster:defense(30)
monster:armor(30)
monster:runHealth(140)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 10},
    {type = COMBAT_HOLYDAMAGE, percent = 10},
    {type = COMBAT_ICEDAMAGE, percent = -5}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "You are marked for death!", yell = false},
    {text = "This time the prey is you!", yell = false},
    {text = "You are hunted!", yell = false},
    {text = "Bullseye!", yell = false},
    {text = "You'll make a fine trophy!", yell = false}
})

-- Loot
monster:loot({
    {id = 2260, chance = 13600, maxCount = 2},
    {id = 2148, chance = 99500, maxCount = 199},
    {id = 3965, chance = 14880, maxCount = 5},
    {id = 2152, chance = 33890, maxCount = 3},
    {id = 7378, chance = 11410, maxCount = 5},
    {id = 7588, chance = 10350, maxCount = 2},
    {id = 7589, chance = 10620, maxCount = 2},
    {id = 5944, chance = 7430},
    {id = 5878, chance = 5030},
    {id = 12428, chance = 4720, maxCount = 2},
    {id = 2147, chance = 2640, maxCount = 3},
    {id = 2150, chance = 2580, maxCount = 3},
    {id = 2165, chance = 2220},
    {id = 5912, chance = 1670},
    {id = 5910, chance = 1420},
    {id = 5911, chance = 1360},
    {id = 23546, chance = 640},
    {id = 2154, chance = 470},
    {id = 2156, chance = 400},
    {id = 7401, chance = 190},
    {id = 23537, chance = 170}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -100},
    {name = "physical", interval = 2000, chance = 22, maxDamage = -150, range = 7},
    {name = "bleedcondition", interval = 2000, chance = 40, minDamage = -300, maxDamage = -400, range = 7, radius = 3},
    {name = "fire", interval = 2000, chance = 15, minDamage = -160, maxDamage = -260, range = 7, radius = 2},
    {name = "lifedrain", interval = 2000, chance = 14, minDamage = -35, maxDamage = -150, radius = 4}
})

monster:register()
