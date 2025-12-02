-- Diamond Servant
-- Auto-converted from XML

local monster = Game.createMonsterType("Diamond Servant")
if not monster then return end

monster:name("Diamond Servant")
monster:nameDescription("a diamond servant")
monster:health(1000)
monster:maxHealth(1000)
monster:experience(700)
monster:speed(210)
monster:race(RACE_ENERGY)
monster:corpseId(13485)
monster:outfit({lookType = 397})
monster:defense(25)
monster:armor(25)
monster:runHealth(100)

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
    {type = COMBAT_ICEDAMAGE, percent = -5},
    {type = COMBAT_DEATHDAMAGE, percent = -5},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_ENERGY, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Error. LOAD 'PROGRAM',8,1", yell = false},
    {text = "Remain. Obedient.", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 44000, maxCount = 100},
    {id = 2148, chance = 50000, maxCount = 79},
    {id = 5944, chance = 45000},
    {id = 2177, chance = 9150},
    {id = 7589, chance = 5980},
    {id = 7588, chance = 5790},
    {id = 9976, chance = 5320},
    {id = 9690, chance = 5000},
    {id = 10572, chance = 5000},
    {id = 2164, chance = 940},
    {id = 7889, chance = 710},
    {id = 2154, chance = 550},
    {id = 2189, chance = 530},
    {id = 13758, chance = 480},
    {id = 7440, chance = 400},
    {id = 10221, chance = 110},
    {id = 8878, chance = 20},
    {id = 7428, chance = 10},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=30, attack=50
-- name=energy, interval=2000, chance=20, min=-80, max=-120, radius=3, areaEffect=yellowenergy
-- name=energy, interval=2000, chance=15, min=-125, max=-170, length=5, spread=2, shootEffect=energy, areaEffect=energy
-- name=drunk, interval=2000, chance=10, range=7, target=1, duration=3000, shootEffect=death, areaEffect=stun
--]]

monster:register()
