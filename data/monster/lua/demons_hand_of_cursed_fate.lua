-- Hand of Cursed Fate
-- Auto-converted from XML

local monster = Game.createMonsterType("Hand of Cursed Fate")
if not monster then return end

monster:name("Hand of Cursed Fate")
monster:nameDescription("a hand of cursed fate")
monster:health(7500)
monster:maxHealth(7500)
monster:experience(5000)
monster:speed(260)
monster:race(RACE_BLOOD)
monster:corpseId(6312)
monster:outfit({lookType = 230})
monster:defense(25)
monster:armor(25)
monster:runHealth(3500)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(20)

-- Resistances
monster:elements({
    {type = COMBAT_ICEDAMAGE, percent = -10},
    {type = COMBAT_HOLYDAMAGE, percent = -25},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_ENERGY, immunity = true},
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Loot
monster:loot({
    {id = 2148, chance = 60000, maxCount = 100},
    {id = 2148, chance = 60000, maxCount = 100},
    {id = 2148, chance = 50000, maxCount = 67},
    {id = 2152, chance = 100000, maxCount = 7},
    {id = 6558, chance = 30000, maxCount = 4},
    {id = 5944, chance = 31111},
    {id = 6500, chance = 12000},
    {id = 2146, chance = 11000, maxCount = 4},
    {id = 8473, chance = 18000},
    {id = 7590, chance = 19990, maxCount = 2},
    {id = 2178, chance = 9090},
    {id = 7365, chance = 8333, maxCount = 3},
    {id = 7368, chance = 7692, maxCount = 5},
    {id = 2127, chance = 3500},
    {id = 2200, chance = 8740},
    {id = 2187, chance = 5590},
    {id = 2476, chance = 4550},
    {id = 6300, chance = 1750},
    {id = 2487, chance = 1400},
    {id = 2167, chance = 3150},
    {id = 2171, chance = 1005},
    {id = 7414, chance = 495},
    {id = 9971, chance = 700},
    {id = 2436, chance = 700},
    {id = 2153, chance = 700},
    {id = 2154, chance = 5940},
    {id = 2195, chance = 540},
    {id = 5799, chance = 195},
    {id = 5669, chance = 247},
    {id = 2268, chance = 4200, maxCount = 8},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=70, attack=130
-- name=manadrain, interval=2000, chance=15, range=1, max=-920
-- name=drunk, interval=2000, chance=10, radius=4, duration=3000, areaEffect=smallclouds
-- name=lifedrain, interval=2000, chance=15, range=1, min=-220, max=-880, areaEffect=smallclouds
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=speed, interval=2000, chance=15, duration=5000, speedchange=1000, areaEffect=redshimmer
-- name=invisible, interval=2000, chance=10, duration=8000, areaEffect=blueshimmer
-- name=healing, interval=2000, chance=20, min=100, max=250, areaEffect=blueshimmer
--]]

monster:register()
