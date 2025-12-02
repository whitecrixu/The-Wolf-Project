-- Spirit of Water
-- Auto-converted from XML

local monster = Game.createMonsterType("Spirit of Water")
if not monster then return end

monster:name("Spirit of Water")
monster:nameDescription("the spirit of water")
monster:health(1517)
monster:maxHealth(1517)
monster:experience(850)
monster:speed(200)
monster:race(RACE_UNDEAD)
monster:corpseId(7349)
monster:outfit({lookType = 11})
monster:defense(0)
monster:armor(0)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = -10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_FREEZING, immunity = true},
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Blubb", yell = false},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=70, attack=100
-- name=poisonfield, interval=1000, chance=50, shootEffect=poison
-- name=physical, interval=2000, chance=40, min=-1, max=-120, spread=3, areaEffect=bluebubble
--]]

monster:register()
