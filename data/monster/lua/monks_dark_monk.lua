-- Dark Monk
-- Auto-converted from XML

local monster = Game.createMonsterType("Dark Monk")
if not monster then return end

monster:name("Dark Monk")
monster:nameDescription("a dark monk")
monster:health(190)
monster:maxHealth(190)
monster:experience(145)
monster:speed(210)
monster:race(RACE_BLOOD)
monster:corpseId(20371)
monster:outfit({lookType = 225})
monster:defense(25)
monster:armor(25)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_DEATHDAMAGE, percent = 40},
    {type = COMBAT_HOLYDAMAGE, percent = -10},
    {type = COMBAT_PHYSICALDAMAGE, percent = -20},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "You are no match to us!", yell = false},
    {text = "This is where your path will end!", yell = false},
    {text = "Your end has come!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 14600, maxCount = 18},
    {id = 2193, chance = 900},
    {id = 2689, chance = 20550},
    {id = 2015, chance = 380},
    {id = 10563, chance = 1900},
    {id = 2044, chance = 550},
    {id = 12448, chance = 6666},
    {id = 12449, chance = 990},
    {id = 2177, chance = 990},
    {id = 7620, chance = 790},
    {id = 2166, chance = 120},
    {id = 11220, chance = 10500},
    {id = 1949, chance = 1790},
    {id = 2642, chance = 890},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=30, attack=50
-- name=lifedrain, interval=2000, chance=15, range=1, min=-20, max=-50, areaEffect=redshimmer
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=15, min=25, max=49, areaEffect=blueshimmer
-- name=speed, interval=2000, chance=15, duration=6000, speedchange=300, areaEffect=redshimmer
--]]

monster:register()
