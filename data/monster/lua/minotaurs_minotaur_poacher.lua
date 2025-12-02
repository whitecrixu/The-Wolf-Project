-- Minotaur Poacher
-- Auto-converted from XML

local monster = Game.createMonsterType("Minotaur Poacher")
if not monster then return end

monster:name("Minotaur Poacher")
monster:nameDescription("a minotaur poacher")
monster:health(160)
monster:maxHealth(160)
monster:experience(55)
monster:speed(170)
monster:race(RACE_BLOOD)
monster:corpseId(5982)
monster:outfit({lookType = 24})
monster:defense(5)
monster:armor(5)

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
    {id = 2148, chance = 100000, maxCount = 28},
    {id = 2543, chance = 55000, maxCount = 18},
    {id = 12407, chance = 19400},
    {id = 2464, chance = 10000},
    {id = 2484, chance = 6000},
    {id = 2666, chance = 5000},
    {id = 5878, chance = 1400},
    {id = 2455, chance = 710},
    {id = 12428, chance = 710},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-15
-- name=physical, interval=2000, chance=40, range=7, max=-20, shootEffect=bolt
--]]

monster:register()
