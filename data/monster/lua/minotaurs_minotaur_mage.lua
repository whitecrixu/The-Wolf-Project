-- Minotaur Mage
-- Auto-converted from XML

local monster = Game.createMonsterType("Minotaur Mage")
if not monster then return end

monster:name("Minotaur Mage")
monster:nameDescription("a minotaur mage")
monster:health(155)
monster:maxHealth(155)
monster:experience(150)
monster:speed(170)
monster:race(RACE_BLOOD)
monster:corpseId(5981)
monster:outfit({lookType = 23})
monster:defense(15)
monster:armor(15)
monster:targetDistance(4)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
    {type = COMBAT_EARTHDAMAGE, percent = 20},
    {type = COMBAT_HOLYDAMAGE, percent = 10},
    {type = COMBAT_ICEDAMAGE, percent = -10},
    {type = COMBAT_DEATHDAMAGE, percent = -10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Learrn tha secrret uf deathhh!", yell = false},
    {text = "Kaplar!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 85780, maxCount = 35},
    {id = 2684, chance = 15003, maxCount = 8},
    {id = 2050, chance = 4950},
    {id = 2649, chance = 5190},
    {id = 2461, chance = 3000},
    {id = 5878, chance = 2290},
    {id = 7425, chance = 1000},
    {id = 2189, chance = 600},
    {id = 7620, chance = 490},
    {id = 12428, chance = 3020, maxCount = 2},
    {id = 12429, chance = 6430, maxCount = 2},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=10, attack=20
-- name=energy, interval=2000, chance=15, range=7, min=-20, max=-59, shootEffect=energy, areaEffect=energy
-- name=fire, interval=2000, chance=15, range=7, min=-50, max=-105, radius=1, target=1, shootEffect=fire, areaEffect=firearea
-- name=energyfield, interval=2000, chance=10, range=7, radius=1, target=1, shootEffect=energyball
--]]

monster:register()
