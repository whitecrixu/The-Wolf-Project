-- Dragonling
-- Auto-converted from XML

local monster = Game.createMonsterType("Dragonling")
if not monster then return end

monster:name("Dragonling")
monster:nameDescription("a dragonling")
monster:health(2600)
monster:maxHealth(2600)
monster:experience(2200)
monster:speed(330)
monster:race(RACE_BLOOD)
monster:corpseId(18438)
monster:outfit({lookType = 505})
monster:defense(25)
monster:armor(25)
monster:runHealth(900)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(70)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = -5},
    {type = COMBAT_ICEDAMAGE, percent = -5},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "FCHHHHHHHHHHHHHHHH", yell = false},
    {text = "FI?", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 37500, maxCount = 100},
    {id = 2148, chance = 37500, maxCount = 100},
    {id = 2148, chance = 37500, maxCount = 27},
    {id = 7589, chance = 16900, maxCount = 2},
    {id = 7588, chance = 24480, maxCount = 2},
    {id = 18425, chance = 12410},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=60, attack=60
-- name=fire, interval=2000, chance=10, min=-120, max=-250, length=5, spread=2, shootEffect=fire, areaEffect=fire
-- name=energy, interval=2000, chance=20, min=-115, max=-180, radius=3, areaEffect=purpleenergy
-- name=fire, interval=2000, chance=20, min=-95, max=-150, radius=3, areaEffect=explosion
-- name=speed, interval=2000, chance=15, radius=1, target=1, duration=16000, speedchange=-700, shootEffect=explosion, areaEffect=stun
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=15, min=100, max=200, areaEffect=blueshimmer
--]]

monster:register()
