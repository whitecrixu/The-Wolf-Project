-- Kerberos
-- Auto-converted from XML

local monster = Game.createMonsterType("Kerberos")
if not monster then return end

monster:name("Kerberos")
monster:nameDescription("Kerberos")
monster:health(11000)
monster:maxHealth(11000)
monster:experience(10000)
monster:speed(280)
monster:race(RACE_BLOOD)
monster:corpseId(6332)
monster:outfit({lookType = 240})
monster:defense(40)
monster:armor(40)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(70)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = 20},
    {type = COMBAT_ENERGYDAMAGE, percent = 10},
    {type = COMBAT_ICEDAMAGE, percent = -5},
    {type = COMBAT_HOLYDAMAGE, percent = -25},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_FIRE, immunity = true},
})

-- Voices
monster:voices({
    {text = "GROOOWL!", yell = false},
    {text = "GRRRRR!", yell = false},
})

-- Loot
monster:loot({
    {id = 2152, chance = 100000, maxCount = 18},
    {id = 2144, chance = 96880, maxCount = 5},
    {id = 6558, chance = 100000},
    {id = 6500, chance = 62500},
    {id = 9971, chance = 100000, maxCount = 5},
    {id = 2430, chance = 10810},
    {id = 6553, chance = 6250},
    {id = 10554, chance = 100000},
    {id = 2155, chance = 50000},
    {id = 2392, chance = 46880},
    {id = 4873, chance = 65630},
    {id = 7890, chance = 96880},
    {id = 7590, chance = 96880, maxCount = 3},
    {id = 7453, chance = 3130},
    {id = 2466, chance = 31250},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-508
-- name=earth, interval=2000, chance=5, max=-700, length=8, spread=3, areaEffect=carniphila
-- name=death, interval=2000, chance=10, range=7, max=-498, shootEffect=suddendeath, areaEffect=smallclouds
-- name=fire, interval=2000, chance=10, max=-662, length=8, spread=3, areaEffect=firearea
-- name=lifedrain, interval=2000, chance=10, max=-976, length=8, spread=3, areaEffect=redshimmer
-- name=earth, interval=2000, chance=5, range=7, max=-549, shootEffect=poison, areaEffect=poison
--]]

monster:register()
