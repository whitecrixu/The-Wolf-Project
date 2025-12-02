-- Yakchal
-- Auto-converted from XML

local monster = Game.createMonsterType("Yakchal")
if not monster then return end

monster:name("Yakchal")
monster:nameDescription("an yakchal")
monster:health(5000)
monster:maxHealth(5000)
monster:experience(4400)
monster:speed(200)
monster:race(RACE_BLOOD)
monster:corpseId(20546)
monster:outfit({lookType = 149, lookBody = 47, lookLegs = 105, lookFeet = 105})
monster:defense(20)
monster:armor(15)
monster:targetDistance(4)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(50)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 50},
    {type = COMBAT_EARTHDAMAGE, percent = 40},
    {type = COMBAT_HOLYDAMAGE, percent = 26},
    {type = COMBAT_ENERGYDAMAGE, percent = -10},
    {type = COMBAT_DEATHDAMAGE, percent = -10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FREEZING, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "So you think you are cool?", yell = false},
    {text = "I hope it is not too cold for you! HeHeHe.", yell = false},
    {text = "Freeze!", yell = false},
})

-- Summons
monster:summons({
    {name = "Ice Golem", chance = 13, interval = 1000, max = 4},
})

-- Loot
monster:loot({
    {id = 2148, chance = 10000, maxCount = 88},
    {id = 5912, chance = 5000},
    {id = 7449, chance = 4000},
    {id = 7440, chance = 1500},
    {id = 7439, chance = 1500},
    {id = 7443, chance = 1500},
    {id = 7459, chance = 1000},
    {id = 2201, chance = 3250},
    {id = 7896, chance = 2650},
    {id = 2195, chance = 2000},
    {id = 7897, chance = 3000},
    {id = 7410, chance = 1500},
    {id = 2436, chance = 4500},
    {id = 9971, chance = 5000},
    {id = 2445, chance = 4000},
    {id = 7290, chance = 1000000},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-389
-- name=outfit, interval=1000, chance=10, range=7, duration=8000, areaEffect=blueshimmer
-- name=ice, interval=2000, chance=18, max=-430, radius=4, target=1, areaEffect=icearea, shootEffect=smallice
-- name=physical, interval=3000, chance=34, range=7, min=-200, max=-310, radius=3, target=1, shootEffect=snowball
-- name=speed, interval=1000, chance=10, range=7, duration=20000, speedchange=-600, areaEffect=redshimmer
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=1000, chance=25, min=50, max=100, areaEffect=blueshimmer
--]]

monster:register()
