-- Death Priest
-- Auto-converted from XML

local monster = Game.createMonsterType("Death Priest")
if not monster then return end

monster:name("Death Priest")
monster:nameDescription("a death priest")
monster:health(800)
monster:maxHealth(800)
monster:experience(750)
monster:speed(220)
monster:race(RACE_UNDEAD)
monster:corpseId(13975)
monster:outfit({lookType = 99, lookHead = 95, lookBody = 116, lookLegs = 119, lookFeet = 115})
monster:defense(20)
monster:armor(20)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(70)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 75},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Loot
monster:loot({
    {id = 2148, chance = 70000, maxCount = 144},
    {id = 13739, chance = 27000},
    {id = 7618, chance = 15000},
    {id = 7620, chance = 15000},
    {id = 2159, chance = 10000, maxCount = 3},
    {id = 2175, chance = 6800},
    {id = 5022, chance = 6000, maxCount = 4},
    {id = 2143, chance = 3000},
    {id = 2214, chance = 1000},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-80
-- name=death, interval=2000, chance=20, range=7, min=-120, max=-250, target=1, shootEffect=death, areaEffect=mortarea
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=20, min=80, max=200, areaEffect=blueshimmer
--]]

monster:register()
