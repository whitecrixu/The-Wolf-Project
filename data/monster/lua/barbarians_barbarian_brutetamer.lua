-- Barbarian Brutetamer
-- Auto-converted from XML

local monster = Game.createMonsterType("Barbarian Brutetamer")
if not monster then return end

monster:name("Barbarian Brutetamer")
monster:nameDescription("a barbarian brutetamer")
monster:health(145)
monster:maxHealth(145)
monster:experience(90)
monster:speed(190)
monster:race(RACE_BLOOD)
monster:corpseId(20339)
monster:outfit({lookType = 264, lookHead = 78, lookBody = 116, lookLegs = 95, lookFeet = 121})
monster:defense(10)
monster:armor(10)
monster:targetDistance(4)
monster:runHealth(10)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ICEDAMAGE, percent = 50},
    {type = COMBAT_HOLYDAMAGE, percent = 10},
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
    {type = COMBAT_PHYSICALDAMAGE, percent = -20},
    {type = COMBAT_DEATHDAMAGE, percent = -1},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_LIFEDRAIN, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
})

-- Voices
monster:voices({
    {text = "To me, creatures of the wild!", yell = false},
    {text = "My instincts tell me about your cowardice.", yell = false},
})

-- Summons
monster:summons({
    {name = "War Wolf", chance = 10, interval = 2000, max = 1},
})

-- Loot
monster:loot({
    {id = 2148, chance = 58000, maxCount = 15},
    {id = 3965, chance = 5250},
    {id = 2686, chance = 11000, maxCount = 2},
    {id = 2464, chance = 8900},
    {id = 2401, chance = 6500},
    {id = 7343, chance = 7540},
    {id = 1958, chance = 5000},
    {id = 7620, chance = 630},
    {id = 7379, chance = 380},
    {id = 7457, chance = 160},
    {id = 7464, chance = 90},
    {id = 7463, chance = 160},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=10, attack=20
-- name=physical, interval=2000, chance=20, range=7, max=-34, radius=1, target=1, shootEffect=snowball
-- name=barbarian brutetamer skill reducer, interval=2000, chance=15, range=5
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=40, min=50, max=80, areaEffect=blueshimmer
--]]

monster:register()
