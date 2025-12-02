-- The Snapper
-- Auto-converted from XML

local monster = Game.createMonsterType("The Snapper")
if not monster then return end

monster:name("The Snapper")
monster:nameDescription("the snapper")
monster:health(300)
monster:maxHealth(300)
monster:experience(150)
monster:speed(240)
monster:race(RACE_BLOOD)
monster:corpseId(6046)
monster:outfit({lookType = 119})
monster:defense(5)
monster:armor(13)
monster:runHealth(30)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = 15},
    {type = COMBAT_ICEDAMAGE, percent = 10},
    {type = COMBAT_ENERGYDAMAGE, percent = -5},
    {type = COMBAT_FIREDAMAGE, percent = -10},
    {type = COMBAT_PHYSICALDAMAGE, percent = -5},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Loot
monster:loot({
    {id = 7618, chance = 51100, maxCount = 5},
    {id = 2647, chance = 44025},
    {id = 2148, chance = 50675, maxCount = 100},
    {id = 2148, chance = 50675, maxCount = 94},
    {id = 2463, chance = 35800},
    {id = 2205, chance = 100000},
    {id = 3982, chance = 9900},
    {id = 2476, chance = 4025},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=20, attack=40
--]]

monster:register()
