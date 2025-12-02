-- Earth Elemental
-- Auto-converted from XML

local monster = Game.createMonsterType("Earth Elemental")
if not monster then return end

monster:name("Earth Elemental")
monster:nameDescription("an earth elemental")
monster:health(650)
monster:maxHealth(650)
monster:experience(450)
monster:speed(220)
monster:race(RACE_UNDEAD)
monster:corpseId(8933)
monster:outfit({lookType = 301})
monster:defense(25)
monster:armor(25)
monster:runHealth(80)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(80)

-- Resistances
monster:elements({
    {type = COMBAT_DEATHDAMAGE, percent = 50},
    {type = COMBAT_ICEDAMAGE, percent = 85},
    {type = COMBAT_PHYSICALDAMAGE, percent = 50},
    {type = COMBAT_HOLYDAMAGE, percent = 50},
    {type = COMBAT_FIREDAMAGE, percent = -25},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_ENERGY, immunity = true},
})

-- Loot
monster:loot({
    {id = 2148, chance = 43000, maxCount = 100},
    {id = 2148, chance = 50000, maxCount = 30},
    {id = 11222, chance = 20460},
    {id = 7850, chance = 20160, maxCount = 30},
    {id = 2260, chance = 10000},
    {id = 7589, chance = 1910},
    {id = 11339, chance = 570},
    {id = 13757, chance = 470},
    {id = 9808, chance = 350},
    {id = 1294, chance = 10000, maxCount = 10},
    {id = 9970, chance = 620},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=45, attack=40
-- name=earth, interval=2000, chance=10, range=7, min=-72, max=-105, target=1, shootEffect=smallearth, areaEffect=greenbubble
-- name=physical, interval=2000, chance=10, range=7, max=-100, radius=2, target=1, shootEffect=largerock, areaEffect=poff
-- name=poisoncondition, interval=2000, chance=20, min=-200, max=-260, length=6, areaEffect=bigplants
-- name=poisoncondition, interval=2000, chance=10, min=-100, max=-140, radius=5, shootEffect=poison, areaEffect=poison
-- name=speed, interval=2000, chance=10, range=5, target=1, duration=5000, speedchange=-330, areaEffect=smallplants
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=5, min=60, max=80, areaEffect=blueshimmer
--]]

monster:register()
