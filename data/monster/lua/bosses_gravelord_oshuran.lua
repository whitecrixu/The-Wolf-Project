-- Gravelord Oshuran
-- Auto-converted from XML

local monster = Game.createMonsterType("Gravelord Oshuran")
if not monster then return end

monster:name("Gravelord Oshuran")
monster:nameDescription("Gravelord Oshuran")
monster:health(3100)
monster:maxHealth(3100)
monster:experience(2400)
monster:speed(220)
monster:race(RACE_UNDEAD)
monster:corpseId(6028)
monster:outfit({lookType = 99, lookHead = 95, lookBody = 116, lookLegs = 119, lookFeet = 115})
monster:defense(25)
monster:armor(25)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(80)

-- Resistances
monster:elements({
    {type = COMBAT_ICEDAMAGE, percent = 35},
    {type = COMBAT_FIREDAMAGE, percent = 10},
    {type = COMBAT_ENERGYDAMAGE, percent = 80},
    {type = COMBAT_HOLYDAMAGE, percent = -10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_LIFEDRAIN, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Your mortality is disgusting!", yell = false},
})

-- Summons
monster:summons({
    {name = "Bonebeast", chance = 10, interval = 2000, max = 1},
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 115},
    {id = 7589, chance = 17500},
    {id = 2144, chance = 15960},
    {id = 2143, chance = 15000},
    {id = 2214, chance = 15040},
    {id = 2656, chance = 500},
    {id = 7893, chance = 900},
    {id = 8904, chance = 300},
    {id = 2175, chance = 4650},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-250
-- name=speed, interval=2000, chance=25, range=7, duration=30000, speedchange=-300, areaEffect=redshimmer
-- name=lifedrain, interval=2000, chance=10, min=-180, max=-300, length=7, areaEffect=redshimmer
-- name=earth, interval=2000, chance=10, min=-100, max=-350, length=7, areaEffect=greenspark
-- name=lifedrain, interval=2000, chance=10, range=1, min=-200, max=-245, target=1, areaEffect=redshimmer
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=3000, chance=15, min=100, max=120, areaEffect=blueshimmer
--]]

monster:register()
