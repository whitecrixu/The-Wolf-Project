-- Strange Slime
-- Converted from XML

local monster = Game.createMonsterType("Strange Slime")
if not monster then return end

monster:name("Strange Slime")
monster:nameDescription("a strange slime")
monster:health(15)
monster:maxHealth(15)
monster:experience(0)
monster:speed(120)
monster:race(RACE_VENOM)
monster:corpseId(1496)
monster:outfit({lookType = 19})
monster:defense(10)
monster:armor(3)

-- Flags
monster:attackable(true)
monster:hostile(false)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Attacks (default melee)
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -5}
})

monster:register()
