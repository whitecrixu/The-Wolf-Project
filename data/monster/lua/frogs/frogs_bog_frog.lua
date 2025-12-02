-- Bog Frog
-- Auto-converted from XML

local monster = Game.createMonsterType("Bog Frog")
if not monster then return end

monster:name("Bog Frog")
monster:nameDescription("a bog frog")
monster:health(25)
monster:maxHealth(25)
monster:experience(0)
monster:speed(200)
monster:race(RACE_BLOOD)
monster:manaCost(305)
monster:corpseId(6079)
monster:outfit({lookType = 412})
monster:defense(0)
monster:armor(0)
monster:runHealth(25)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:staticAttackChance(90)

monster:register()
