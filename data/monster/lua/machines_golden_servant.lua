-- Golden Servant
-- Auto-converted from XML

local monster = Game.createMonsterType("Golden Servant")
if not monster then return end

monster:name("Golden Servant")
monster:nameDescription("a golden servant")
monster:health(550)
monster:maxHealth(550)
monster:experience(450)
monster:speed(205)
monster:race(RACE_ENERGY)
monster:corpseId(13489)
monster:outfit({lookType = 396})
monster:defense(20)
monster:armor(20)
monster:runHealth(50)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = 80},
    {type = COMBAT_FIREDAMAGE, percent = 10},
    {type = COMBAT_ICEDAMAGE, percent = 5},
    {type = COMBAT_DEATHDAMAGE, percent = 5},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_DAZZLED, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Error. LOAD 'PROGRAM", yell = false},
    {text = "8,1", yell = false},
    {text = "Remain. Obedient.", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 40000, maxCount = 100},
    {id = 2148, chance = 45000, maxCount = 40},
    {id = 9690, chance = 940},
    {id = 13938, chance = 40},
    {id = 7618, chance = 4930},
    {id = 2466, chance = 10},
    {id = 7620, chance = 4950},
    {id = 2179, chance = 10},
    {id = 13758, chance = 340},
    {id = 8900, chance = 520},
    {id = 2165, chance = 450},
    {id = 2381, chance = 3003},
    {id = 2796, chance = 1450},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=30, attack=50
-- name=energy, interval=2000, chance=15, min=-60, max=-100, radius=4, target=1, shootEffect=energy, areaEffect=yellowenergy
-- name=energy, interval=2000, chance=15, min=-80, max=-110, radius=4, target=1, shootEffect=energy, areaEffect=energy
-- name=energy, interval=2000, chance=10, min=-90, max=-150, length=5, spread=2, areaEffect=yellowenergy
--]]

monster:register()
