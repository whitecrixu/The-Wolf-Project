-- Essence of Darkness
-- Auto-converted from XML

local monster = Game.createMonsterType("Essence of Darkness")
if not monster then return end

monster:name("Essence of Darkness")
monster:nameDescription("a essence of darkness")
monster:health(1000)
monster:maxHealth(1000)
monster:experience(30)
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
    {type = COMBAT_FIREDAMAGE, percent = 98},
    {type = COMBAT_HOLYDAMAGE, percent = 80},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_BLEEDING, immunity = true},
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_ENERGY, immunity = true},
    {condition = CONDITION_FREEZING, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_LIFEDRAIN, immunity = true},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=30, attack=50
--]]

monster:register()
