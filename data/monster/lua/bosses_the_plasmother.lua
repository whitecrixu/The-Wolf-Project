-- The Plasmother
-- Auto-converted from XML

local monster = Game.createMonsterType("The Plasmother")
if not monster then return end

monster:name("The Plasmother")
monster:nameDescription("the plasmother")
monster:health(16050)
monster:maxHealth(16050)
monster:experience(8900)
monster:speed(310)
monster:race(RACE_VENOM)
monster:corpseId(6532)
monster:outfit({lookType = 238})
monster:defense(30)
monster:armor(30)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = -20},
    {type = COMBAT_ENERGYDAMAGE, percent = 15},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_LIFEDRAIN, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Blubb", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 70},
    {id = 2148, chance = 100000, maxCount = 60},
    {id = 2148, chance = 100000, maxCount = 45},
    {id = 2152, chance = 100000, maxCount = 13},
    {id = 6500, chance = 100000},
    {id = 2144, chance = 100000, maxCount = 3},
    {id = 2146, chance = 100000, maxCount = 3},
    {id = 5944, chance = 35000},
    {id = 6535, chance = 100000},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=30, attack=50
-- name=speed, interval=1000, chance=8, radius=6, duration=10000, speedchange=-800, areaEffect=poison
-- name=earth, interval=2000, chance=15, min=-200, max=-350, radius=4, areaEffect=poison
-- name=earth, interval=3000, chance=15, min=-200, max=-530, radius=4, target=1, areaEffect=greenspark, shootEffect=poison
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=1000, chance=75, min=505, max=605, areaEffect=blueshimmer
--]]

monster:register()
