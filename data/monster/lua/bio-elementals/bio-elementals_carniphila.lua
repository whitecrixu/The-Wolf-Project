-- Carniphila
-- Auto-converted from XML

local monster = Game.createMonsterType("Carniphila")
if not monster then return end

monster:name("Carniphila")
monster:nameDescription("a carniphila")
monster:health(255)
monster:maxHealth(255)
monster:experience(150)
monster:speed(170)
monster:race(RACE_VENOM)
monster:corpseId(6047)
monster:outfit({lookType = 120})
monster:defense(15)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 10},
    {type = COMBAT_ICEDAMAGE, percent = 35},
    {type = COMBAT_FIREDAMAGE, percent = -20},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Loot
monster:loot({
    {id = 2148, chance = 60000, maxCount = 40},
    {id = 2792, chance = 7692},
    {id = 11217, chance = 4166},
    {id = 2804, chance = 880},
    {id = 2686, chance = 890},
    {id = 7732, chance = 490},
    {id = 2802, chance = 446, maxCount = 2},
    {id = 13298, chance = 170},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=30, attack=50
-- name=earth, interval=2000, chance=15, range=7, min=-60, max=-95, shootEffect=poison, areaEffect=greenbubble
-- name=speed, interval=2000, chance=15, range=7, duration=30000, speedchange=-800, shootEffect=poison, areaEffect=greenbubble
-- name=earth, interval=2000, chance=10, min=-40, max=-130, radius=3, areaEffect=poison
--]]

monster:register()
