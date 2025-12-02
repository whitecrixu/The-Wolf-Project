-- Mammoth
-- Auto-converted from XML

local monster = Game.createMonsterType("Mammoth")
if not monster then return end

monster:name("Mammoth")
monster:nameDescription("a mammoth")
monster:health(320)
monster:maxHealth(320)
monster:experience(160)
monster:speed(210)
monster:race(RACE_BLOOD)
monster:manaCost(500)
monster:corpseId(6074)
monster:outfit({lookType = 199})
monster:defense(25)
monster:armor(25)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isConvinceable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = 20},
    {type = COMBAT_ICEDAMAGE, percent = 20},
    {type = COMBAT_PHYSICALDAMAGE, percent = 15},
    {type = COMBAT_FIREDAMAGE, percent = -10},
})

-- Voices
monster:voices({
    {text = "Troooooot!", yell = false},
    {text = "Hooooot-Toooooot!", yell = false},
    {text = "Tooooot.", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 90000, maxCount = 40},
    {id = 2666, chance = 39000},
    {id = 2671, chance = 30000, maxCount = 3},
    {id = 11238, chance = 7500, maxCount = 2},
    {id = 11224, chance = 7280},
    {id = 7381, chance = 2800},
    {id = 7432, chance = 500},
    {id = 3973, chance = 500},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-110
--]]

monster:register()
