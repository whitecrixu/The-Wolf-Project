-- Spidris Elite
-- Auto-converted from XML

local monster = Game.createMonsterType("Spidris Elite")
if not monster then return end

monster:name("Spidris Elite")
monster:nameDescription("a spidris elite")
monster:health(3700)
monster:maxHealth(3700)
monster:experience(4000)
monster:speed(260)
monster:race(RACE_VENOM)
monster:corpseId(15296)
monster:outfit({lookType = 457})
monster:defense(30)
monster:armor(30)
monster:targetDistance(0)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)

-- Resistances
monster:elements({
    {type = COMBAT_HOLYDAMAGE, percent = -10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 100},
    {id = 2148, chance = 50000, maxCount = 100},
    {id = 2152, chance = 45000, maxCount = 6},
    {id = 15485, chance = 27440},
    {id = 15486, chance = 13210},
    {id = 2147, chance = 23280, maxCount = 5},
    {id = 7590, chance = 20400, maxCount = 2},
    {id = 8473, chance = 9250, maxCount = 2},
    {id = 6300, chance = 4480},
    {id = 7632, chance = 3040},
    {id = 7413, chance = 1440},
    {id = 2153, chance = 1120},
    {id = 15489, chance = 1280},
    {id = 15492, chance = 1390},
    {id = 15491, chance = 1170},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=75, attack=82
--]]

monster:register()
