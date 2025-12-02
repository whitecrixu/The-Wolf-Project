-- Squirrel
-- Converted from XML

local monster = Game.createMonsterType("Squirrel")
if not monster then return end

monster:name("Squirrel")
monster:nameDescription("a squirrel")
monster:health(20)
monster:maxHealth(20)
monster:experience(0)
monster:speed(300)
monster:race(RACE_BLOOD)
monster:manaCost(220)
monster:corpseId(7628)
monster:outfit({lookType = 274})
monster:defense(5)
monster:armor(5)
monster:runHealth(2)

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
    {text = "Chchch", yell = false}
})

-- Loot
monster:loot({
    {id = 7909, chance = 1140},
    {id = 11213, chance = 50410},
    {id = 7910, chance = 980}
})

-- Attacks (default melee)
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -5}
})

monster:register()
