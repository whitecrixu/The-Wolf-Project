-- Cockroach
-- Auto-converted from XML

local monster = Game.createMonsterType("Cockroach")
if not monster then return end

monster:name("Cockroach")
monster:nameDescription("a cockroach")
monster:health(1)
monster:maxHealth(1)
monster:experience(0)
monster:speed(180)
monster:race(RACE_VENOM)
monster:corpseId(8593)
monster:outfit({lookType = 284})
monster:defense(0)
monster:armor(0)
monster:targetDistance(5)
monster:runHealth(1)

-- Flags
monster:attackable(true)
monster:hostile(false)
monster:pushable(true)
monster:staticAttackChance(50)

-- Loot
monster:loot({
    {id = 8710, chance = 100000},
})

monster:register()
