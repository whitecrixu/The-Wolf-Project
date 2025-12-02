-- Roaring Lion
-- Auto-converted from XML

local monster = Game.createMonsterType("Roaring Lion")
if not monster then return end

monster:name("Roaring Lion")
monster:nameDescription("a roaring lion")
monster:health(1000)
monster:maxHealth(1000)
monster:experience(800)
monster:speed(210)
monster:race(RACE_BLOOD)
monster:corpseId(21420)
monster:outfit({lookType = 570})
monster:defense(20)
monster:armor(20)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 20},
    {type = COMBAT_ICEDAMAGE, percent = 25},
    {type = COMBAT_EARTHDAMAGE, percent = 25},
    {type = COMBAT_HOLYDAMAGE, percent = 50},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Groarrrr! Rwarrrr!", yell = false},
    {text = "Growl!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 115},
    {id = 2666, chance = 26000, maxCount = 4},
    {id = 2671, chance = 25000, maxCount = 2},
    {id = 10608, chance = 20000},
    {id = 2152, chance = 9700},
    {id = 2147, chance = 7400},
    {id = 9970, chance = 7170},
    {id = 2146, chance = 6690},
    {id = 2150, chance = 5860},
    {id = 2193, chance = 2280},
    {id = 2164, chance = 710},
    {id = 2491, chance = 400},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-200
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=speed, interval=2000, chance=15, duration=5000, speedchange=230, areaEffect=redshimmer
--]]

monster:register()
