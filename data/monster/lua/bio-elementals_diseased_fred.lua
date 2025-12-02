-- Diseased Fred
-- Auto-converted from XML

local monster = Game.createMonsterType("Diseased Fred")
if not monster then return end

monster:name("Diseased Fred")
monster:nameDescription("a diseased fred")
monster:health(1300)
monster:maxHealth(1300)
monster:experience(800)
monster:speed(150)
monster:race(RACE_VENOM)
monster:corpseId(8951)
monster:outfit({lookType = 299})
monster:defense(15)
monster:armor(10)
monster:runHealth(1)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = -20},
    {type = COMBAT_ENERGYDAMAGE, percent = -10},
    {type = COMBAT_EARTHDAMAGE, percent = 30},
    {type = COMBAT_ICEDAMAGE, percent = -5},
    {type = COMBAT_HOLYDAMAGE, percent = -5},
    {type = COMBAT_DEATHDAMAGE, percent = 5},
    {type = COMBAT_FIREDAMAGE, percent = 85},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Tchhh!", yell = false},
    {text = "Slurp!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 28000, maxCount = 65},
    {id = 2148, chance = 28000, maxCount = 64},
    {id = 7591, chance = 5500},
    {id = 2647, chance = 2000},
    {id = 8473, chance = 3500},
    {id = 8472, chance = 3500},
    {id = 8872, chance = 1000},
    {id = 8912, chance = 800},
    {id = 8873, chance = 300},
    {id = 8891, chance = 200},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=59, attack=60
-- name=lifedrain, interval=2000, chance=100, min=-90, max=-140, target=1, areaEffect=redshimmer
-- name=physical, interval=1000, chance=40, min=-100, max=-175, radius=2, shootEffect=smallearth
-- name=paralyze, interval=3000, chance=40, target=1, areaEffect=redshimmer
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=speed, interval=10000, chance=40, duration=20000, speedchange=310, areaEffect=greenshimmer
-- name=healing, interval=5000, chance=60, min=50, max=80, areaEffect=blueshimmer
--]]

monster:register()
