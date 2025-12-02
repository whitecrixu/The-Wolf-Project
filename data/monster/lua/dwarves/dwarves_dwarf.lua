-- Dwarf
-- Converted from XML

local monster = Game.createMonsterType("Dwarf")
if not monster then return end

monster:name("Dwarf")
monster:nameDescription("a dwarf")
monster:health(90)
monster:maxHealth(90)
monster:experience(45)
monster:speed(180)
monster:race(RACE_BLOOD)
monster:manaCost(320)
monster:corpseId(6007)
monster:outfit({lookType = 69})
monster:defense(10)
monster:armor(10)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isSummonable(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:pushable(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = 10},
    {type = COMBAT_FIREDAMAGE, percent = -5},
    {type = COMBAT_DEATHDAMAGE, percent = -5}
})

-- Voices
monster:voices({
    {text = "Hail Durin!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 35000, maxCount = 8},
    {id = 2787, chance = 50000},
    {id = 2388, chance = 25000},
    {id = 2386, chance = 15000},
    {id = 2649, chance = 10000},
    {id = 2530, chance = 10000},
    {id = 2597, chance = 8000},
    {id = 2553, chance = 10000},
    {id = 2484, chance = 8000},
    {id = 5880, chance = 700},
    {id = 2213, chance = 100}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -40}
})

monster:register()
