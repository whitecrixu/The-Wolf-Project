-- Bibby Bloodbath
-- Auto-converted from XML

local monster = Game.createMonsterType("Bibby Bloodbath")
if not monster then return end

monster:name("Bibby Bloodbath")
monster:nameDescription("Bibby Bloodbath")
monster:health(1200)
monster:maxHealth(1200)
monster:experience(1500)
monster:speed(240)
monster:race(RACE_BLOOD)
monster:corpseId(6008)
monster:outfit({lookType = 2})
monster:defense(35)
monster:armor(35)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = -2},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_FREEZING, immunity = true},
})

-- Voices
monster:voices({
    {text = "Don't run, you'll just lose precious fat.", yell = false},
    {text = "Hex hex!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 100},
    {id = 2152, chance = 100000, maxCount = 10},
    {id = 2428, chance = 33000},
    {id = 2399, chance = 22000, maxCount = 18},
    {id = 2377, chance = 22000},
    {id = 2489, chance = 14000},
    {id = 7620, chance = 13000, maxCount = 3},
    {id = 2666, chance = 10000, maxCount = 2},
    {id = 7618, chance = 9000, maxCount = 3},
    {id = 2667, chance = 7500},
    {id = 2647, chance = 7500},
    {id = 2165, chance = 5700},
    {id = 7890, chance = 4000},
    {id = 7412, chance = 1600},
    {id = 2393, chance = 1600},
    {id = 7395, chance = 1600},
    {id = 2497, chance = 830},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-200
-- name=physical, interval=2000, chance=20, max=-200, length=5, spread=3, areaEffect=yellowspark
-- name=speed, interval=2000, chance=15, radius=3, duration=30000, speedchange=-300, areaEffect=yellowspark
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=invisible, interval=2000, chance=15, duration=3000, areaEffect=blueshimmer
--]]

monster:register()
