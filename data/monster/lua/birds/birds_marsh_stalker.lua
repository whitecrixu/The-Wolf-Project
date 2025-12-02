-- Marsh Stalker
-- Auto-converted from XML

local monster = Game.createMonsterType("Marsh Stalker")
if not monster then return end

monster:name("Marsh Stalker")
monster:nameDescription("a marsh stalker")
monster:health(100)
monster:maxHealth(100)
monster:experience(50)
monster:speed(210)
monster:race(RACE_BLOOD)
monster:corpseId(19708)
monster:outfit({lookType = 530})
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

-- Resistances
monster:elements({
    {type = COMBAT_ICEDAMAGE, percent = 5},
    {type = COMBAT_EARTHDAMAGE, percent = -5},
})

-- Voices
monster:voices({
    {text = "Rrrawk! Rrrrawk!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 65000, maxCount = 23},
    {id = 3976, chance = 15000, maxCount = 2},
    {id = 2667, chance = 20290, maxCount = 2},
    {id = 2666, chance = 20360, maxCount = 2},
    {id = 19740, chance = 7180},
    {id = 19741, chance = 9300},
    {id = 2397, chance = 7180},
    {id = 7732, chance = 120},
    {id = 2120, chance = 4530},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=10, attack=10
-- name=physical, interval=2000, chance=20, range=7, max=-8, radius=1, target=1, shootEffect=explosion, areaEffect=explosionarea
--]]

monster:register()
