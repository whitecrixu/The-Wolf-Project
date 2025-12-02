-- Salamander
-- Auto-converted from XML

local monster = Game.createMonsterType("Salamander")
if not monster then return end

monster:name("Salamander")
monster:nameDescription("a salamander")
monster:health(70)
monster:maxHealth(70)
monster:experience(25)
monster:speed(220)
monster:race(RACE_BLOOD)
monster:corpseId(19707)
monster:outfit({lookType = 529})
monster:defense(5)
monster:armor(5)
monster:runHealth(10)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Voices
monster:voices({
    {text = "Chrrch!", yell = false},
    {text = "Chhh!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 60000, maxCount = 15},
    {id = 2544, chance = 7890, maxCount = 3},
    {id = 7618, chance = 840},
    {id = 2120, chance = 4700},
    {id = 2456, chance = 1090},
    {id = 2398, chance = 3780},
    {id = 2460, chance = 2180},
    {id = 2419, chance = 420},
    {id = 19736, chance = 32830, maxCount = 5},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=30, attack=30
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=6000, chance=20, max=4, areaEffect=blueshimmer
--]]

monster:register()
