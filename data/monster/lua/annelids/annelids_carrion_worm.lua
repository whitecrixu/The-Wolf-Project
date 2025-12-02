-- Carrion Worm
-- Auto-converted from XML

local monster = Game.createMonsterType("Carrion Worm")
if not monster then return end

monster:name("Carrion Worm")
monster:nameDescription("a carrion worm")
monster:health(145)
monster:maxHealth(145)
monster:experience(70)
monster:speed(160)
monster:race(RACE_BLOOD)
monster:manaCost(380)
monster:corpseId(6069)
monster:outfit({lookType = 192})
monster:defense(15)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isConvinceable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(80)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = 20},
    {type = COMBAT_ENERGYDAMAGE, percent = 5},
    {type = COMBAT_FIREDAMAGE, percent = -5},
    {type = COMBAT_ICEDAMAGE, percent = -5},
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 45},
    {id = 2666, chance = 9460, maxCount = 2},
    {id = 3976, chance = 2100, maxCount = 2},
    {id = 11192, chance = 10000},
    {id = 13757, chance = 210},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-45
--]]

monster:register()
