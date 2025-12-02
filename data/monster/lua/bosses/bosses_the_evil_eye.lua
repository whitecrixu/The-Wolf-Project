-- The Evil Eye
-- Converted from XML

local monster = Game.createMonsterType("The Evil Eye")
if not monster then return end

monster:name("The Evil Eye")
monster:nameDescription("the Evil Eye")
monster:health(1200)
monster:maxHealth(1200)
monster:experience(500)
monster:speed(240)
monster:race(RACE_BLOOD)
monster:corpseId(6037)
monster:outfit({lookType = 210})
monster:defense(23)
monster:armor(19)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_HOLYDAMAGE, percent = -20}
})

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Inferior creatures, bow before my power!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 45},
    {id = 2445, chance = 1000},
    {id = 2451, chance = 800},
    {id = 3976, chance = 50000, maxCount = 10},
    {id = 5898, chance = 5000},
    {id = 2148, chance = 80000, maxCount = 90},
    {id = 2423, chance = 5000},
    {id = 2391, chance = 1333}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -89},
    {name = "energy", interval = 1000, chance = 15, minDamage = -60, maxDamage = -130, range = 7},
    {name = "fire", interval = 1000, chance = 13, minDamage = -85, maxDamage = -115, range = 7},
    {name = "physical", interval = 1000, chance = 17, minDamage = -135, maxDamage = -175, range = 7},
    {name = "poison", interval = 1000, chance = 15, minDamage = -40, maxDamage = -120, range = 7},
    {name = "lifedrain", interval = 1000, chance = 12, minDamage = -110, maxDamage = -130, range = 7},
    {name = "speed", interval = 1000, chance = 10, range = 7},
    {name = "poison", interval = 1000, chance = 8, minDamage = -35, maxDamage = -85, length = 8, spread = 3},
    {name = "lifedrain", interval = 1000, chance = 6, minDamage = -75, maxDamage = -85, length = 8, spread = 3},
    {name = "manadrain", interval = 1000, chance = 9, minDamage = -150, maxDamage = -250, length = 8, spread = 3}
})

monster:register()
