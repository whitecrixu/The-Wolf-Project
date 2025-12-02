-- Bear
-- Auto-converted from XML

local monster = Game.createMonsterType("Bear")
if not monster then return end

monster:name("Bear")
monster:nameDescription("a bear")
monster:health(80)
monster:maxHealth(80)
monster:experience(23)
monster:speed(145)
monster:race(RACE_BLOOD)
monster:manaCost(300)
monster:corpseId(5975)
monster:outfit({lookType = 16})
monster:defense(10)
monster:armor(10)
monster:runHealth(15)

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
    {type = COMBAT_HOLYDAMAGE, percent = 10},
    {type = COMBAT_ICEDAMAGE, percent = -10},
    {type = COMBAT_DEATHDAMAGE, percent = -5},
})

-- Voices
monster:voices({
    {text = "Grrrr", yell = false},
    {text = "Groar", yell = false},
})

-- Loot
monster:loot({
    {id = 5896, chance = 2000},
    {id = 2671, chance = 20000, maxCount = 3},
    {id = 2666, chance = 39750, maxCount = 4},
    {id = 5902, chance = 460},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=40, attack=10
--]]

monster:register()
