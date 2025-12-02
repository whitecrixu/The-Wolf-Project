-- Inky
-- Auto-converted from XML

local monster = Game.createMonsterType("Inky")
if not monster then return end

monster:name("Inky")
monster:nameDescription("a inky")
monster:health(600)
monster:maxHealth(600)
monster:experience(250)
monster:speed(520)
monster:race(RACE_BLOOD)
monster:manaCost(670)
monster:corpseId(6065)
monster:outfit({lookType = 46})
monster:defense(15)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = -15},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_LIFEDRAIN, immunity = true},
    {condition = CONDITION_FREEZING, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
})

-- Voices
monster:voices({
    {text = "Tssss!", yell = false},
    {text = "Gaaahhh!", yell = false},
    {text = "Gluh! Gluh!", yell = false},
    {text = "Boohaa!", yell = false},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=85, attack=156
-- name=lifedrain, interval=2000, chance=15, max=-87, radius=3, areaEffect=blackspark
-- name=poisonfield, interval=2000, chance=19, range=7, radius=3, shootEffect=poison
-- name=physical, interval=2000, chance=7, range=7, min=-56, max=-87, target=1, shootEffect=snowball
-- name=energycondition, interval=2000, chance=10, range=1, min=-75, max=-75, target=1, shootEffect=energy
--]]

monster:register()
