-- Bovinus
-- Auto-converted from XML

local monster = Game.createMonsterType("Bovinus")
if not monster then return end

monster:name("Bovinus")
monster:nameDescription("bovinus")
monster:health(150)
monster:maxHealth(150)
monster:experience(60)
monster:speed(170)
monster:race(RACE_BLOOD)
monster:corpseId(7349)
monster:outfit({lookType = 25})
monster:defense(11)
monster:armor(9)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 20},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=10, attack=50
--]]

monster:register()
