-- Orchid Frog
-- Auto-converted from XML

local monster = Game.createMonsterType("Orchid Frog")
if not monster then return end

monster:name("Orchid Frog")
monster:nameDescription("a orchid frog")
monster:health(60)
monster:maxHealth(60)
monster:experience(20)
monster:speed(200)
monster:race(RACE_BLOOD)
monster:manaCost(305)
monster:corpseId(6079)
monster:outfit({lookType = 226, lookHead = 109, lookBody = 14, lookLegs = 109, lookFeet = 114})
monster:defense(5)
monster:armor(5)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isConvinceable(true)
monster:pushable(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ICEDAMAGE, percent = 10},
    {type = COMBAT_FIREDAMAGE, percent = -10},
})

-- Voices
monster:voices({
    {text = "Ribbit!", yell = false},
    {text = "Ribbit! Ribbit!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 73230, maxCount = 10},
    {id = 3976, chance = 8000},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=10, attack=24
--]]

monster:register()
