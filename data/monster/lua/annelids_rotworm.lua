-- Rotworm
-- Auto-converted from XML

local monster = Game.createMonsterType("Rotworm")
if not monster then return end

monster:name("Rotworm")
monster:nameDescription("a rotworm")
monster:health(65)
monster:maxHealth(65)
monster:experience(40)
monster:speed(150)
monster:race(RACE_BLOOD)
monster:manaCost(305)
monster:corpseId(5967)
monster:outfit({lookType = 26})
monster:defense(10)
monster:armor(10)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isConvinceable(true)
monster:pushable(false)
monster:staticAttackChance(70)

-- Loot
monster:loot({
    {id = 2148, chance = 71760, maxCount = 17},
    {id = 3976, chance = 3000, maxCount = 3},
    {id = 2666, chance = 20000},
    {id = 2671, chance = 20120},
    {id = 2376, chance = 3000},
    {id = 2398, chance = 4500},
    {id = 10609, chance = 10000},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-40
--]]

monster:register()
