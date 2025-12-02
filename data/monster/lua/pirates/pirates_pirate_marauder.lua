-- Pirate Marauder
-- Auto-converted from XML

local monster = Game.createMonsterType("Pirate Marauder")
if not monster then return end

monster:name("Pirate Marauder")
monster:nameDescription("a pirate marauder")
monster:health(210)
monster:maxHealth(210)
monster:experience(125)
monster:speed(200)
monster:race(RACE_BLOOD)
monster:manaCost(490)
monster:corpseId(20483)
monster:outfit({lookType = 93})
monster:defense(15)
monster:armor(15)
monster:runHealth(20)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isConvinceable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = 10},
    {type = COMBAT_HOLYDAMAGE, percent = 20},
    {type = COMBAT_DEATHDAMAGE, percent = -5},
    {type = COMBAT_FIREDAMAGE, percent = -10},
    {type = COMBAT_ENERGYDAMAGE, percent = -5},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Plundeeeeer!", yell = false},
    {text = "Give up!", yell = false},
    {text = "Hiyaa!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 77670, maxCount = 40},
    {id = 2050, chance = 9880},
    {id = 2389, chance = 5140, maxCount = 2},
    {id = 2510, chance = 5000},
    {id = 2464, chance = 3000},
    {id = 5091, chance = 910},
    {id = 5917, chance = 880},
    {id = 6126, chance = 520},
    {id = 6097, chance = 520},
    {id = 6098, chance = 530},
    {id = 5553, chance = 110},
    {id = 5928, chance = 80},
    {id = 5792, chance = 90},
    {id = 5927, chance = 430},
    {id = 11219, chance = 9720},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=60, attack=40
-- name=physical, interval=2000, chance=15, range=7, max=-40, shootEffect=spear
--]]

monster:register()
