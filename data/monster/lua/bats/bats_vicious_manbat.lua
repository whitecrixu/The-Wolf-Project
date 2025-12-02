-- Vicious Manbat
-- Auto-converted from XML

local monster = Game.createMonsterType("Vicious Manbat")
if not monster then return end

monster:name("Vicious Manbat")
monster:nameDescription("a vicious manbat")
monster:health(1700)
monster:maxHealth(1700)
monster:experience(1200)
monster:speed(220)
monster:race(RACE_BLOOD)
monster:corpseId(21266)
monster:outfit({lookType = 554})
monster:defense(35)
monster:armor(35)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(70)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 5},
    {type = COMBAT_ENERGYDAMAGE, percent = 5},
    {type = COMBAT_ICEDAMAGE, percent = 5},
    {type = COMBAT_FIREDAMAGE, percent = -5},
    {type = COMBAT_HOLYDAMAGE, percent = -5},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 100},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-215
-- name=physical, interval=2000, chance=15, min=-100, max=-250, radius=3, areaEffect=redspark
-- name=speed, interval=2000, chance=15, radius=1, target=1, speedchange=-400, areaEffect=bats
-- name=bleedcondition, interval=2000, chance=20, min=-400, max=-600, radius=2, areaEffect=redspark
--]]

monster:register()
