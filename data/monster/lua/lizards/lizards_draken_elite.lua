-- Draken Elite
-- Converted from XML

local monster = Game.createMonsterType("Draken Elite")
if not monster then return end

monster:name("Draken Elite")
monster:nameDescription("a draken elite")
monster:health(5550)
monster:maxHealth(5550)
monster:experience(4200)
monster:speed(250)
monster:race(RACE_BLOOD)
monster:corpseId(12609)
monster:outfit({lookType = 362})
monster:defense(45)
monster:armor(45)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_HOLYDAMAGE, percent = 30},
    {type = COMBAT_DEATHDAMAGE, percent = 30},
    {type = COMBAT_ENERGYDAMAGE, percent = 40}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "For ze emperor!", yell = false},
    {text = "You will die zhouzandz deazhz!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 100},
    {id = 2148, chance = 47000, maxCount = 100},
    {id = 2152, chance = 50360, maxCount = 8},
    {id = 12617, chance = 24670},
    {id = 2666, chance = 30175},
    {id = 7590, chance = 9340, maxCount = 3},
    {id = 2145, chance = 2440, maxCount = 4},
    {id = 12615, chance = 14030},
    {id = 12616, chance = 16930},
    {id = 8473, chance = 9250, maxCount = 3},
    {id = 12614, chance = 7600},
    {id = 12613, chance = 910},
    {id = 5904, chance = 2100},
    {id = 7404, chance = 980},
    {id = 11307, chance = 490},
    {id = 12646, chance = 600},
    {id = 12649, chance = 20},
    {id = 12630, chance = 10},
    {id = 11302, chance = 150},
    {id = 11304, chance = 770},
    {id = 11301, chance = 490},
    {id = 12647, chance = 80},
    {id = 12607, chance = 110}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -169},
    {name = "fire", interval = 2000, chance = 10, minDamage = -240, maxDamage = -550, length = 4, spread = 3},
    {name = "fire", interval = 2000, chance = 15, minDamage = -200, maxDamage = -300, range = 7},
    {name = "earth", interval = 2000, chance = 15, minDamage = -280, maxDamage = -410, radius = 4},
    {name = "soulfire", interval = 2000, chance = 10},
    {name = "poisoncondition", interval = 2000, chance = 10, minDamage = -250, maxDamage = -320, range = 7}
})

monster:register()
