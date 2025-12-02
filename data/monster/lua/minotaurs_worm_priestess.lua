-- Worm Priestess
-- Auto-converted from XML

local monster = Game.createMonsterType("Worm Priestess")
if not monster then return end

monster:name("Worm Priestess")
monster:nameDescription("a worm priestess")
monster:health(1100)
monster:maxHealth(1100)
monster:experience(1500)
monster:speed(198)
monster:race(RACE_BLOOD)
monster:corpseId(23470)
monster:outfit({lookType = 613})
monster:defense(20)
monster:armor(20)
monster:targetDistance(4)
monster:runHealth(200)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 25},
    {type = COMBAT_EARTHDAMAGE, percent = -10},
    {type = COMBAT_DEATHDAMAGE, percent = -10},
    {type = COMBAT_ICEDAMAGE, percent = 5},
})

-- Voices
monster:voices({
    {text = "An enemy of the worm shall become his food!", yell = false},
    {text = "The great worm will swallow you!", yell = false},
    {text = "And our enemies he will swallow!", yell = false},
    {text = "The worm may guide me in this hour of darkness!", yell = false},
    {text = "From the earthy depths he comes and brings freedom!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 150},
    {id = 2152, chance = 41130, maxCount = 3},
    {id = 12429, chance = 15850},
    {id = 7589, chance = 12380, maxCount = 3},
    {id = 2182, chance = 11470},
    {id = 7425, chance = 5210},
    {id = 2050, chance = 4760},
    {id = 5878, chance = 4640},
    {id = 12428, chance = 2940, maxCount = 2},
    {id = 2150, chance = 2500, maxCount = 2},
    {id = 2149, chance = 2370, maxCount = 2},
    {id = 2147, chance = 2200, maxCount = 2},
    {id = 9970, chance = 2460, maxCount = 2},
    {id = 2145, chance = 2430, maxCount = 2},
    {id = 5911, chance = 1350},
    {id = 5910, chance = 1400},
    {id = 5912, chance = 1820},
    {id = 8910, chance = 1590},
    {id = 2154, chance = 560},
    {id = 2156, chance = 430},
    {id = 7401, chance = 160},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=50, attack=50
-- name=lifedrain, interval=2000, chance=24, range=7, min=-50, max=-130, target=1, shootEffect=smallstone
-- name=energy, interval=2000, chance=16, range=4, min=-100, max=-165, shootEffect=smallearth, areaEffect=poison
-- name=worm priestess paralyze, interval=2000, chance=12
-- name=death, interval=2000, chance=10, range=7, min=-115, max=-200, radius=3, target=1, shootEffect=death, areaEffect=mortarea
-- name=earth, interval=2000, chance=13, range=7, min=-200, max=-300, radius=4, target=1, shootEffect=smallearth, areaEffect=greenspark
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=8, min=100, max=150, areaEffect=redshimmer
-- name=haste, interval=2000, chance=9, duration=1000, speedchange=198, areaEffect=redshimmer
--]]

monster:register()
