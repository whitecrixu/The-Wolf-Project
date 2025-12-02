-- Minotaur Bruiser
-- Auto-converted from XML

local monster = Game.createMonsterType("Minotaur Bruiser")
if not monster then return end

monster:name("Minotaur Bruiser")
monster:nameDescription("a minotaur bruiser")
monster:health(100)
monster:maxHealth(100)
monster:experience(50)
monster:speed(170)
monster:race(RACE_BLOOD)
monster:corpseId(5969)
monster:outfit({lookType = 25})
monster:defense(15)
monster:armor(10)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(true)
monster:staticAttackChance(90)

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Loot
monster:loot({
    {id = 2148, chance = 65700, maxCount = 15},
    {id = 2510, chance = 20000},
    {id = 2398, chance = 12900},
    {id = 2464, chance = 10000},
    {id = 2460, chance = 7800},
    {id = 2376, chance = 5000},
    {id = 2666, chance = 5000},
    {id = 2386, chance = 4000},
    {id = 12428, chance = 2000, maxCount = 2},
    {id = 5878, chance = 980},
    {id = 2554, chance = 310},
    {id = 2172, chance = 120},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-45
--]]

monster:register()
