-- Orc Rider
-- Converted from XML

local monster = Game.createMonsterType("Orc Rider")
if not monster then return end

monster:name("Orc Rider")
monster:nameDescription("a orc rider")
monster:health(180)
monster:maxHealth(180)
monster:experience(110)
monster:speed(210)
monster:race(RACE_BLOOD)
monster:corpseId(6010)
monster:outfit({lookType = 4})
monster:defense(15)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isConvinceable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
    {type = COMBAT_HOLYDAMAGE, percent = 10},
    {type = COMBAT_EARTHDAMAGE, percent = -10},
    {type = COMBAT_DEATHDAMAGE, percent = -5}
})

-- Voices
monster:voices({
    {text = "Grrrrrrr", yell = false},
    {text = "Orc arga Huummmak!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 46000, maxCount = 81},
    {id = 2666, chance = 24000, maxCount = 3},
    {id = 2428, chance = 6880},
    {id = 2129, chance = 10210},
    {id = 2050, chance = 980},
    {id = 2513, chance = 9900},
    {id = 2483, chance = 610},
    {id = 2425, chance = 1100},
    {id = 12435, chance = 9760},
    {id = 11113, chance = 2000},
    {id = 11235, chance = 9410}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -95}
})

monster:register()
