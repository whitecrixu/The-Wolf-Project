-- Poacher
-- Auto-converted from XML

local monster = Game.createMonsterType("Poacher")
if not monster then return end

monster:name("Poacher")
monster:nameDescription("a poacher")
monster:health(90)
monster:maxHealth(90)
monster:experience(70)
monster:speed(185)
monster:race(RACE_BLOOD)
monster:manaCost(530)
monster:corpseId(20487)
monster:outfit({lookType = 129, lookHead = 115, lookBody = 119, lookLegs = 119, lookFeet = 115, lookAddons = 1})
monster:defense(15)
monster:armor(15)
monster:runHealth(5)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Voices
monster:voices({
    {text = "You will not live to tell anyone!", yell = false},
    {text = "You are my game today!", yell = false},
    {text = "Look what has stepped into my trap!", yell = false},
})

-- Loot
monster:loot({
    {id = 2649, chance = 26740},
    {id = 2461, chance = 30600},
    {id = 2690, chance = 11110, maxCount = 2},
    {id = 2456, chance = 14930},
    {id = 2544, chance = 49500, maxCount = 17},
    {id = 2545, chance = 2930, maxCount = 3},
    {id = 2050, chance = 4180},
    {id = 2578, chance = 710},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=25, attack=20
-- name=physical, interval=2000, chance=15, range=7, max=-35, shootEffect=arrow
--]]

monster:register()
