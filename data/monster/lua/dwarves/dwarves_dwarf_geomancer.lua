-- Dwarf Geomancer
-- Converted from XML

local monster = Game.createMonsterType("Dwarf Geomancer")
if not monster then return end

monster:name("Dwarf Geomancer")
monster:nameDescription("a dwarf geomancer")
monster:health(380)
monster:maxHealth(380)
monster:experience(265)
monster:speed(190)
monster:race(RACE_BLOOD)
monster:corpseId(6015)
monster:outfit({lookType = 66})
monster:defense(15)
monster:armor(15)
monster:runHealth(38)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = 20},
    {type = COMBAT_FIREDAMAGE, percent = 60},
    {type = COMBAT_ENERGYDAMAGE, percent = 10},
    {type = COMBAT_HOLYDAMAGE, percent = 10},
    {type = COMBAT_ICEDAMAGE, percent = -5},
    {type = COMBAT_DEATHDAMAGE, percent = -1}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Hail Durin!", yell = false},
    {text = "Earth is the strongest element.", yell = false},
    {text = "Dust to dust.", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 35},
    {id = 2260, chance = 33000},
    {id = 2787, chance = 60000, maxCount = 2},
    {id = 2643, chance = 47500},
    {id = 2673, chance = 25000},
    {id = 2162, chance = 14000},
    {id = 2175, chance = 360},
    {id = 2423, chance = 1120},
    {id = 2213, chance = 530},
    {id = 2146, chance = 710},
    {id = 5880, chance = 120},
    {id = 7886, chance = 470},
    {id = 12419, chance = 7000},
    {id = 12414, chance = 8000}
})

-- Attacks
monster:attacks({
    {name = "earth", interval = 2000, chance = 20, minDamage = -50, maxDamage = -110, range = 7},
    {name = "manadrain", interval = 2000, chance = 10, minDamage = -50, maxDamage = -80, range = 7}
})

monster:register()
