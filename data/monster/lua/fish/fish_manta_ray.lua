-- Manta Ray
-- Auto-converted from XML

local monster = Game.createMonsterType("Manta Ray")
if not monster then return end

monster:name("Manta Ray")
monster:nameDescription("a manta ray")
monster:health(680)
monster:maxHealth(680)
monster:experience(125)
monster:speed(200)
monster:race(RACE_BLOOD)
monster:corpseId(15276)
monster:outfit({lookType = 449})
monster:defense(15)
monster:armor(15)
monster:targetDistance(0)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(true)
monster:canPushCreatures(true)

-- Resistances
monster:elements({
    {type = COMBAT_ICEDAMAGE, percent = -1},
    {type = COMBAT_PHYSICALDAMAGE, percent = -1},
    {type = COMBAT_ENERGYDAMAGE, percent = 1},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_DROWN, immunity = true},
})

-- Voices
monster:voices({
    {text = "Flap flap flap!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 38},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=34, attack=45
-- name=energy, interval=2000, chance=10, range=7, min=-15, max=-75, shootEffect=energy, areaEffect=energy
-- name=energy, interval=2000, chance=10, length=4, areaEffect=energy
--]]

monster:register()
