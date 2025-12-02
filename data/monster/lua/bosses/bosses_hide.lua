-- Hide
-- Auto-converted from XML

local monster = Game.createMonsterType("Hide")
if not monster then return end

monster:name("Hide")
monster:nameDescription("hide")
monster:health(500)
monster:maxHealth(500)
monster:experience(240)
monster:speed(280)
monster:race(RACE_VENOM)
monster:corpseId(6060)
monster:outfit({lookType = 219})
monster:defense(40)
monster:armor(25)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 10},
    {type = COMBAT_FIREDAMAGE, percent = -15},
    {type = COMBAT_ICEDAMAGE, percent = -15},
    {type = COMBAT_PHYSICALDAMAGE, percent = 40},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
})

-- Loot
monster:loot({
    {id = 2152, chance = 100000, maxCount = 5},
    {id = 2457, chance = 50000},
    {id = 5879, chance = 50000},
    {id = 7903, chance = 50000},
    {id = 2477, chance = 50000},
    {id = 2169, chance = 33333},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=60, attack=40
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=speed, interval=2000, chance=10, duration=5000, speedchange=340, areaEffect=redshimmer
--]]

monster:register()
