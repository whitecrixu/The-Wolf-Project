-- Enraged Squirrel
-- Auto-converted from XML

local monster = Game.createMonsterType("Enraged Squirrel")
if not monster then return end

monster:name("Enraged Squirrel")
monster:nameDescription("an enraged squirrel")
monster:health(20)
monster:maxHealth(20)
monster:experience(10)
monster:speed(300)
monster:race(RACE_BLOOD)
monster:manaCost(220)
monster:corpseId(7628)
monster:outfit({lookType = 274})
monster:defense(5)
monster:armor(5)
monster:runHealth(2)

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
    {type = COMBAT_FIREDAMAGE, percent = -10},
})

-- Voices
monster:voices({
    {text = "Chchch", yell = false},
})

-- Loot
monster:loot({
    {id = 7909, chance = 1140},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=10, attack=10
--]]

monster:register()
