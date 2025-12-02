-- Drillworm
-- Auto-converted from XML

local monster = Game.createMonsterType("Drillworm")
if not monster then return end

monster:name("Drillworm")
monster:nameDescription("drillworm")
monster:health(1500)
monster:maxHealth(1500)
monster:experience(1100)
monster:speed(240)
monster:race(RACE_VENOM)
monster:corpseId(19705)
monster:outfit({lookType = 527})
monster:defense(35)
monster:armor(35)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 15},
    {type = COMBAT_ICEDAMAGE, percent = 16},
    {type = COMBAT_HOLYDAMAGE, percent = 25},
    {type = COMBAT_DEATHDAMAGE, percent = 15},
    {type = COMBAT_FIREDAMAGE, percent = -5},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Knarrrk!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 100},
    {id = 2148, chance = 50000, maxCount = 50},
    {id = 3976, chance = 4580, maxCount = 5},
    {id = 18436, chance = 4870, maxCount = 2},
    {id = 13757, chance = 12130},
    {id = 11222, chance = 15000},
    {id = 2553, chance = 5280},
    {id = 5880, chance = 1750},
    {id = 7887, chance = 2360},
    {id = 2515, chance = 2240},
    {id = 7452, chance = 540},
    {id = 11339, chance = 700},
    {id = 18429, chance = 7280},
    {id = 18427, chance = 5400},
    {id = 18416, chance = 9780},
    {id = 18417, chance = 9260},
    {id = 18418, chance = 9610},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-300
-- name=speed, interval=2000, chance=15, length=8, duration=15000, speedchange=-600, areaEffect=redshimmer
-- name=earth, interval=2000, chance=10, min=-150, max=-300, length=8, areaEffect=greenspark
-- name=earth, interval=2000, chance=15, min=-100, max=-150, radius=3, target=1, areaEffect=poison
--]]

monster:register()
