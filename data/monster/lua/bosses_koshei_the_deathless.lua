-- Koshei The Deathless
-- Auto-converted from XML

local monster = Game.createMonsterType("Koshei The Deathless")
if not monster then return end

monster:name("Koshei The Deathless")
monster:nameDescription("Koshei The Deathless")
monster:health(2000)
monster:maxHealth(2000)
monster:experience(0)
monster:speed(390)
monster:race(RACE_UNDEAD)
monster:corpseId(6028)
monster:outfit({lookType = 99, lookHead = 95, lookBody = 116, lookLegs = 119, lookFeet = 115})
monster:defense(20)
monster:armor(20)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 80},
    {type = COMBAT_HOLYDAMAGE, percent = -15},
    {type = COMBAT_FIREDAMAGE, percent = -10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Your pain will be beyond imagination!", yell = false},
    {text = "You can't defeat me! I will ressurect and take your soul!", yell = false},
    {text = "Death is my ally!", yell = false},
    {text = "Welcome to my domain, visitor!", yell = false},
    {text = "You will be my toy on the other side!", yell = false},
    {text = "What a disgusting smell of life!", yell = false},
})

-- Summons
monster:summons({
    {name = "bonebeast", chance = 16, interval = 1000, max = 1},
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 100},
    {id = 2401, chance = 10000},
    {id = 2171, chance = 1666},
    {id = 2656, chance = 709},
    {id = 7893, chance = 688},
    {id = 2535, chance = 588},
    {id = 2165, chance = 888},
    {id = 2237, chance = 10000},
    {id = 2148, chance = 100000, maxCount = 12},
    {id = 2175, chance = 10000},
    {id = 2179, chance = 900},
    {id = 3961, chance = 1000},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, min=-90, max=-170
-- name=lifedrain, interval=3000, chance=9, range=1, min=-60, max=-250, areaEffect=blueshimmer
-- name=lifedrain, interval=1000, chance=11, min=-70, max=-135, radius=3, areaEffect=redshimmer
-- name=death, interval=2000, chance=9, min=-50, max=-140, length=8, areaEffect=mortarea
-- name=cursecondition, interval=3000, chance=15, range=1, min=-54, max=-54
-- name=speed, interval=2000, chance=15, range=7, duration=30000, speedchange=-900, areaEffect=redshimmer
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=1000, chance=30, min=150, max=300, areaEffect=blueshimmer
--]]

monster:register()
