-- Tromphonyte
-- Auto-converted from XML

local monster = Game.createMonsterType("Tromphonyte")
if not monster then return end

monster:name("Tromphonyte")
monster:nameDescription("Tromphonyte")
monster:health(3000)
monster:maxHealth(3000)
monster:experience(1300)
monster:speed(240)
monster:race(RACE_BLOOD)
monster:corpseId(13312)
monster:outfit({lookType = 381})
monster:defense(0)
monster:armor(0)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_HOLYDAMAGE, percent = 50},
    {type = COMBAT_DEATHDAMAGE, percent = 10},
    {type = COMBAT_FIREDAMAGE, percent = 20},
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
    {type = COMBAT_ICEDAMAGE, percent = 10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "HRRRRRNG", yell = true},
})

-- Loot
monster:loot({
    {id = 13301, chance = 100000},
    {id = 2476, chance = 100000},
    {id = 2152, chance = 100000, maxCount = 13},
    {id = 9970, chance = 100000, maxCount = 5},
    {id = 13299, chance = 100000},
    {id = 13300, chance = 100000, maxCount = 2},
    {id = 7588, chance = 100000, maxCount = 2},
    {id = 7589, chance = 100000, maxCount = 2},
    {id = 7452, chance = 50000},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-215
-- name=physical, interval=2000, chance=15, min=-170, max=-300, radius=3, areaEffect=groundshaker
-- name=lifedrain, interval=2000, chance=15, min=-90, max=-130, target=1, shootEffect=smallstone
-- name=stampor skill reducer, interval=2000, chance=10, range=5
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=15, min=90, max=120, areaEffect=blueshimmer
--]]

monster:register()
