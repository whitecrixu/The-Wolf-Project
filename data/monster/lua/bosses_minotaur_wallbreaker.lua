-- Minotaur Wallbreaker
-- Auto-converted from XML

local monster = Game.createMonsterType("Minotaur Wallbreaker")
if not monster then return end

monster:name("Minotaur Wallbreaker")
monster:nameDescription("a minotaur wallbreaker")
monster:health(120000)
monster:maxHealth(120000)
monster:experience(16725)
monster:speed(220)
monster:race(RACE_BLOOD)
monster:corpseId(5962)
monster:outfit({lookType = 607})
monster:defense(45)
monster:armor(40)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 85},
    {type = COMBAT_HOLYDAMAGE, percent = 85},
    {type = COMBAT_ICEDAMAGE, percent = 85},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 195},
    {id = 2152, chance = 58000, maxCount = 2},
    {id = 7591, chance = 7300, maxCount = 3},
    {id = 7590, chance = 7300, maxCount = 3},
    {id = 2666, chance = 6400},
    {id = 2147, chance = 4600, maxCount = 2},
    {id = 5878, chance = 4200},
    {id = 2145, chance = 4000, maxCount = 2},
    {id = 2214, chance = 2000},
    {id = 5911, chance = 1700},
    {id = 2156, chance = 880},
    {id = 2154, chance = 730},
    {id = 7452, chance = 440},
    {id = 7427, chance = 290},
    {id = 9971, chance = 290},
    {id = 7401, chance = 290},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-170
-- name=physical, interval=2000, chance=15, max=-200, radius=3, areaEffect=blackspark
-- name=lifedrain, interval=2000, chance=15, range=7, min=-100, max=-225, radius=4, target=1, areaEffect=redshimmer
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=4000, chance=15, min=2000, max=4000, areaEffect=blueshimmer
--]]

monster:register()
