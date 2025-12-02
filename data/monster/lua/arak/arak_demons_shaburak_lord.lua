-- Shaburak Lord
-- Auto-converted from XML

local monster = Game.createMonsterType("Shaburak Lord")
if not monster then return end

monster:name("Shaburak Lord")
monster:nameDescription("a shaburak lord")
monster:health(2100)
monster:maxHealth(2100)
monster:experience(1200)
monster:speed(230)
monster:race(RACE_FIRE)
monster:corpseId(13958)
monster:outfit({lookType = 409})
monster:defense(20)
monster:armor(20)

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
    {text = "ONLY WE ARE TRUE DEMONS!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 100},
    {id = 2148, chance = 50000, maxCount = 78},
    {id = 2152, chance = 33333, maxCount = 2},
    {id = 7589, chance = 7000},
    {id = 7588, chance = 7000},
    {id = 2147, chance = 6120, maxCount = 5},
    {id = 2789, chance = 5346},
    {id = 2167, chance = 1652},
    {id = 7443, chance = 400},
    {id = 2187, chance = 800},
    {id = 5904, chance = 620},
    {id = 7899, chance = 100},
    {id = 2645, chance = 160},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=67, attack=65
-- name=fire, interval=2000, chance=20, range=7, min=-30, max=-75, radius=6, shootEffect=fire, areaEffect=fireattack
-- name=fire, interval=2000, chance=15, min=-80, max=-170, length=4, spread=3, areaEffect=fire
-- name=fire, interval=2000, chance=10, min=-140, max=-200, length=4, areaEffect=fireattack
-- name=speed, interval=2000, chance=10, radius=1, target=1, duration=15000, speedchange=-650, areaEffect=redshimmer
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=5, min=100, max=150, areaEffect=blueshimmer
--]]

monster:register()
