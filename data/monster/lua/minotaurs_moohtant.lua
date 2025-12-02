-- Moohtant
-- Auto-converted from XML

local monster = Game.createMonsterType("Moohtant")
if not monster then return end

monster:name("Moohtant")
monster:nameDescription("a moohtant")
monster:health(3200)
monster:maxHealth(3200)
monster:experience(2600)
monster:speed(260)
monster:race(RACE_BLOOD)
monster:corpseId(23367)
monster:outfit({lookType = 607})
monster:defense(45)
monster:armor(40)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 1},
    {type = COMBAT_ICEDAMAGE, percent = 15},
    {type = COMBAT_FIREDAMAGE, percent = 1},
    {type = COMBAT_DEATHDAMAGE, percent = 1},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "MOOOOH!", yell = true},
    {text = "Grrrr.", yell = false},
    {text = "Raaaargh!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 195},
    {id = 2152, chance = 58160, maxCount = 2},
    {id = 23554, chance = 15740, maxCount = 2},
    {id = 23570, chance = 11770},
    {id = 7591, chance = 7380, maxCount = 3},
    {id = 7590, chance = 7230, maxCount = 3},
    {id = 2666, chance = 6520},
    {id = 2147, chance = 4680, maxCount = 2},
    {id = 5878, chance = 4110},
    {id = 2145, chance = 4400, maxCount = 2},
    {id = 2214, chance = 2410},
    {id = 5911, chance = 1700},
    {id = 23544, chance = 1560},
    {id = 2156, chance = 850},
    {id = 2154, chance = 710},
    {id = 7452, chance = 430},
    {id = 7427, chance = 280},
    {id = 9971, chance = 280},
    {id = 7401, chance = 280},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=110, attack=50
-- name=physical, interval=2000, chance=13, min=-100, max=-230, length=3, areaEffect=groundshaker
-- name=physical, interval=2000, chance=12, min=-100, max=-200, radius=3, areaEffect=groundshaker
-- name=lifedrain, interval=2000, chance=19, min=-50, max=-225, radius=5, areaEffect=redshimmer
-- name=lifedrain, interval=2000, chance=10, range=7, min=-150, max=-235, radius=4, target=1, shootEffect=largerock, areaEffect=explosionarea
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=9, min=50, max=150, areaEffect=blueshimmer
--]]

monster:register()
