-- Wounded Cave Draptor
-- Auto-converted from XML

local monster = Game.createMonsterType("Wounded Cave Draptor")
if not monster then return end

monster:name("Wounded Cave Draptor")
monster:nameDescription("a wounded cave draptor")
monster:health(10)
monster:maxHealth(10)
monster:experience(150)
monster:speed(150)
monster:race(RACE_BLOOD)
monster:corpseId(22686)
monster:outfit({lookType = 596})
monster:defense(5)
monster:armor(5)
monster:runHealth(9)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:staticAttackChance(90)

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 3},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-3
--]]

monster:register()
