-- Grimgor Guteater
-- Auto-converted from XML

local monster = Game.createMonsterType("Grimgor Guteater")
if not monster then return end

monster:name("Grimgor Guteater")
monster:nameDescription("grimgor guteater")
monster:health(1115)
monster:maxHealth(1115)
monster:experience(670)
monster:speed(240)
monster:race(RACE_BLOOD)
monster:corpseId(7349)
monster:outfit({lookType = 2})
monster:defense(45)
monster:armor(45)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
    {type = COMBAT_DEATHDAMAGE, percent = -10},
    {type = COMBAT_EARTHDAMAGE, percent = -10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Dont run, You're burning off precious fat.", yell = false},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=105, attack=40
-- name=physical, interval=4000, chance=60, min=-55, max=-130, shootEffect=throwingstar
--]]

monster:register()
