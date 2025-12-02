-- Metal Gargoyle
-- Auto-converted from XML

local monster = Game.createMonsterType("Metal Gargoyle")
if not monster then return end

monster:name("Metal Gargoyle")
monster:nameDescription("a metal gargoyle")
monster:health(2100)
monster:maxHealth(2100)
monster:experience(1400)
monster:speed(190)
monster:race(RACE_ENERGY)
monster:corpseId(23347)
monster:outfit({lookType = 601})
monster:defense(42)
monster:armor(21)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 10},
    {type = COMBAT_ENERGYDAMAGE, percent = -10},
    {type = COMBAT_ICEDAMAGE, percent = -5},
    {type = COMBAT_PHYSICALDAMAGE, percent = 40},
    {type = COMBAT_DEATHDAMAGE, percent = 80},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_LIFEDRAIN, immunity = true},
})

-- Voices
monster:voices({
    {text = "*click*", yell = false},
    {text = "*clonk*", yell = false},
    {text = "*stomp*", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 200},
    {id = 24417, chance = 1490},
    {id = 23564, chance = 17160},
    {id = 2152, chance = 43280, maxCount = 2},
    {id = 7588, chance = 9700, maxCount = 2},
    {id = 7589, chance = 9700, maxCount = 2},
    {id = 23542, chance = 1490},
    {id = 2167, chance = 2240},
    {id = 2168, chance = 750},
    {id = 11227, chance = 2240},
    {id = 23540, chance = 1490},
    {id = 23539, chance = 1490},
    {id = 9810, chance = 2990},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=84, attack=50
-- name=death, interval=2000, chance=10, min=-125, max=-230, length=8, areaEffect=yellowenergy
-- name=lifedrain, interval=2000, chance=9, range=7, min=-85, max=-150, radius=3, target=1, areaEffect=mortarea, shootEffect=suddendeath
-- name=metal gargoyle curse, interval=2000, chance=13
--]]

monster:register()
