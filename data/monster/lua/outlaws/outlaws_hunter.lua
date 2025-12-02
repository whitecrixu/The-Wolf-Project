-- Hunter
-- Auto-converted from XML

local monster = Game.createMonsterType("Hunter")
if not monster then return end

monster:name("Hunter")
monster:nameDescription("a hunter")
monster:health(150)
monster:maxHealth(150)
monster:experience(150)
monster:speed(195)
monster:race(RACE_BLOOD)
monster:manaCost(530)
monster:corpseId(20419)
monster:outfit({lookType = 129, lookHead = 95, lookBody = 116, lookLegs = 121, lookFeet = 115})
monster:defense(15)
monster:armor(15)
monster:targetDistance(4)
monster:runHealth(10)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_HOLYDAMAGE, percent = 20},
    {type = COMBAT_PHYSICALDAMAGE, percent = -10},
})

-- Voices
monster:voices({
    {text = "Guess who we're hunting, haha!", yell = false},
    {text = "Guess who we are hunting!", yell = false},
    {text = "Bullseye!", yell = false},
    {text = "You'll make a nice trophy!", yell = false},
})

-- Loot
monster:loot({
    {id = 2545, chance = 4500, maxCount = 4},
    {id = 2544, chance = 82000, maxCount = 22},
    {id = 2675, chance = 20300, maxCount = 2},
    {id = 2690, chance = 11370, maxCount = 2},
    {id = 2050, chance = 3300},
    {id = 2465, chance = 5070},
    {id = 2456, chance = 5770},
    {id = 2460, chance = 5050},
    {id = 2201, chance = 3000},
    {id = 2546, chance = 5360, maxCount = 3},
    {id = 7394, chance = 190},
    {id = 7400, chance = 70},
    {id = 7397, chance = 520},
    {id = 5875, chance = 610},
    {id = 2147, chance = 150},
    {id = 5907, chance = 120},
    {id = 12425, chance = 10240},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=10, attack=20
-- name=physical, interval=2000, chance=50, range=7, max=-100, shootEffect=arrow
--]]

monster:register()
