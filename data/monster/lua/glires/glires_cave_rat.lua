-- Cave Rat
-- Converted from XML

local monster = Game.createMonsterType("Cave Rat")
if not monster then return end

monster:name("Cave Rat")
monster:nameDescription("a cave rat")
monster:health(30)
monster:maxHealth(30)
monster:experience(10)
monster:speed(150)
monster:race(RACE_BLOOD)
monster:manaCost(250)
monster:corpseId(5964)
monster:outfit({lookType = 56})
monster:defense(5)
monster:armor(5)
monster:runHealth(3)

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
    {type = COMBAT_FIREDAMAGE, percent = -10}
})

-- Voices
monster:voices({
    {text = "Meeeeep!", yell = false},
    {text = "Meep!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 85000, maxCount = 2},
    {id = 3976, chance = 9700, maxCount = 2},
    {id = 2696, chance = 30000},
    {id = 2687, chance = 750}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -20}
})

monster:register()
