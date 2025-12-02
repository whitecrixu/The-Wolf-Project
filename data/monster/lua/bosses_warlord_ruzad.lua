-- Warlord Ruzad
-- Auto-converted from XML

local monster = Game.createMonsterType("Warlord Ruzad")
if not monster then return end

monster:name("Warlord Ruzad")
monster:nameDescription("the warlord ruzad")
monster:health(1950)
monster:maxHealth(1950)
monster:experience(1700)
monster:speed(270)
monster:race(RACE_BLOOD)
monster:corpseId(6008)
monster:outfit({lookType = 2, lookHead = 20, lookBody = 30, lookLegs = 40, lookFeet = 50})
monster:defense(35)
monster:armor(32)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 80},
    {type = COMBAT_ENERGYDAMAGE, percent = 30},
    {type = COMBAT_HOLYDAMAGE, percent = 10},
    {type = COMBAT_EARTHDAMAGE, percent = -10},
    {type = COMBAT_DEATHDAMAGE, percent = -10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
})

-- Summons
monster:summons({
    {name = "Orc Berserker", chance = 30, interval = 2000, max = 3},
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 59},
    {id = 2666, chance = 20000, maxCount = 3},
    {id = 2667, chance = 6667},
    {id = 2392, chance = 8970},
    {id = 2463, chance = 7333},
    {id = 2399, chance = 100000, maxCount = 18},
    {id = 2428, chance = 13000},
    {id = 2478, chance = 3333},
    {id = 2200, chance = 9000},
    {id = 2377, chance = 18180},
    {id = 2497, chance = 6670},
    {id = 2179, chance = 5506},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=65, attack=80
--]]

monster:register()
