-- Souleater
-- Auto-converted from XML

local monster = Game.createMonsterType("Souleater")
if not monster then return end

monster:name("Souleater")
monster:nameDescription("a souleater")
monster:health(1100)
monster:maxHealth(1100)
monster:experience(1300)
monster:speed(200)
monster:race(RACE_UNDEAD)
monster:corpseId(12631)
monster:outfit({lookType = 355})
monster:defense(30)
monster:armor(30)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(80)

-- Resistances
monster:elements({
    {type = COMBAT_HOLYDAMAGE, percent = -10},
    {type = COMBAT_ICEDAMAGE, percent = 50},
    {type = COMBAT_FIREDAMAGE, percent = -10},
    {type = COMBAT_ENERGYDAMAGE, percent = -10},
    {type = COMBAT_PHYSICALDAMAGE, percent = 70},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_CURSED, immunity = true},
})

-- Voices
monster:voices({
    {text = "Life is such a fickle thing!", yell = false},
    {text = "I will devour your soul.", yell = false},
    {text = "Souuuls!", yell = false},
    {text = "I will feed on you.", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 33400, maxCount = 100},
    {id = 2148, chance = 33400, maxCount = 100},
    {id = 2152, chance = 49610, maxCount = 6},
    {id = 2189, chance = 910},
    {id = 12637, chance = 2000},
    {id = 7590, chance = 8000},
    {id = 8473, chance = 9400},
    {id = 12636, chance = 15250},
    {id = 2185, chance = 980},
    {id = 12635, chance = 20},
    {id = 6300, chance = 300},
    {id = 5884, chance = 140},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=60, attack=60
-- name=icicle, interval=2000, chance=20, range=7, min=-50, max=-100, target=1
-- name=souleater drown, interval=2000, chance=10
-- name=death, interval=2000, chance=10, min=-100, max=-200, length=4, spread=3, areaEffect=rednote
-- name=lifedrain, interval=2000, chance=25, min=-30, max=-60, radius=4, areaEffect=redshimmer
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=invisible, interval=2000, chance=5, duration=3000, areaEffect=blueshimmer
-- name=healing, interval=2000, chance=15, min=120, max=125, areaEffect=blueshimmer
--]]

monster:register()
