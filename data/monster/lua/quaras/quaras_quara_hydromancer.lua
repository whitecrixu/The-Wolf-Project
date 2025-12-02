-- Quara Hydromancer
-- Auto-converted from XML

local monster = Game.createMonsterType("Quara Hydromancer")
if not monster then return end

monster:name("Quara Hydromancer")
monster:nameDescription("a quara hydromancer")
monster:health(1100)
monster:maxHealth(1100)
monster:experience(800)
monster:speed(250)
monster:race(RACE_BLOOD)
monster:corpseId(6066)
monster:outfit({lookType = 47})
monster:defense(15)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = -10},
    {type = COMBAT_ENERGYDAMAGE, percent = -25},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_LIFEDRAIN, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_DROWN, immunity = true},
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_FREEZING, immunity = true},
})

-- Voices
monster:voices({
    {text = "Qua hah tsh!", yell = false},
    {text = "Teech tsha tshul!", yell = false},
    {text = "Quara tsha Fach!", yell = false},
    {text = "Tssssha Quara!", yell = false},
    {text = "Blubber.", yell = false},
    {text = "Blup.", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 50},
    {id = 2148, chance = 50000, maxCount = 60},
    {id = 12444, chance = 15930},
    {id = 2670, chance = 4545, maxCount = 5},
    {id = 2144, chance = 3150},
    {id = 2143, chance = 5250},
    {id = 2149, chance = 5111, maxCount = 2},
    {id = 2189, chance = 900},
    {id = 7590, chance = 3100},
    {id = 5895, chance = 1280},
    {id = 2214, chance = 1008},
    {id = 2476, chance = 200},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=30, attack=40
-- name=ice, interval=2000, chance=10, min=-100, max=-180, length=8, areaEffect=bubbles
-- name=ice, interval=2000, chance=10, min=-90, max=-150, radius=3, areaEffect=bubbles
-- name=lifedrain, interval=2000, chance=10, min=-170, max=-240, length=8, areaEffect=greenspark
-- name=lifedrain, interval=2000, chance=15, range=7, max=-170, target=1, areaEffect=redshimmer
-- name=speed, interval=2000, chance=15, range=7, duration=15000, speedchange=-600, areaEffect=redshimmer
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=15, min=100, max=120, areaEffect=blueshimmer
--]]

monster:register()
