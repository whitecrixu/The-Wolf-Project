-- Mimic
-- Converted from XML

local monster = Game.createMonsterType("Mimic")
if not monster then return end

monster:name("Mimic")
monster:nameDescription("a mimic")
monster:health(30)
monster:maxHealth(30)
monster:experience(0)
monster:speed(170)
monster:race(RACE_BLOOD)
monster:corpseId(1740)
monster:outfit({lookType = 92})
monster:defense(3)
monster:armor(2)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(true)
monster:staticAttackChance(0)

-- Attacks (default melee)
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -6}
})

monster:register()
