-- Barbaria
-- Auto-converted from XML

local monster = Game.createMonsterType("Barbaria")
if not monster then return end

monster:name("Barbaria")
monster:nameDescription("barbaria")
monster:health(555)
monster:maxHealth(555)
monster:experience(355)
monster:speed(280)
monster:race(RACE_BLOOD)
monster:corpseId(20339)
monster:outfit({lookType = 264, lookHead = 78, lookBody = 116, lookLegs = 95, lookFeet = 121})
monster:defense(10)
monster:armor(10)
monster:targetDistance(4)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = -20},
    {type = COMBAT_ICEDAMAGE, percent = 50},
    {type = COMBAT_HOLYDAMAGE, percent = 10},
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
    {type = COMBAT_DEATHDAMAGE, percent = -5},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_LIFEDRAIN, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "To me, creatures of the wild!", yell = false},
    {text = "My instincts tell me about your cowardice.", yell = false},
})

-- Summons
monster:summons({
    {name = "War Wolf", chance = 40, interval = 2000, max = 1},
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 35},
    {id = 2464, chance = 11000},
    {id = 3965, chance = 12500},
    {id = 7343, chance = 1000},
    {id = 2050, chance = 25000},
    {id = 1958, chance = 15000},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=60, attack=20
-- name=physical, interval=2000, chance=34, range=7, min=-30, max=-80, radius=1, target=1, shootEffect=snowball
-- name=energy, interval=3000, chance=20, range=7, min=-35, max=-70, shootEffect=fire, areaEffect=energy
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=1000, chance=25, min=50, max=80, areaEffect=blueshimmer
--]]

monster:register()
