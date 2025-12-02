-- Xenia
-- Auto-converted from XML

local monster = Game.createMonsterType("Xenia")
if not monster then return end

monster:name("Xenia")
monster:nameDescription("xenia")
monster:health(290)
monster:maxHealth(290)
monster:experience(255)
monster:speed(176)
monster:race(RACE_BLOOD)
monster:manaCost(450)
monster:corpseId(20542)
monster:outfit({lookType = 137, lookHead = 95, lookBody = 115, lookLegs = 115, lookFeet = 95})
monster:defense(14)
monster:armor(12)
monster:runHealth(10)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isSummonable(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ICEDAMAGE, percent = 10},
    {type = COMBAT_FIREDAMAGE, percent = 10},
    {type = COMBAT_HOLYDAMAGE, percent = 7},
    {type = COMBAT_DEATHDAMAGE, percent = -7},
    {type = COMBAT_PHYSICALDAMAGE, percent = -6},
})

-- Voices
monster:voices({
    {text = "Stand still!", yell = false},
    {text = "One more head for me!", yell = false},
    {text = "Head off!", yell = false},
})

-- Loot
monster:loot({
    {id = 3976, chance = 50000, maxCount = 10},
    {id = 2148, chance = 100000, maxCount = 45},
    {id = 2464, chance = 6666},
    {id = 2125, chance = 2500},
    {id = 2387, chance = 3333},
    {id = 2458, chance = 5000},
    {id = 2674, chance = 10000, maxCount = 4},
    {id = 2420, chance = 10000},
    {id = 2666, chance = 20000, maxCount = 3},
    {id = 2147, chance = 2500, maxCount = 2},
    {id = 2145, chance = 2500, maxCount = 2},
    {id = 2200, chance = 1000},
    {id = 2463, chance = 1333},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-50
-- name=physical, interval=1000, chance=15, range=7, min=-28, max=-42, shootEffect=spear
--]]

monster:register()
