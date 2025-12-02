-- The Bloodtusk
-- Auto-converted from XML

local monster = Game.createMonsterType("The Bloodtusk")
if not monster then return end

monster:name("The Bloodtusk")
monster:nameDescription("the bloodtuskh")
monster:health(600)
monster:maxHealth(600)
monster:experience(300)
monster:speed(190)
monster:race(RACE_BLOOD)
monster:corpseId(6074)
monster:outfit({lookType = 199})
monster:defense(57)
monster:armor(40)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = 20},
    {type = COMBAT_ICEDAMAGE, percent = 20},
    {type = COMBAT_PHYSICALDAMAGE, percent = 15},
    {type = COMBAT_FIREDAMAGE, percent = -10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Loot
monster:loot({
    {id = 2152, chance = 83825, maxCount = 3},
    {id = 2148, chance = 66900, maxCount = 65},
    {id = 3973, chance = 83825},
    {id = 8614, chance = 58825, maxCount = 2},
    {id = 7463, chance = 42175},
    {id = 7432, chance = 50500},
    {id = 11238, chance = 38000, maxCount = 2},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=50, attack=40
--]]

monster:register()
