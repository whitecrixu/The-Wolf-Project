-- Dire Penguin
-- Auto-converted from XML

local monster = Game.createMonsterType("Dire Penguin")
if not monster then return end

monster:name("Dire Penguin")
monster:nameDescription("dire penguin")
monster:health(173)
monster:maxHealth(173)
monster:experience(119)
monster:speed(200)
monster:race(RACE_BLOOD)
monster:corpseId(7334)
monster:outfit({lookType = 250})
monster:defense(10)
monster:armor(10)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:pushable(false)

-- Immunities
monster:immunities({
    {condition = CONDITION_LIFEDRAIN, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Loot
monster:loot({
    {id = 2148, chance = 18000, maxCount = 10},
    {id = 2667, chance = 8000, maxCount = 4},
    {id = 7159, chance = 7000},
    {id = 7158, chance = 8000},
    {id = 2434, chance = 200},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=30, attack=40
-- name=physical, interval=2000, chance=15, range=7, max=-35, radius=1, target=1, shootEffect=smallstone, areaEffect=explosionarea
-- name=speed, interval=2000, chance=10, range=7, radius=4, duration=9000, speedchange=-600, areaEffect=poff
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=speed, interval=2000, chance=15, range=7, duration=3000, speedchange=310, areaEffect=redshimmer
--]]

monster:register()
