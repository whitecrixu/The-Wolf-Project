-- Clay Guardian
-- Auto-converted from XML

local monster = Game.createMonsterType("Clay Guardian")
if not monster then return end

monster:name("Clay Guardian")
monster:nameDescription("a clay guardian")
monster:health(625)
monster:maxHealth(625)
monster:experience(400)
monster:speed(210)
monster:race(RACE_UNDEAD)
monster:corpseId(13972)
monster:outfit({lookType = 333})
monster:defense(25)
monster:armor(25)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(60)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 40},
    {type = COMBAT_DEATHDAMAGE, percent = 50},
    {type = COMBAT_ICEDAMAGE, percent = 50},
    {type = COMBAT_FIREDAMAGE, percent = -5},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 100},
    {id = 2148, chance = 50000, maxCount = 63},
    {id = 11222, chance = 25000},
    {id = 2260, chance = 25000},
    {id = 1294, chance = 10000, maxCount = 10},
    {id = 7850, chance = 5555, maxCount = 8},
    {id = 11339, chance = 1100},
    {id = 9970, chance = 320},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=40, attack=50
-- name=earth, interval=2000, chance=20, range=7, min=-30, max=-150, shootEffect=smallearth, areaEffect=greenbubble
-- name=earth, interval=2000, chance=50, min=-20, max=-30, radius=3, areaEffect=poff
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=10, min=40, max=130, areaEffect=blueshimmer
--]]

monster:register()
