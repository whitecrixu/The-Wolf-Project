-- Morgaroth
-- Auto-converted from XML

local monster = Game.createMonsterType("Morgaroth")
if not monster then return end

monster:name("Morgaroth")
monster:nameDescription("a morgaroth")
monster:health(55000)
monster:maxHealth(55000)
monster:experience(15000)
monster:speed(400)
monster:race(RACE_UNDEAD)
monster:corpseId(6068)
monster:outfit({lookType = 12, lookBody = 94, lookLegs = 79, lookFeet = 79})
monster:defense(65)
monster:armor(55)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(98)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 1},
    {type = COMBAT_DEATHDAMAGE, percent = 80},
    {type = COMBAT_PHYSICALDAMAGE, percent = 1},
    {type = COMBAT_ICEDAMAGE, percent = -5},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "I AM MORGAROTH, LORD OF THE TRIANGLE... AND YOU ARE LOST!", yell = true},
    {text = "MY SEED IS FEAR AND MY HARVEST ARE YOUR SOULS!", yell = true},
    {text = "ZATHROTH! LOOK AT THE DESTRUCTION I AM CAUSING IN YOUR NAME!", yell = true},
    {text = "THE TRIANGLE OF TERROR WILL RISE!", yell = true},
})

-- Summons
monster:summons({
    {name = "Demon", chance = 33, interval = 4000, max = 1},
})

-- Loot
monster:loot({
    {id = 6500, chance = 50000},
    {id = 2152, chance = 50000, maxCount = 74},
    {id = 7590, chance = 50000},
    {id = 2155, chance = 33333},
    {id = 2150, chance = 33333, maxCount = 18},
    {id = 8852, chance = 33333},
    {id = 2214, chance = 25000},
    {id = 2146, chance = 25000, maxCount = 8},
    {id = 8853, chance = 25000},
    {id = 8850, chance = 20000},
    {id = 8865, chance = 20000},
    {id = 5954, chance = 20000, maxCount = 2},
    {id = 2472, chance = 20000},
    {id = 2164, chance = 20000},
    {id = 1986, chance = 20000},
    {id = 2149, chance = 20000, maxCount = 6},
    {id = 8473, chance = 20000},
    {id = 7368, chance = 16666, maxCount = 28},
    {id = 2144, chance = 16666, maxCount = 15},
    {id = 6300, chance = 16666},
    {id = 7431, chance = 16666},
    {id = 2387, chance = 16666},
    {id = 8881, chance = 16666},
    {id = 2033, chance = 16666},
    {id = 2178, chance = 16666},
    {id = 5943, chance = 16666},
    {id = 8928, chance = 16666},
    {id = 2151, chance = 16666, maxCount = 7},
    {id = 2158, chance = 11111},
    {id = 2393, chance = 11111},
    {id = 2470, chance = 11111},
    {id = 2177, chance = 11111},
    {id = 2177, chance = 11111},
    {id = 7493, chance = 11111},
    {id = 8851, chance = 11111},
    {id = 2165, chance = 11111},
    {id = 2645, chance = 11111},
    {id = 2174, chance = 11111},
    {id = 2112, chance = 11111},
    {id = 2143, chance = 11111, maxCount = 13},
    {id = 2124, chance = 5882},
    {id = 8867, chance = 5882},
    {id = 2167, chance = 5882},
    {id = 2179, chance = 5882},
    {id = 7591, chance = 5882},
    {id = 8472, chance = 5882},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, min=-700, max=-2000
-- name=fire, interval=3000, chance=35, range=7, min=-700, max=-1200, radius=7, target=1, shootEffect=fire, areaEffect=firearea
-- name=melee, interval=1800, chance=40, range=7, min=-250, max=-400, radius=5, areaEffect=blackspark
-- name=energy, interval=3000, chance=30, min=-300, max=-1000, length=8, areaEffect=energy
-- name=physical, interval=2500, chance=20, range=7, min=-200, max=-480, radius=5, areaEffect=greenshimmer
-- name=physical, interval=2000, chance=15, range=7, min=-250, max=-500, radius=13, areaEffect=rednote
-- name=physical, interval=2000, chance=20, min=-200, max=-450, radius=14, areaEffect=bluebubble
-- name=melee, interval=3000, chance=15, range=7, min=-100, max=-200, radius=3, areaEffect=blueshimmer
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=3000, chance=35, min=300, max=800, areaEffect=blueshimmer
-- name=speed, interval=4000, chance=80, duration=6000, speedchange=440, areaEffect=redshimmer
--]]

monster:register()
