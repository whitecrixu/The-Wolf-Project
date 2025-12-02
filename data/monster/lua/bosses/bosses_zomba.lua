-- Zomba
-- Auto-converted from XML

local monster = Game.createMonsterType("Zomba")
if not monster then return end

monster:name("Zomba")
monster:nameDescription("a zomba")
monster:health(300)
monster:maxHealth(300)
monster:experience(300)
monster:speed(180)
monster:race(RACE_BLOOD)
monster:corpseId(5986)
monster:outfit({lookType = 41})
monster:defense(13)
monster:armor(6)
monster:runHealth(10)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = 20},
    {type = COMBAT_HOLYDAMAGE, percent = 20},
    {type = COMBAT_ICEDAMAGE, percent = -15},
    {type = COMBAT_DEATHDAMAGE, percent = -8},
})

-- Voices
monster:voices({
    {text = "Groarrr!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 25},
    {id = 10608, chance = 100000, maxCount = 2},
    {id = 2152, chance = 25000},
    {id = 2168, chance = 12500},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=30, attack=20
--]]

monster:register()
