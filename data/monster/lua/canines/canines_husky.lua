-- Husky
-- Converted from XML

local monster = Game.createMonsterType("Husky")
if not monster then return end

monster:name("Husky")
monster:nameDescription("a husky")
monster:health(140)
monster:maxHealth(140)
monster:experience(0)
monster:speed(250)
monster:race(RACE_BLOOD)
monster:manaCost(420)
monster:outfit({lookType = 258})
monster:defense(5)
monster:armor(5)

-- Flags
monster:attackable(true)
monster:hostile(false)
monster:isSummonable(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:pushable(true)
monster:staticAttackChance(90)

-- Voices
monster:voices({
    {text = "Yoooohuuuu!", yell = false},
    {text = "Grrrrrrr", yell = false},
    {text = "Ruff, ruff!", yell = false}
})

-- Attacks (default melee)
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -28}
})

monster:register()
