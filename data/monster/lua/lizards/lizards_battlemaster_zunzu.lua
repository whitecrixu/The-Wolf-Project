-- Battlemaster Zunzu
-- Auto-converted from XML

local monster = Game.createMonsterType("Battlemaster Zunzu")
if not monster then return end

monster:name("Battlemaster Zunzu")
monster:nameDescription("a battlemaster zunzu")
monster:health(5000)
monster:maxHealth(5000)
monster:experience(6500)
monster:speed(420)
monster:race(RACE_BLOOD)
monster:corpseId(11281)
monster:outfit({lookType = 343})
monster:defense(35)
monster:armor(45)
monster:runHealth(150)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 15},
    {type = COMBAT_DEATHDAMAGE, percent = 10},
    {type = COMBAT_FIREDAMAGE, percent = 25},
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
    {type = COMBAT_ICEDAMAGE, percent = 15},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Loot
monster:loot({
    {id = 2152, chance = 26800, maxCount = 3},
    {id = 11206, chance = 100000},
    {id = 11331, chance = 100000},
    {id = 11303, chance = 3150},
    {id = 11330, chance = 11250},
    {id = 7588, chance = 2875, maxCount = 2},
    {id = 5881, chance = 800},
    {id = 7591, chance = 2775, maxCount = 2},
    {id = 11304, chance = 2625},
    {id = 5876, chance = 1825},
    {id = 11301, chance = 1050},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=65, attack=80
-- name=earth, interval=2000, chance=25, range=1, min=-115, max=-350, radius=1, target=1, areaEffect=poison
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=1000, chance=18, min=200, max=400, areaEffect=blueshimmer
--]]

monster:register()
