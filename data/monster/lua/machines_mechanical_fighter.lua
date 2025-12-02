-- Mechanical Fighter
-- Auto-converted from XML

local monster = Game.createMonsterType("Mechanical Fighter")
if not monster then return end

monster:name("Mechanical Fighter")
monster:nameDescription("a mechanical fighter")
monster:health(420)
monster:maxHealth(420)
monster:experience(255)
monster:speed(200)
monster:race(RACE_UNDEAD)
monster:corpseId(2253)
monster:outfit({lookType = 102})
monster:defense(199)
monster:armor(199)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 50},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_DAZZLED, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=190, attack=50
--]]

monster:register()
