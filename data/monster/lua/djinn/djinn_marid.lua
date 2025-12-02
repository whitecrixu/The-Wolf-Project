-- Marid
-- Auto-converted from XML

local monster = Game.createMonsterType("Marid")
if not monster then return end

monster:name("Marid")
monster:nameDescription("a marid")
monster:health(550)
monster:maxHealth(550)
monster:experience(410)
monster:speed(180)
monster:race(RACE_BLOOD)
monster:corpseId(6033)
monster:outfit({lookType = 104})
monster:defense(20)
monster:armor(20)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 90},
    {type = COMBAT_EARTHDAMAGE, percent = 1},
    {type = COMBAT_ENERGYDAMAGE, percent = 60},
    {type = COMBAT_HOLYDAMAGE, percent = 1},
    {type = COMBAT_ICEDAMAGE, percent = -1},
    {type = COMBAT_DEATHDAMAGE, percent = -1},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Simsalabim", yell = false},
    {text = "Feel the power of my magic, tiny mortal!", yell = false},
    {text = "Wishes can come true.", yell = false},
    {text = "Djinns will soon again be the greatest!", yell = false},
})

-- Summons
monster:summons({
    {name = "blue djinn", chance = 10, interval = 2000, max = 2},
})

-- Loot
monster:loot({
    {id = 2148, chance = 60000, maxCount = 70},
    {id = 2148, chance = 60000, maxCount = 30},
    {id = 2677, chance = 65000, maxCount = 29},
    {id = 7378, chance = 15500, maxCount = 3},
    {id = 2442, chance = 4530},
    {id = 2063, chance = 110},
    {id = 1872, chance = 2560},
    {id = 2146, chance = 6200},
    {id = 7589, chance = 9800},
    {id = 5912, chance = 3750},
    {id = 2374, chance = 5000},
    {id = 7732, chance = 2400},
    {id = 2183, chance = 770},
    {id = 2663, chance = 290},
    {id = 12442, chance = 530},
    {id = 12426, chance = 7880},
    {id = 7900, chance = 320},
    {id = 2158, chance = 110},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=50, attack=30
-- name=energy, interval=2000, chance=10, range=7, min=-100, max=-250, shootEffect=energyball
-- name=lifedrain, interval=2000, chance=15, range=7, min=-30, max=-90, areaEffect=redshimmer
-- name=speed, interval=2000, chance=15, range=7, duration=1500, speedchange=-650, areaEffect=redshimmer
-- name=drunk, interval=2000, chance=10, range=7, duration=6000, shootEffect=energy
-- name=outfit, interval=2000, chance=1, range=7, duration=4000, areaEffect=blueshimmer
-- name=djinn electrify, interval=2000, chance=15, range=5
-- name=energy, interval=2000, chance=15, min=-30, max=-90, radius=3, areaEffect=energy
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=15, min=50, max=80, areaEffect=blueshimmer
--]]

monster:register()
