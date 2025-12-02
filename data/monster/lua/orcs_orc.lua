-- Orc
-- Auto-converted from XML

local monster = Game.createMonsterType("Orc")
if not monster then return end

monster:name("Orc")
monster:nameDescription("a orc")
monster:health(70)
monster:maxHealth(70)
monster:experience(25)
monster:speed(150)
monster:race(RACE_BLOOD)
monster:manaCost(300)
monster:corpseId(5966)
monster:outfit({lookType = 5})
monster:defense(10)
monster:armor(10)
monster:runHealth(15)

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
    {type = COMBAT_HOLYDAMAGE, percent = 10},
    {type = COMBAT_EARTHDAMAGE, percent = -10},
    {type = COMBAT_DEATHDAMAGE, percent = -5},
})

-- Voices
monster:voices({
    {text = "Grak brrretz!", yell = false},
    {text = "Grow truk grrrrr.", yell = false},
    {text = "Prek tars, dekklep zurk.", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 84810, maxCount = 14},
    {id = 2666, chance = 10160},
    {id = 2484, chance = 7860},
    {id = 2482, chance = 2950},
    {id = 2526, chance = 7300},
    {id = 2385, chance = 5850},
    {id = 2386, chance = 4960},
    {id = 11113, chance = 210},
    {id = 12435, chance = 590},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=25, attack=20
--]]

monster:register()
