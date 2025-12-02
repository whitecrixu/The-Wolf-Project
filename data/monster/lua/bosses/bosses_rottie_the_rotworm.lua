-- Rottie the Rotworm
-- Auto-converted from XML

local monster = Game.createMonsterType("Rottie the Rotworm")
if not monster then return end

monster:name("Rottie the Rotworm")
monster:nameDescription("a rottie the rotworm")
monster:health(65)
monster:maxHealth(65)
monster:experience(40)
monster:speed(180)
monster:race(RACE_BLOOD)
monster:corpseId(5967)
monster:outfit({lookType = 26, lookHead = 20, lookBody = 30, lookLegs = 40, lookFeet = 50})
monster:defense(11)
monster:armor(8)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:staticAttackChance(90)

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 30},
    {id = 2530, chance = 2850},
    {id = 2666, chance = 3260, maxCount = 2},
    {id = 3976, chance = 100000, maxCount = 5},
    {id = 2398, chance = 3335},
    {id = 2671, chance = 100000, maxCount = 2},
    {id = 2376, chance = 3335},
    {id = 2412, chance = 900},
    {id = 2480, chance = 1250},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=30, attack=30
--]]

monster:register()
