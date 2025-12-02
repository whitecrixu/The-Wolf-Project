-- Young Sea Serpent
-- Auto-converted from XML

local monster = Game.createMonsterType("Young Sea Serpent")
if not monster then return end

monster:name("Young Sea Serpent")
monster:nameDescription("a young sea serpent")
monster:health(1050)
monster:maxHealth(1050)
monster:experience(1000)
monster:speed(320)
monster:race(RACE_BLOOD)
monster:manaCost(390)
monster:corpseId(9879)
monster:outfit({lookType = 317})
monster:defense(30)
monster:armor(30)
monster:targetDistance(0)
monster:runHealth(400)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(85)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 30},
    {type = COMBAT_ENERGYDAMAGE, percent = -10},
    {type = COMBAT_PHYSICALDAMAGE, percent = -15},
    {type = COMBAT_DEATHDAMAGE, percent = -15},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FREEZING, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_DROWN, immunity = true},
})

-- Voices
monster:voices({
    {text = "CHHHRRRR", yell = false},
    {text = "HISSSS", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 100},
    {id = 2148, chance = 48000, maxCount = 74},
    {id = 2146, chance = 1900, maxCount = 2},
    {id = 2165, chance = 1000},
    {id = 7589, chance = 4000},
    {id = 7588, chance = 5000},
    {id = 9809, chance = 7940},
    {id = 9808, chance = 7940},
    {id = 2394, chance = 40000},
    {id = 2177, chance = 300},
    {id = 2417, chance = 5000},
    {id = 2378, chance = 8000},
    {id = 10583, chance = 5000},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=40, attack=80
-- name=earth, interval=2000, chance=10, min=-10, max=-250, length=7, spread=2, areaEffect=smallplants
-- name=ice, interval=2000, chance=10, min=-80, max=-250, length=7, spread=2, areaEffect=iceattack
-- name=young sea serpent drown, interval=2000, chance=15, range=5
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=30, min=25, max=175, areaEffect=blueshimmer
-- name=speed, interval=2000, chance=15, duration=5000, speedchange=400, areaEffect=redshimmer
--]]

monster:register()
