-- Young Troll
-- Auto-converted from XML

local monster = Game.createMonsterType("Young Troll")
if not monster then return end

monster:name("Young Troll")
monster:nameDescription("a young troll")
monster:health(30)
monster:maxHealth(30)
monster:experience(12)
monster:speed(380)
monster:race(RACE_BLOOD)
monster:corpseId(5960)
monster:outfit({lookType = 15})
monster:defense(2)
monster:armor(1)
monster:runHealth(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(true)
monster:staticAttackChance(90)

-- Loot
monster:loot({
    {id = 2148, chance = 58000, maxCount = 12},
    {id = 2666, chance = 14000},
    {id = 2120, chance = 10000},
    {id = 2448, chance = 3000},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-10
--]]

monster:register()
