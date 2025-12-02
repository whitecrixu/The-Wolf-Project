-- Undead Minion
-- Auto-converted from XML

local monster = Game.createMonsterType("Undead Minion")
if not monster then return end

monster:name("Undead Minion")
monster:nameDescription("an undead minion")
monster:health(850)
monster:maxHealth(850)
monster:experience(550)
monster:speed(230)
monster:race(RACE_UNDEAD)
monster:manaCost(620)
monster:corpseId(5963)
monster:outfit({lookType = 37})
monster:defense(25)
monster:armor(25)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_LIFEDRAIN, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 40},
    {id = 2260, chance = 10000},
    {id = 2417, chance = 5000},
    {id = 2513, chance = 1000},
    {id = 6570, chance = 5538},
    {id = 6571, chance = 1538},
    {id = 2515, chance = 5000},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=1000, chance=100, skill=80, attack=55
-- name=lifedrain, interval=1000, chance=13, min=-100, max=-160, radius=4, areaEffect=mortarea
--]]

monster:register()
