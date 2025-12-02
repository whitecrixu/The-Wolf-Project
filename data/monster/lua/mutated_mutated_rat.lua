-- Mutated Rat
-- Auto-converted from XML

local monster = Game.createMonsterType("Mutated Rat")
if not monster then return end

monster:name("Mutated Rat")
monster:nameDescription("a mutated rat")
monster:health(550)
monster:maxHealth(550)
monster:experience(450)
monster:speed(220)
monster:race(RACE_BLOOD)
monster:corpseId(9871)
monster:outfit({lookType = 305})
monster:defense(15)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = -10},
    {type = COMBAT_HOLYDAMAGE, percent = 10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_LIFEDRAIN, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_DROWN, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Grrrrrrrrrrrrrr!", yell = false},
    {text = "Fcccccchhhhhh", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 38000, maxCount = 65},
    {id = 2148, chance = 40000, maxCount = 65},
    {id = 2320, chance = 20180},
    {id = 2235, chance = 930},
    {id = 2799, chance = 4920},
    {id = 2796, chance = 1390},
    {id = 2510, chance = 3750},
    {id = 2381, chance = 3000},
    {id = 2165, chance = 540},
    {id = 8900, chance = 290},
    {id = 7618, chance = 560},
    {id = 2528, chance = 60},
    {id = 10585, chance = 3770},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=60, attack=45
-- name=earth, interval=2000, chance=15, range=7, min=-45, max=-85, shootEffect=poison, areaEffect=poison
-- name=poisoncondition, interval=2000, chance=10, min=-80, max=-100, length=5, areaEffect=poison
-- name=speed, interval=2000, chance=10, range=7, target=1, duration=30000, speedchange=-600, areaEffect=redshimmer
-- name=lifedrain, interval=2000, chance=10, range=7, min=-30, max=-70, radius=3, areaEffect=redshimmer
-- name=poisoncondition, interval=2000, chance=10, range=7, min=-80, radius=3, areaEffect=poison
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=5, min=80, max=95, areaEffect=blueshimmer
--]]

monster:register()
