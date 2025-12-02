-- Death Blob
-- Auto-converted from XML

local monster = Game.createMonsterType("Death Blob")
if not monster then return end

monster:name("Death Blob")
monster:nameDescription("a death blob")
monster:health(320)
monster:maxHealth(320)
monster:experience(300)
monster:speed(180)
monster:race(RACE_UNDEAD)
monster:corpseId(9960)
monster:outfit({lookType = 315})
monster:defense(15)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(85)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 30},
    {type = COMBAT_ICEDAMAGE, percent = 10},
    {type = COMBAT_FIREDAMAGE, percent = -10},
    {type = COMBAT_HOLYDAMAGE, percent = -10},
    {type = COMBAT_ENERGYDAMAGE, percent = -10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
})

-- Summons
monster:summons({
    {name = "Death Blob", chance = 10, interval = 2000, max = 1},
})

-- Loot
monster:loot({
    {id = 9968, chance = 14285},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=30, attack=50
-- name=physical, interval=2000, chance=25, range=3, min=-35, max=-60, radius=4, areaEffect=poff
-- name=death blob curse, interval=2000, chance=5, range=5
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=5, min=20, max=30, areaEffect=blueshimmer
--]]

monster:register()
