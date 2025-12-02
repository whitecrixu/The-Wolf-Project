-- Kraknaknork'S Demon
-- Auto-converted from XML

local monster = Game.createMonsterType("Kraknaknork'S Demon")
if not monster then return end

monster:name("Kraknaknork'S Demon")
monster:nameDescription("Kraknaknork'S Demon")
monster:health(120)
monster:maxHealth(120)
monster:experience(0)
monster:speed(400)
monster:race(RACE_FIRE)
monster:corpseId(6068)
monster:outfit({lookType = 12, lookHead = 117, lookBody = 58, lookLegs = 117})
monster:defense(0)
monster:armor(0)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(85)

-- Resistances
monster:elements({
    {type = COMBAT_ICEDAMAGE, percent = -15},
    {type = COMBAT_ENERGYDAMAGE, percent = -5},
    {type = COMBAT_EARTHDAMAGE, percent = -8},
    {type = COMBAT_FIREDAMAGE, percent = 25},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "STEP A BIT CLOSER, RIGHT THERE, HAHAHA!", yell = true},
    {text = "COME AND DIE!", yell = true},
    {text = "ROOKIE FOR BREAKFAST", yell = true},
})

-- Loot
monster:loot({
    {id = 2148, chance = 48025, maxCount = 186},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=95, attack=95
-- name=fire, interval=3000, chance=20, min=-10, max=-40, radius=4, target=1, areaEffect=explosion
--]]

monster:register()
