-- Webster
-- Auto-converted from XML

local monster = Game.createMonsterType("Webster")
if not monster then return end

monster:name("Webster")
monster:nameDescription("a webster")
monster:health(1750)
monster:maxHealth(1750)
monster:experience(1200)
monster:speed(290)
monster:race(RACE_UNDEAD)
monster:corpseId(7349)
monster:outfit({lookType = 263})
monster:defense(34)
monster:armor(29)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = -20},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FREEZING, immunity = true},
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "You are lost!", yell = false},
    {text = "Come my little morsel.", yell = false},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=40, attack=100
-- name=speed, interval=3500, chance=65, range=1, radius=1, target=1, duration=40, speedchange=-500, areaEffect=redshimmer
-- name=energy, interval=3000, chance=75, range=7, min=-13, max=-80, shootEffect=energy
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=speed, interval=5000, chance=100, duration=2500, speedchange=500, areaEffect=redshimmer
--]]

monster:register()
