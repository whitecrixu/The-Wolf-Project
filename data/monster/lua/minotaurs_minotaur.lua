-- Minotaur
-- Auto-converted from XML

local monster = Game.createMonsterType("Minotaur")
if not monster then return end

monster:name("Minotaur")
monster:nameDescription("a minotaur")
monster:health(100)
monster:maxHealth(100)
monster:experience(50)
monster:speed(170)
monster:race(RACE_BLOOD)
monster:manaCost(330)
monster:corpseId(5969)
monster:outfit({lookType = 25})
monster:defense(15)
monster:armor(15)

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
    {type = COMBAT_FIREDAMAGE, percent = 20},
    {type = COMBAT_HOLYDAMAGE, percent = 10},
    {type = COMBAT_ICEDAMAGE, percent = -10},
    {type = COMBAT_DEATHDAMAGE, percent = -5},
    {type = COMBAT_ENERGYDAMAGE, percent = -15},
})

-- Voices
monster:voices({
    {text = "Kaplar!", yell = false},
    {text = "Hurr!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 67500, maxCount = 25},
    {id = 2510, chance = 20020},
    {id = 2398, chance = 12840},
    {id = 2376, chance = 5000},
    {id = 2464, chance = 10000},
    {id = 2666, chance = 5000},
    {id = 2460, chance = 7700},
    {id = 2386, chance = 4000},
    {id = 2554, chance = 310},
    {id = 5878, chance = 990},
    {id = 2172, chance = 110},
    {id = 12428, chance = 2090, maxCount = 2},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=20, attack=30
--]]

monster:register()
