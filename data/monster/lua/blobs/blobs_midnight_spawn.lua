-- Midnight Spawn
-- Auto-converted from XML

local monster = Game.createMonsterType("Midnight Spawn")
if not monster then return end

monster:name("Midnight Spawn")
monster:nameDescription("a midnight spawn")
monster:health(957)
monster:maxHealth(957)
monster:experience(900)
monster:speed(230)
monster:race(RACE_UNDEAD)
monster:corpseId(9960)
monster:outfit({lookType = 315})
monster:defense(10)
monster:armor(10)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(85)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 30},
    {type = COMBAT_DEATHDAMAGE, percent = 99},
    {type = COMBAT_FIREDAMAGE, percent = 30},
    {type = COMBAT_EARTHDAMAGE, percent = 99},
    {type = COMBAT_LIFEDRAIN, percent = 99},
    {type = COMBAT_HOLYDAMAGE, percent = 10},
    {type = COMBAT_ICEDAMAGE, percent = 10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Loot
monster:loot({
    {id = 10531, chance = 8333},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=30, attack=50
--]]

monster:register()
