-- Snake
-- Converted from XML

local monster = Game.createMonsterType("Snake")
if not monster then return end

monster:name("Snake")
monster:nameDescription("a snake")
monster:health(15)
monster:maxHealth(15)
monster:experience(10)
monster:speed(120)
monster:race(RACE_BLOOD)
monster:manaCost(205)
monster:corpseId(2817)
monster:outfit({lookType = 28})
monster:defense(5)
monster:armor(5)

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
    {type = COMBAT_EARTHDAMAGE, percent = 5},
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
    {type = COMBAT_FIREDAMAGE, percent = -10},
    {type = COMBAT_ICEDAMAGE, percent = -10}
})

-- Voices
monster:voices({
    {text = "Zzzzzzt", yell = false}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -18}
})

monster:register()
