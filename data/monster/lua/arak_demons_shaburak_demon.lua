-- Shaburak Demon
-- Auto-converted from XML

local monster = Game.createMonsterType("Shaburak Demon")
if not monster then return end

monster:name("Shaburak Demon")
monster:nameDescription("a shaburak demon")
monster:health(1500)
monster:maxHealth(1500)
monster:experience(900)
monster:speed(220)
monster:race(RACE_FIRE)
monster:corpseId(13814)
monster:outfit({lookType = 417})
monster:defense(15)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(80)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 50},
    {type = COMBAT_ICEDAMAGE, percent = 50},
    {type = COMBAT_EARTHDAMAGE, percent = -30},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "GREEN IS MEAN!", yell = true},
    {text = "WE RULE!", yell = true},
    {text = "POWER TO THE SHABURAK!", yell = true},
    {text = "DEATH TO THE ASKARAK!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 100},
    {id = 2148, chance = 50000, maxCount = 100},
    {id = 2148, chance = 50000, maxCount = 50},
    {id = 7378, chance = 10000, maxCount = 6},
    {id = 7589, chance = 5000},
    {id = 7588, chance = 4761},
    {id = 2147, chance = 4761, maxCount = 5},
    {id = 2789, chance = 3846},
    {id = 2167, chance = 1052},
    {id = 2114, chance = 1030},
    {id = 7443, chance = 628},
    {id = 2187, chance = 564},
    {id = 7894, chance = 155},
    {id = 5904, chance = 81},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=40, attack=45
-- name=fire, interval=2000, chance=20, range=7, min=-20, max=-60, radius=6, shootEffect=fire, areaEffect=fireattack
-- name=fire, interval=2000, chance=15, min=-70, max=-140, length=4, spread=3, areaEffect=fire
-- name=fire, interval=2000, chance=10, min=-130, max=-170, length=4, areaEffect=fireattack
-- name=speed, interval=2000, chance=10, radius=1, target=1, duration=15000, speedchange=-600, areaEffect=redshimmer
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=5, min=100, max=150, areaEffect=blueshimmer
--]]

monster:register()
