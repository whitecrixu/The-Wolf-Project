-- Polar Bear
-- Auto-converted from XML

local monster = Game.createMonsterType("Polar Bear")
if not monster then return end

monster:name("Polar Bear")
monster:nameDescription("a polar bear")
monster:health(85)
monster:maxHealth(85)
monster:experience(28)
monster:speed(135)
monster:race(RACE_BLOOD)
monster:manaCost(315)
monster:corpseId(5987)
monster:outfit({lookType = 42})
monster:defense(10)
monster:armor(10)
monster:runHealth(5)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isSummonable(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:pushable(false)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ICEDAMAGE, percent = 20},
    {type = COMBAT_FIREDAMAGE, percent = 1},
    {type = COMBAT_DEATHDAMAGE, percent = -10},
    {type = COMBAT_ENERGYDAMAGE, percent = -1},
})

-- Voices
monster:voices({
    {text = "GROARRR!", yell = true},
})

-- Loot
monster:loot({
    {id = 2671, chance = 50000, maxCount = 2},
    {id = 2666, chance = 5000, maxCount = 4},
    {id = 10567, chance = 920},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=10, attack=30
--]]

monster:register()
