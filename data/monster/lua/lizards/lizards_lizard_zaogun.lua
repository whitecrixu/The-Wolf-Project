-- Lizard Zaogun
-- Auto-converted from XML

local monster = Game.createMonsterType("Lizard Zaogun")
if not monster then return end

monster:name("Lizard Zaogun")
monster:nameDescription("a lizard zaogun")
monster:health(2955)
monster:maxHealth(2955)
monster:experience(1700)
monster:speed(250)
monster:race(RACE_BLOOD)
monster:corpseId(11284)
monster:outfit({lookType = 343})
monster:defense(40)
monster:armor(40)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 5},
    {type = COMBAT_DEATHDAMAGE, percent = 10},
    {type = COMBAT_FIREDAMAGE, percent = 45},
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
    {type = COMBAT_ICEDAMAGE, percent = 15},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Loot
monster:loot({
    {id = 2148, chance = 31500, maxCount = 100},
    {id = 2148, chance = 31500, maxCount = 100},
    {id = 2148, chance = 31000, maxCount = 68},
    {id = 7591, chance = 7000, maxCount = 3},
    {id = 11330, chance = 8280},
    {id = 5881, chance = 12520},
    {id = 11303, chance = 1000},
    {id = 11206, chance = 2170},
    {id = 2152, chance = 48900, maxCount = 2},
    {id = 2149, chance = 4830, maxCount = 5},
    {id = 5876, chance = 14360},
    {id = 7588, chance = 1900},
    {id = 2528, chance = 1000},
    {id = 11304, chance = 1001},
    {id = 11301, chance = 530},
    {id = 11331, chance = 14980},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=75, attack=82
-- name=earth, interval=2000, chance=15, range=7, min=-220, max=-375, radius=1, target=1, shootEffect=poison, areaEffect=poison
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=10, min=175, max=275, areaEffect=greenshimmer
--]]

monster:register()
