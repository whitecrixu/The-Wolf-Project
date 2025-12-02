-- Mooh'Tah Warrior
-- Auto-converted from XML

local monster = Game.createMonsterType("Mooh'Tah Warrior")
if not monster then return end

monster:name("Mooh'Tah Warrior")
monster:nameDescription("a mooh'tah warrior")
monster:health(1200)
monster:maxHealth(1200)
monster:experience(900)
monster:speed(220)
monster:race(RACE_BLOOD)
monster:corpseId(23462)
monster:outfit({lookType = 611})
monster:defense(30)
monster:armor(30)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 1},
    {type = COMBAT_FIREDAMAGE, percent = 1},
    {type = COMBAT_ENERGYDAMAGE, percent = 3},
    {type = COMBAT_ICEDAMAGE, percent = 10},
    {type = COMBAT_EARTHDAMAGE, percent = 1},
    {type = COMBAT_DEATHDAMAGE, percent = 1},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Feel the power of the Mooh'Tah!", yell = false},
    {text = "Ommm!", yell = false},
    {text = "I am at peace and you are dead!", yell = false},
    {text = "There is no rage, there is only control!", yell = false},
    {text = "You will not disrupt my inner balance!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 120},
    {id = 2152, chance = 39860, maxCount = 3},
    {id = 23573, chance = 15030},
    {id = 7589, chance = 7110},
    {id = 7588, chance = 6390},
    {id = 5878, chance = 5530},
    {id = 2147, chance = 5470},
    {id = 2149, chance = 5280},
    {id = 2150, chance = 5200},
    {id = 9970, chance = 4760},
    {id = 12428, chance = 4710, maxCount = 2},
    {id = 23548, chance = 1380},
    {id = 2207, chance = 1110},
    {id = 23537, chance = 1090},
    {id = 2515, chance = 1020},
    {id = 2477, chance = 710},
    {id = 5911, chance = 650},
    {id = 2476, chance = 490},
    {id = 7401, chance = 150},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=45, attack=80
-- name=energy, interval=2000, chance=14, min=-150, max=-200, length=4, areaEffect=yellowenergy
-- name=physical, interval=2000, chance=11, range=7, min=-0, max=-135, areaEffect=explosionarea, shootEffect=largerock
-- name=lifedrain, interval=2000, chance=15, min=-50, max=-150, radius=3, areaEffect=blackspark
-- name=mooh'tah master skill reducer, interval=2000, chance=19, range=7
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=22, min=110, max=160, areaEffect=blueshimmer
-- name=haste, interval=2000, chance=8, duration=1000, speedchange=220, areaEffect=redshimmer
--]]

monster:register()
