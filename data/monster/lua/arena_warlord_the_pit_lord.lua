-- The Pit Lord
-- Auto-converted from XML

local monster = Game.createMonsterType("The Pit Lord")
if not monster then return end

monster:name("The Pit Lord")
monster:nameDescription("the pit lord")
monster:health(4500)
monster:maxHealth(4500)
monster:experience(2500)
monster:speed(270)
monster:race(RACE_BLOOD)
monster:corpseId(7349)
monster:outfit({lookType = 55})
monster:defense(44)
monster:armor(46)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = 35},
    {type = COMBAT_ICEDAMAGE, percent = -20},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "I'LL GET YOU ALL!", yell = true},
    {text = "I won't let you escape!", yell = false},
    {text = "I'll crush you beneath my feet!", yell = false},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=85, attack=80
-- name=physical, interval=7500, chance=100, min=-100, max=-250, shootEffect=largerock
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=speed, interval=5000, chance=100, duration=2500, speedchange=500, areaEffect=redshimmer
-- name=healing, interval=6000, chance=65, min=20, max=50, areaEffect=blueshimmer
--]]

monster:register()
