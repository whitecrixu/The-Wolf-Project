-- Pirate Corsair
-- Auto-converted from XML

local monster = Game.createMonsterType("Pirate Corsair")
if not monster then return end

monster:name("Pirate Corsair")
monster:nameDescription("a pirate corsair")
monster:health(675)
monster:maxHealth(675)
monster:experience(350)
monster:speed(250)
monster:race(RACE_BLOOD)
monster:manaCost(775)
monster:corpseId(20475)
monster:outfit({lookType = 98})
monster:defense(35)
monster:armor(35)
monster:runHealth(40)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isConvinceable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = 20},
    {type = COMBAT_HOLYDAMAGE, percent = 10},
    {type = COMBAT_DEATHDAMAGE, percent = -5},
    {type = COMBAT_ICEDAMAGE, percent = -5},
    {type = COMBAT_FIREDAMAGE, percent = -10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Give up!", yell = false},
    {text = "Hiyaa!", yell = false},
    {text = "Plundeeeeer!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 88},
    {id = 2489, chance = 1650},
    {id = 2385, chance = 10000},
    {id = 2376, chance = 3000},
    {id = 2521, chance = 1000},
    {id = 2399, chance = 8400, maxCount = 12},
    {id = 5926, chance = 930},
    {id = 6097, chance = 600},
    {id = 6126, chance = 600},
    {id = 6098, chance = 500},
    {id = 7588, chance = 820},
    {id = 5813, chance = 130},
    {id = 6096, chance = 1150},
    {id = 5462, chance = 220},
    {id = 2114, chance = 150},
    {id = 11219, chance = 11050},
    {id = 5553, chance = 130},
    {id = 11219, chance = 11020},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=75, attack=40
-- name=physical, interval=2000, chance=20, range=7, max=-150, shootEffect=throwingstar
-- name=pirate corsair skill reducer, interval=2000, chance=5
--]]

monster:register()
