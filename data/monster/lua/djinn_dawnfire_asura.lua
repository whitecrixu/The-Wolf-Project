-- Dawnfire Asura
-- Auto-converted from XML

local monster = Game.createMonsterType("Dawnfire Asura")
if not monster then return end

monster:name("Dawnfire Asura")
monster:nameDescription("a dawnfire asura")
monster:health(2900)
monster:maxHealth(2900)
monster:experience(4100)
monster:speed(190)
monster:race(RACE_BLOOD)
monster:corpseId(6081)
monster:outfit({lookType = 150, lookHead = 114, lookBody = 94, lookLegs = 78, lookFeet = 79})
monster:defense(45)
monster:armor(55)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 100},
    {type = COMBAT_ICEDAMAGE, percent = -10},
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
    {type = COMBAT_EARTHDAMAGE, percent = 10},
    {type = COMBAT_HOLYDAMAGE, percent = -5},
    {type = COMBAT_DEATHDAMAGE, percent = 10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "I will bring judgment on you!", yell = false},
    {text = "Dawn comes with fire!", yell = false},
    {text = "Feel the heat of dawn!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 80000, maxCount = 197},
    {id = 2152, chance = 25000, maxCount = 4},
    {id = 7643, chance = 12000},
    {id = 7642, chance = 10000},
    {id = 5911, chance = 5000},
    {id = 2146, chance = 7500},
    {id = 2149, chance = 7000},
    {id = 2150, chance = 6500},
    {id = 2156, chance = 2000},
    {id = 5944, chance = 3000},
    {id = 6299, chance = 1500},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=70, attack=100
-- name=fire, interval=2000, chance=20, range=7, min=-200, max=-400, shootEffect=fire, areaEffect=firearea
-- name=energy, interval=2000, chance=15, range=7, min=-150, max=-300, shootEffect=energyball
-- name=firefield, interval=2000, chance=10, range=7, radius=3, target=1, shootEffect=fire
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=20, min=100, max=200, areaEffect=blueshimmer
--]]

monster:register()
