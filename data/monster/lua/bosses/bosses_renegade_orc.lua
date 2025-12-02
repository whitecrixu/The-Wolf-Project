-- Renegade Orc
-- Auto-converted from XML

local monster = Game.createMonsterType("Renegade Orc")
if not monster then return end

monster:name("Renegade Orc")
monster:nameDescription("a renegade orc")
monster:health(450)
monster:maxHealth(450)
monster:experience(270)
monster:speed(220)
monster:race(RACE_BLOOD)
monster:corpseId(6001)
monster:outfit({lookType = 59})
monster:defense(25)
monster:armor(25)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
    {type = COMBAT_HOLYDAMAGE, percent = 20},
    {type = COMBAT_EARTHDAMAGE, percent = -10},
    {type = COMBAT_DEATHDAMAGE, percent = -2},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_FIRE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Harga puchak muhmak!", yell = false},
})

-- Loot
monster:loot({
    {id = 2667, chance = 30000},
    {id = 2148, chance = 28000, maxCount = 35},
    {id = 12435, chance = 19000},
    {id = 2510, chance = 10000},
    {id = 2410, chance = 9850, maxCount = 4},
    {id = 2789, chance = 9650},
    {id = 2207, chance = 3920},
    {id = 2397, chance = 2800},
    {id = 2478, chance = 2700},
    {id = 7378, chance = 2600},
    {id = 2419, chance = 2100},
    {id = 12436, chance = 1850},
    {id = 2463, chance = 1500},
    {id = 11113, chance = 890},
    {id = 2413, chance = 830},
    {id = 7618, chance = 550},
    {id = 2647, chance = 420},
    {id = 2475, chance = 160},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-130
-- name=physical, interval=2000, chance=20, range=7, max=-50, shootEffect=throwingknife
--]]

monster:register()
