-- Lizard High Guard
-- Auto-converted from XML

local monster = Game.createMonsterType("Lizard High Guard")
if not monster then return end

monster:name("Lizard High Guard")
monster:nameDescription("a lizard high guard")
monster:health(1800)
monster:maxHealth(1800)
monster:experience(1450)
monster:speed(240)
monster:race(RACE_BLOOD)
monster:corpseId(11272)
monster:outfit({lookType = 337})
monster:defense(35)
monster:armor(35)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ICEDAMAGE, percent = -10},
    {type = COMBAT_PHYSICALDAMAGE, percent = 5},
    {type = COMBAT_FIREDAMAGE, percent = 45},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Hizzzzzzz!", yell = false},
    {text = "To armzzzz!", yell = false},
    {text = "Engage zze aggrezzor!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 32000, maxCount = 100},
    {id = 2148, chance = 32000, maxCount = 100},
    {id = 2148, chance = 32000, maxCount = 27},
    {id = 2152, chance = 4900, maxCount = 2},
    {id = 2528, chance = 1040},
    {id = 11332, chance = 2990},
    {id = 11303, chance = 700},
    {id = 5876, chance = 1000},
    {id = 11333, chance = 8150},
    {id = 5881, chance = 970},
    {id = 11325, chance = 7000},
    {id = 2149, chance = 2520, maxCount = 4},
    {id = 7588, chance = 11925},
    {id = 11245, chance = 4950},
    {id = 7591, chance = 7070},
    {id = 11206, chance = 1220},
    {id = 11304, chance = 720},
    {id = 11301, chance = 80},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=75, attack=72
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=10, min=25, max=75, areaEffect=greenshimmer
--]]

monster:register()
