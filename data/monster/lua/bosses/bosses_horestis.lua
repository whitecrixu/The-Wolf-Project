-- Horestis
-- Auto-converted from XML

local monster = Game.createMonsterType("Horestis")
if not monster then return end

monster:name("Horestis")
monster:nameDescription("Horestis")
monster:health(6000)
monster:maxHealth(6000)
monster:experience(3500)
monster:speed(280)
monster:race(RACE_UNDEAD)
monster:corpseId(6031)
monster:outfit({lookType = 88})
monster:defense(30)
monster:armor(25)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = 50},
    {type = COMBAT_ICEDAMAGE, percent = 20},
    {type = COMBAT_ENERGYDAMAGE, percent = 5},
    {type = COMBAT_PHYSICALDAMAGE, percent = -5},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_LIFEDRAIN, immunity = true},
})

-- Voices
monster:voices({
    {text = "Feel my eternal wrath!", yell = false},
    {text = "I might be dead but I'm not gone!", yell = false},
    {text = "Receive a lesson of the past!", yell = false},
})

-- Summons
monster:summons({
    {name = "Sandstone Scorpion", chance = 12, interval = 1000, max = 1},
})

-- Loot
monster:loot({
    {id = 13498, chance = 100000},
    {id = 2148, chance = 95000, maxCount = 243},
    {id = 2152, chance = 36000, maxCount = 5},
    {id = 13472, chance = 17000},
    {id = 2159, chance = 14000, maxCount = 5},
    {id = 13739, chance = 12000},
    {id = 2134, chance = 12000},
    {id = 7590, chance = 10000, maxCount = 3},
    {id = 7591, chance = 5000, maxCount = 4},
    {id = 2446, chance = 5000},
    {id = 11207, chance = 2500},
    {id = 9811, chance = 2500},
    {id = 2447, chance = 2500},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-450
-- name=death, interval=1000, chance=12, range=7, min=-200, max=-750, shootEffect=suddendeath, areaEffect=mortarea
-- name=lifedrain, interval=3000, chance=17, min=-400, max=-500, length=8, areaEffect=redshimmer
-- name=drunk, interval=3000, chance=11, radius=6, duration=25000, areaEffect=poison
-- name=speed, interval=1000, chance=25, length=7, spread=3, duration=30000, speedchange=-350, areaEffect=poison
-- name=poisoncondition, interval=2000, chance=30, min=-35, max=-35, radius=5
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=15, min=200, max=400, areaEffect=blueshimmer
--]]

monster:register()
