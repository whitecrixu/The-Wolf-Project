-- Black Knight
-- Auto-converted from XML

local monster = Game.createMonsterType("Black Knight")
if not monster then return end

monster:name("Black Knight")
monster:nameDescription("a black knight")
monster:health(1800)
monster:maxHealth(1800)
monster:experience(1600)
monster:speed(250)
monster:race(RACE_BLOOD)
monster:corpseId(20355)
monster:outfit({lookType = 131, lookHead = 95, lookBody = 95, lookLegs = 95, lookFeet = 95, lookAddons = 3})
monster:defense(40)
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
    {type = COMBAT_FIREDAMAGE, percent = 95},
    {type = COMBAT_ENERGYDAMAGE, percent = 80},
    {type = COMBAT_PHYSICALDAMAGE, percent = 20},
    {type = COMBAT_DEATHDAMAGE, percent = 20},
    {type = COMBAT_HOLYDAMAGE, percent = -10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_FREEZING, immunity = true},
})

-- Voices
monster:voices({
    {text = "MINE!", yell = true},
    {text = "No prisoners!", yell = true},
    {text = "NO MERCY!", yell = true},
    {text = "By Bolg's Blood!", yell = false},
    {text = "You're no match for me!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 23000, maxCount = 80},
    {id = 2148, chance = 23000, maxCount = 56},
    {id = 2389, chance = 30800, maxCount = 3},
    {id = 2691, chance = 21600, maxCount = 2},
    {id = 2478, chance = 12200},
    {id = 2120, chance = 16020},
    {id = 2381, chance = 11850},
    {id = 2463, chance = 10370},
    {id = 2457, chance = 11220},
    {id = 2377, chance = 8470},
    {id = 2475, chance = 5610},
    {id = 2417, chance = 6980},
    {id = 2430, chance = 3280},
    {id = 2476, chance = 320},
    {id = 2489, chance = 1900},
    {id = 2490, chance = 2330},
    {id = 2477, chance = 1050},
    {id = 2133, chance = 740},
    {id = 2414, chance = 110},
    {id = 7895, chance = 950},
    {id = 2114, chance = 210},
    {id = 2195, chance = 320},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=90, attack=60
-- name=physical, interval=2000, chance=20, range=7, max=-200, shootEffect=spear
--]]

monster:register()
