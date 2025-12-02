-- Sea Serpent
-- Auto-converted from XML

local monster = Game.createMonsterType("Sea Serpent")
if not monster then return end

monster:name("Sea Serpent")
monster:nameDescription("a sea serpent")
monster:health(1950)
monster:maxHealth(1950)
monster:experience(2300)
monster:speed(350)
monster:race(RACE_BLOOD)
monster:manaCost(390)
monster:corpseId(8307)
monster:outfit({lookType = 275})
monster:defense(45)
monster:armor(45)
monster:targetDistance(0)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(70)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 30},
    {type = COMBAT_ENERGYDAMAGE, percent = -5},
    {type = COMBAT_PHYSICALDAMAGE, percent = -15},
    {type = COMBAT_DEATHDAMAGE, percent = 10},
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
    {id = 2148, chance = 38000, maxCount = 100},
    {id = 2148, chance = 30000, maxCount = 100},
    {id = 2148, chance = 30000, maxCount = 36},
    {id = 2152, chance = 25000, maxCount = 3},
    {id = 2672, chance = 60000, maxCount = 2},
    {id = 10583, chance = 10200},
    {id = 2647, chance = 7150},
    {id = 2146, chance = 5600, maxCount = 3},
    {id = 7588, chance = 5500},
    {id = 7589, chance = 3850},
    {id = 2409, chance = 4200},
    {id = 7590, chance = 920},
    {id = 8870, chance = 2900},
    {id = 2214, chance = 1100},
    {id = 8911, chance = 930},
    {id = 7888, chance = 880},
    {id = 2165, chance = 400},
    {id = 7896, chance = 430},
    {id = 8871, chance = 370},
    {id = 8884, chance = 110},
    {id = 8878, chance = 90},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=40, attack=100
-- name=earth, interval=2000, chance=15, min=-60, max=-300, length=7, spread=2, areaEffect=smallplants
-- name=ice, interval=2000, chance=15, min=-101, max=-300, length=7, spread=2, areaEffect=iceattack
-- name=sea serpent drown, interval=2000, chance=15, range=5
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=30, min=70, max=273, areaEffect=blueshimmer
-- name=speed, interval=2000, chance=15, duration=5000, speedchange=400, areaEffect=redshimmer
--]]

monster:register()
