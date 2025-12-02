-- Chakoya Windcaller
-- Auto-converted from XML

local monster = Game.createMonsterType("Chakoya Windcaller")
if not monster then return end

monster:name("Chakoya Windcaller")
monster:nameDescription("a chakoya windcaller")
monster:health(84)
monster:maxHealth(84)
monster:experience(48)
monster:speed(200)
monster:race(RACE_BLOOD)
monster:manaCost(305)
monster:corpseId(7320)
monster:outfit({lookType = 260})
monster:defense(10)
monster:armor(10)
monster:targetDistance(4)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isConvinceable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 50},
    {type = COMBAT_HOLYDAMAGE, percent = 20},
    {type = COMBAT_ENERGYDAMAGE, percent = -15},
    {type = COMBAT_DEATHDAMAGE, percent = -10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FREEZING, immunity = true},
})

-- Voices
monster:voices({
    {text = "Mupi! Si siyoqua jinuma!", yell = false},
    {text = "Siqsiq ji jusipa!", yell = false},
    {text = "Jagura taluka taqua!", yell = false},
    {text = "Quatu nguraka!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 26},
    {id = 2667, chance = 29000, maxCount = 3},
    {id = 2541, chance = 950},
    {id = 7159, chance = 60},
    {id = 7158, chance = 60},
    {id = 2669, chance = 60},
    {id = 2460, chance = 3250},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=12, attack=20
-- name=ice, interval=2000, chance=15, range=7, min=-16, max=-32, shootEffect=ice
-- name=freezecondition, interval=2000, chance=10, min=-130, max=-160, radius=3, areaEffect=icearea
-- name=ice, interval=2000, chance=10, min=-9, max=-30, length=5, spread=2, areaEffect=icearea
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=invisible, interval=2000, chance=15, duration=3000, areaEffect=blueshimmer
--]]

monster:register()
