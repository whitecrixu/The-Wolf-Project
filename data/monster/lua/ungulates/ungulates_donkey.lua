-- Donkey
-- Auto-converted from XML

local monster = Game.createMonsterType("Donkey")
if not monster then return end

monster:name("Donkey")
monster:nameDescription("a donkey")
monster:health(45)
monster:maxHealth(45)
monster:experience(0)
monster:speed(150)
monster:race(RACE_BLOOD)
monster:corpseId(13509)
monster:outfit({lookType = 399})
monster:defense(2)
monster:armor(2)
monster:runHealth(25)

-- Flags
monster:attackable(true)
monster:hostile(false)
monster:pushable(true)
monster:staticAttackChance(90)

-- Voices
monster:voices({
    {text = "Grunt!", yell = false},
})

-- Loot
monster:loot({
    {id = 2666, chance = 20000, maxCount = 2},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-5
--]]

monster:register()
