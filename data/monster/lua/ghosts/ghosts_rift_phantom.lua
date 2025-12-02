-- Rift Phantom
-- Converted from XML

local monster = Game.createMonsterType("Rift Phantom")
if not monster then return end

monster:name("Rift Phantom")
monster:nameDescription("a rift phantom")
monster:health(150)
monster:maxHealth(150)
monster:experience(0)
monster:speed(160)
monster:race(RACE_UNDEAD)
monster:manaCost(100)
monster:corpseId(5993)
monster:outfit({lookType = 48})
monster:defense(0)
monster:armor(0)

-- Flags
monster:attackable(false)
monster:hostile(false)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Attacks (default melee)
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -30}
})

monster:register()
