-- Orc Spearman
-- Auto-converted from XML

local monster = Game.createMonsterType("Orc Spearman")
if not monster then return end

monster:name("Orc Spearman")
monster:nameDescription("a orc spearman")
monster:health(105)
monster:maxHealth(105)
monster:experience(38)
monster:speed(176)
monster:race(RACE_BLOOD)
monster:manaCost(310)
monster:corpseId(5996)
monster:outfit({lookType = 50})
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
monster:pushable(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
    {type = COMBAT_HOLYDAMAGE, percent = 20},
    {type = COMBAT_EARTHDAMAGE, percent = -10},
    {type = COMBAT_DEATHDAMAGE, percent = -10},
})

-- Voices
monster:voices({
    {text = "Ugaar!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 25050, maxCount = 11},
    {id = 2420, chance = 3000},
    {id = 2666, chance = 30200},
    {id = 2389, chance = 17440},
    {id = 2482, chance = 9000},
    {id = 2468, chance = 10000},
    {id = 12435, chance = 2300},
    {id = 11113, chance = 150},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=15, attack=20
-- name=physical, interval=2000, chance=20, range=7, max=-30, shootEffect=spear
--]]

monster:register()
