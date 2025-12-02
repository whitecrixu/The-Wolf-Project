-- The Hairy One
-- Auto-converted from XML

local monster = Game.createMonsterType("The Hairy One")
if not monster then return end

monster:name("The Hairy One")
monster:nameDescription("the hairy one")
monster:health(325)
monster:maxHealth(325)
monster:experience(115)
monster:speed(240)
monster:race(RACE_BLOOD)
monster:corpseId(7349)
monster:outfit({lookType = 116})
monster:defense(5)
monster:armor(3)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 5},
    {type = COMBAT_FIREDAMAGE, percent = -20},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Hugah!", yell = false},
    {text = "Ungh! Ungh!", yell = false},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=10, attack=70
--]]

monster:register()
