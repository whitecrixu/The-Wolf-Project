-- Fallen Mooh'tah Master Ghar
-- Auto-converted from XML

local monster = Game.createMonsterType("Fallen Mooh'tah Master Ghar")
if not monster then return end

monster:name("Fallen Mooh'tah Master Ghar")
monster:nameDescription("fallen mooh'tah master ghar")
monster:health(8000)
monster:maxHealth(8000)
monster:experience(4400)
monster:speed(190)
monster:race(RACE_BLOOD)
monster:corpseId(7349)
monster:outfit({lookType = 29})
monster:defense(33)
monster:armor(30)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 60},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "I will finish you!", yell = false},
    {text = "You are no match for a master of the Mooh'Tha!", yell = false},
    {text = "I might be fallen but you will fall before me!", yell = false},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=60, attack=150
-- name=fire, interval=6000, chance=30, min=-80, max=-300, length=8, spread=3, areaEffect=firearea
-- name=fire, interval=3000, chance=45, min=-80, max=-400, radius=5, target=1, shootEffect=fire
-- name=death, interval=4000, chance=30, min=-80, max=-270, shootEffect=death, areaEffect=mortarea
-- name=poisoncondition, interval=4500, chance=40, range=10, min=-10, max=-200, shootEffect=poison
-- name=poison, interval=5000, chance=30, min=-60, max=-300, length=8, spread=3, areaEffect=poison
--]]

monster:register()
