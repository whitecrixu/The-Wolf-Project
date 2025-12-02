-- Nomad
-- Auto-converted from XML

local monster = Game.createMonsterType("Nomad")
if not monster then return end

monster:name("Nomad")
monster:nameDescription("a nomad")
monster:health(160)
monster:maxHealth(160)
monster:experience(60)
monster:speed(205)
monster:race(RACE_BLOOD)
monster:corpseId(20462)
monster:outfit({lookType = 150, lookHead = 115, lookBody = 39, lookLegs = 59, lookFeet = 2, lookAddons = 2})
monster:defense(15)
monster:armor(15)
monster:runHealth(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 20},
    {type = COMBAT_HOLYDAMAGE, percent = 20},
    {type = COMBAT_PHYSICALDAMAGE, percent = -10},
    {type = COMBAT_ICEDAMAGE, percent = -10},
    {type = COMBAT_DEATHDAMAGE, percent = -10},
})

-- Loot
monster:loot({
    {id = 2148, chance = 56000, maxCount = 40},
    {id = 12448, chance = 6420},
    {id = 8838, chance = 4840, maxCount = 3},
    {id = 2386, chance = 2730},
    {id = 2465, chance = 2350},
    {id = 2398, chance = 2150},
    {id = 12412, chance = 2140},
    {id = 2509, chance = 900},
    {id = 2459, chance = 660},
    {id = 8267, chance = 210},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-80
-- name=physical, interval=2000, chance=10, radius=1, areaeffect=whitenote
--]]

monster:register()
