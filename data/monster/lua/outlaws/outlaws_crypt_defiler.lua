-- Crypt Defiler
-- Auto-converted from XML

local monster = Game.createMonsterType("Crypt Defiler")
if not monster then return end

monster:name("Crypt Defiler")
monster:nameDescription("a crypt defiler")
monster:health(180)
monster:maxHealth(180)
monster:experience(70)
monster:speed(205)
monster:race(RACE_BLOOD)
monster:corpseId(20359)
monster:outfit({lookType = 146, lookHead = 115, lookBody = 115, lookLegs = 61, lookFeet = 96, lookAddons = 3})
monster:defense(15)
monster:armor(15)
monster:runHealth(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:pushable(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
    {type = COMBAT_FIREDAMAGE, percent = -10},
    {type = COMBAT_ICEDAMAGE, percent = -5},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
})

-- Voices
monster:voices({
    {text = "I smell gold!", yell = false},
    {text = "You'll make a fine fake-mummy to be sold!", yell = false},
    {text = "Untold riches are awaiting me!", yell = false},
    {text = "I don't like competition", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 50900, maxCount = 39},
    {id = 2386, chance = 2730},
    {id = 2398, chance = 1800},
    {id = 2465, chance = 2240},
    {id = 2509, chance = 450},
    {id = 2459, chance = 450},
    {id = 12448, chance = 4040},
    {id = 8838, chance = 4840, maxCount = 3},
    {id = 8267, chance = 220},
    {id = 12412, chance = 1570},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=35, attack=40
-- name=physical, interval=2000, chance=15, range=7, max=-40, radius=1, target=1, shooteffect=throwingstar
--]]

monster:register()
