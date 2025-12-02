-- Wild Water Magic
-- Converted from XML

local monster = Game.createMonsterType("Wild Water Magic")
if not monster then return end

monster:name("Wild Water Magic")
monster:nameDescription("a wild water magic")
monster:health(1)
monster:maxHealth(1)
monster:experience(0)
monster:speed(210)
monster:race(RACE_UNDEAD)
monster:defense(0)
monster:armor(0)
monster:runHealth(0)

-- Flags
monster:attackable(false)
monster:hostile(false)
monster:pushable(true)
monster:staticAttackChance(90)

-- Attacks (default melee)
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -5}
})

monster:register()
