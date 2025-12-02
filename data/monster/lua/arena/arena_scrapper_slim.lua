-- Slim
-- Auto-converted from XML

local monster = Game.createMonsterType("Slim")
if not monster then return end

monster:name("Slim")
monster:nameDescription("slim")
monster:health(1025)
monster:maxHealth(1025)
monster:experience(580)
monster:speed(200)
monster:race(RACE_UNDEAD)
monster:corpseId(7349)
monster:outfit({lookType = 101})
monster:defense(38)
monster:armor(36)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = -10},
    {type = COMBAT_HOLYDAMAGE, percent = -5},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Zhroozzzzs.", yell = false},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=50, attack=50
-- name=poisonfield, interval=1000, chance=50, shootEffect=poison
-- name=physical, interval=3049, chance=40, min=-10, max=-50, areaEffect=blackspark
--]]

monster:register()
