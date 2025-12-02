-- Tormentor
-- Converted from XML

local monster = Game.createMonsterType("Tormentor")
if not monster then return end

monster:name("Tormentor")
monster:nameDescription("Tormentor")
monster:health(4100)
monster:maxHealth(4100)
monster:experience(3200)
monster:speed(240)
monster:race(RACE_BLOOD)
monster:corpseId(6340)
monster:outfit({lookType = 245})
monster:defense(25)
monster:armor(25)
monster:runHealth(410)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 20},
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
    {type = COMBAT_ICEDAMAGE, percent = 10}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
    {type = COMBAT_DEATHDAMAGE, combat = true},
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {type = COMBAT_LIFEDRAIN, combat = true}
})

-- Voices
monster:voices({
    {text = "Take a ride with me.", yell = false},
    {text = "Pffffrrrrrrrrrrrr.", yell = false},
    {text = "Close your eyes... I have something for you.", yell = false},
    {text = "I will make you scream.", yell = false},
    {text = "I will haunt you forever!", yell = false}
})

-- Loot
monster:loot({
    {id = 6558, chance = 100000},
    {id = 6300, chance = 100000},
    {id = 6500, chance = 100000},
    {id = 11223, chance = 100000},
    {id = 2671, chance = 100000, maxCount = 2},
    {id = 2152, chance = 90000, maxCount = 10},
    {id = 11229, chance = 81000},
    {id = 2477, chance = 70000},
    {id = 5669, chance = 40000},
    {id = 6526, chance = 28000},
    {id = 2454, chance = 14000},
    {id = 7418, chance = 10000},
    {id = 2195, chance = 8000}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -340},
    {name = "death", interval = 2000, chance = 10, minDamage = -130, maxDamage = -170, range = 7, radius = 1},
    {name = "earth", interval = 2000, chance = 20, minDamage = -250, maxDamage = -400, range = 7, radius = 4}
})

monster:register()
