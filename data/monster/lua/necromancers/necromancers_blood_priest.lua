-- Blood Priest
-- Converted from XML

local monster = Game.createMonsterType("Blood Priest")
if not monster then return end

monster:name("Blood Priest")
monster:nameDescription("a blood priest")
monster:health(820)
monster:maxHealth(820)
monster:experience(900)
monster:speed(210)
monster:race(RACE_BLOOD)
monster:corpseId(21262)
monster:outfit({lookType = 553})
monster:defense(30)
monster:armor(30)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 5},
    {type = COMBAT_ICEDAMAGE, percent = 5},
    {type = COMBAT_DEATHDAMAGE, percent = 5},
    {type = COMBAT_PHYSICALDAMAGE, percent = -5},
    {type = COMBAT_FIREDAMAGE, percent = -10},
    {type = COMBAT_HOLYDAMAGE, percent = -5}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_DROWN, immunity = true}
})

-- Voices
monster:voices({
    {text = "Blood for the dark god!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 100},
    {id = 2148, chance = 50000, maxCount = 71},
    {id = 21245, chance = 14460},
    {id = 21242, chance = 14410},
    {id = 21246, chance = 14660},
    {id = 11237, chance = 13550},
    {id = 21243, chance = 9270},
    {id = 21247, chance = 7770},
    {id = 7589, chance = 6000},
    {id = 2147, chance = 3510, maxCount = 2},
    {id = 8910, chance = 470},
    {id = 8902, chance = 180},
    {id = 15565, chance = 880},
    {id = 5909, chance = 3040},
    {id = 2663, chance = 2170},
    {id = 2195, chance = 120},
    {id = 5911, chance = 640},
    {id = 2436, chance = 180},
    {id = 8901, chance = 290}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -70},
    {name = "death", interval = 2000, chance = 20, minDamage = -60, maxDamage = -100, range = 7},
    {name = "lifedrain", interval = 2000, chance = 15, minDamage = -40, maxDamage = -60, radius = 4},
    {name = "manadrain", interval = 3000, chance = 10, minDamage = -80, maxDamage = -130, length = 7},
    {name = "bleedcondition", interval = 2000, chance = 5, minDamage = -160, maxDamage = -290, radius = 1}
})

monster:register()
