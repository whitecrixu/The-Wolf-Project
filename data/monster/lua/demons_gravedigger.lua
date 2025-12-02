-- Gravedigger
-- Auto-converted from XML

local monster = Game.createMonsterType("Gravedigger")
if not monster then return end

monster:name("Gravedigger")
monster:nameDescription("a gravedigger")
monster:health(1500)
monster:maxHealth(1500)
monster:experience(950)
monster:speed(230)
monster:race(RACE_BLOOD)
monster:corpseId(21279)
monster:outfit({lookType = 558})
monster:defense(20)
monster:armor(20)
monster:runHealth(200)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(70)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = -5},
    {type = COMBAT_FIREDAMAGE, percent = -10},
    {type = COMBAT_HOLYDAMAGE, percent = -5},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FREEZING, immunity = true},
    {condition = CONDITION_ENERGY, immunity = true},
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "High Five!", yell = false},
    {text = "scrabble", yell = false},
    {text = "Put it there!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 137},
    {id = 2152, chance = 24470},
    {id = 11233, chance = 9570},
    {id = 2268, chance = 7300},
    {id = 12449, chance = 6000},
    {id = 2187, chance = 5590},
    {id = 12440, chance = 6650},
    {id = 7588, chance = 2260, maxCount = 2},
    {id = 7589, chance = 3600, maxCount = 2},
    {id = 2154, chance = 800},
    {id = 6300, chance = 800},
    {id = 2436, chance = 130},
    {id = 10609, chance = 100},
    {id = 5669, chance = 100},
    {id = 5925, chance = 50},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=70, attack=80
-- name=manadrain, interval=2000, chance=10, range=1, min=-40, max=-250, areaEffect=blueshimmer
-- name=death, interval=2000, chance=15, range=1, min=-175, max=-300, shootEffect=death
-- name=drunk, interval=2000, chance=10, radius=5, duration=4000, areaEffect=smallclouds
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=invisible, interval=2000, chance=15, duration=5000, areaEffect=redshimmer
-- name=healing, interval=2000, chance=20, min=100, max=250, areaEffect=blueshimmer
-- name=speed, interval=2000, chance=15, duration=5000, speedchange=420, areaEffect=redshimmer
--]]

monster:register()
