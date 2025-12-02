-- Shaburak Prince
-- Auto-converted from XML

local monster = Game.createMonsterType("Shaburak Prince")
if not monster then return end

monster:name("Shaburak Prince")
monster:nameDescription("a shaburak Prince")
monster:health(2600)
monster:maxHealth(2600)
monster:experience(1700)
monster:speed(240)
monster:race(RACE_FIRE)
monster:corpseId(13969)
monster:outfit({lookType = 418})
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
    {type = COMBAT_ENERGYDAMAGE, percent = 50},
    {type = COMBAT_ICEDAMAGE, percent = 50},
    {type = COMBAT_EARTHDAMAGE, percent = -30},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
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
    {id = 2152, chance = 33333, maxCount = 4},
    {id = 7589, chance = 14285},
    {id = 7588, chance = 14285},
    {id = 2147, chance = 12500, maxCount = 5},
    {id = 2165, chance = 5000},
    {id = 2789, chance = 4545},
    {id = 2187, chance = 892},
    {id = 7443, chance = 714},
    {id = 7899, chance = 714},
    {id = 5904, chance = 534},
    {id = 7412, chance = 357},
    {id = 13530, chance = 178},
    {id = 2645, chance = 89},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=75, attack=75
-- name=fire, interval=2000, chance=20, range=7, min=-40, max=-90, radius=6, shootEffect=fire, areaEffect=fireattack
-- name=fire, interval=2000, chance=15, min=-100, max=-200, length=4, spread=3, areaEffect=fireattack
-- name=fire, interval=2000, chance=10, min=-150, max=-250, length=4, areaEffect=fire
-- name=speed, interval=2000, chance=15, radius=1, target=1, duration=15000, speedchange=-700, areaEffect=redshimmer
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=15, min=100, max=150, areaEffect=blueshimmer
--]]

monster:register()
