-- Rat
-- Auto-converted from XML

local monster = Game.createMonsterType("Rat")
if not monster then return end

monster:name("Rat")
monster:nameDescription("a rat")
monster:health(20)
monster:maxHealth(20)
monster:experience(5)
monster:speed(135)
monster:race(RACE_BLOOD)
monster:manaCost(200)
monster:corpseId(5964)
monster:outfit({lookType = 21})
monster:defense(5)
monster:armor(5)
monster:runHealth(5)

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
    {type = COMBAT_EARTHDAMAGE, percent = 25},
    {type = COMBAT_HOLYDAMAGE, percent = 20},
    {type = COMBAT_ICEDAMAGE, percent = -10},
    {type = COMBAT_DEATHDAMAGE, percent = -10},
})

-- Voices
monster:voices({
    {text = "Meep!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 4},
    {id = 2696, chance = 39410},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=10, attack=10
--]]

monster:register()
