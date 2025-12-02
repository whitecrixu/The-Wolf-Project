-- Amazon
-- Auto-converted from XML

local monster = Game.createMonsterType("Amazon")
if not monster then return end

monster:name("Amazon")
monster:nameDescription("a amazon")
monster:health(110)
monster:maxHealth(110)
monster:experience(60)
monster:speed(180)
monster:race(RACE_BLOOD)
monster:manaCost(390)
monster:corpseId(20323)
monster:outfit({lookType = 137, lookHead = 113, lookBody = 120, lookLegs = 114, lookFeet = 132})
monster:defense(10)
monster:armor(10)
monster:targetDistance(4)
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
    {type = COMBAT_PHYSICALDAMAGE, percent = -5},
    {type = COMBAT_DEATHDAMAGE, percent = -5},
})

-- Voices
monster:voices({
    {text = "Yeeee ha!", yell = false},
    {text = "Your head shall be mine!", yell = false},
    {text = "Your head will be mine!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 40000, maxCount = 20},
    {id = 2229, chance = 80000, maxCount = 2},
    {id = 2379, chance = 80000},
    {id = 12400, chance = 5000},
    {id = 2691, chance = 30333},
    {id = 2385, chance = 23000},
    {id = 12399, chance = 10000},
    {id = 2050, chance = 1005},
    {id = 2125, chance = 287},
    {id = 2147, chance = 161},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-45
-- name=physical, interval=2000, chance=15, range=7, max=-40, shootEffect=throwingknife
--]]

monster:register()
