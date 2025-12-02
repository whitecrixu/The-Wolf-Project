-- Deathbine
-- Auto-converted from XML

local monster = Game.createMonsterType("Deathbine")
if not monster then return end

monster:name("Deathbine")
monster:nameDescription("a deathbine")
monster:health(525)
monster:maxHealth(525)
monster:experience(340)
monster:speed(240)
monster:race(RACE_VENOM)
monster:corpseId(6047)
monster:outfit({lookType = 120})
monster:defense(10)
monster:armor(26)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ICEDAMAGE, percent = 35},
    {type = COMBAT_ENERGYDAMAGE, percent = 10},
    {type = COMBAT_FIREDAMAGE, percent = -20},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Loot
monster:loot({
    {id = 11217, chance = 100000},
    {id = 2152, chance = 100000, maxCount = 5},
    {id = 2804, chance = 100000},
    {id = 2149, chance = 100000, maxCount = 4},
    {id = 2792, chance = 50000},
    {id = 7732, chance = 50000},
    {id = 7887, chance = 50000},
    {id = 7886, chance = 50000},
    {id = 8912, chance = 50000},
    {id = 5015, chance = 5555},
    {id = 13307, chance = 2854},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=30, attack=100
-- name=poison, interval=1000, chance=25, range=7, min=-60, max=-90, shootEffect=poison, areaEffect=greenspark
-- name=speed, interval=1000, chance=34, range=7, duration=30000, speedchange=-850, shootEffect=poison, areaEffect=greenspark
-- name=poison, interval=1000, chance=12, min=-40, max=-130, radius=3, areaEffect=poison
--]]

monster:register()
