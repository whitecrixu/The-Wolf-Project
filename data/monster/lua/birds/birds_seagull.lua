-- Seagull
-- Converted from XML

local monster = Game.createMonsterType("Seagull")
if not monster then return end

monster:name("Seagull")
monster:nameDescription("a seagull")
monster:health(25)
monster:maxHealth(25)
monster:experience(0)
monster:speed(260)
monster:race(RACE_BLOOD)
monster:manaCost(250)
monster:corpseId(6076)
monster:outfit({lookType = 223})
monster:defense(5)
monster:armor(5)
monster:runHealth(2)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isSummonable(true)
monster:pushable(true)
monster:staticAttackChance(90)

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -13}
})

monster:register()
