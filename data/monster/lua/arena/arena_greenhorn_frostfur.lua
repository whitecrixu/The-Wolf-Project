-- Frostfur
-- Auto-converted from XML

local monster = Game.createMonsterType("Frostfur")
if not monster then return end

monster:name("Frostfur")
monster:nameDescription("frostfur")
monster:health(65)
monster:maxHealth(65)
monster:experience(35)
monster:speed(170)
monster:race(RACE_BLOOD)
monster:corpseId(7349)
monster:outfit({lookType = 52})
monster:defense(3)
monster:armor(2)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 20},
    {type = COMBAT_ENERGYDAMAGE, percent = -10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=10, attack=30
--]]

monster:register()
