-- Thieving Squirrel
-- Converted from XML

local monster = Game.createMonsterType("Thieving Squirrel")
if not monster then return end

monster:name("Thieving Squirrel")
monster:nameDescription("a thieving squirrel")
monster:health(55)
monster:maxHealth(55)
monster:experience(0)
monster:speed(1000)
monster:race(RACE_BLOOD)
monster:manaCost(220)
monster:corpseId(7628)
monster:outfit({lookType = 274})
monster:defense(5)
monster:armor(5)
monster:runHealth(5)

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
    {id = 11100, chance = 100000},
    {id = 7910, chance = 980}
})

-- Attacks (default melee)
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -11}
})

monster:register()
