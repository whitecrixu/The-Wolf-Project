-- Frost Giant
-- Auto-converted from XML

local monster = Game.createMonsterType("Frost Giant")
if not monster then return end

monster:name("Frost Giant")
monster:nameDescription("a frost giant")
monster:health(270)
monster:maxHealth(270)
monster:experience(150)
monster:speed(200)
monster:race(RACE_BLOOD)
monster:manaCost(490)
monster:corpseId(7330)
monster:outfit({lookType = 257})
monster:defense(20)
monster:armor(20)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(80)

-- Immunities
monster:immunities({
    {condition = CONDITION_FREEZING, immunity = true},
})

-- Voices
monster:voices({
    {text = "Hmm Humansoup", yell = false},
    {text = "Stand still ya tasy snack!", yell = false},
    {text = "Joh Thun!", yell = false},
    {text = "Brore Smode!", yell = false},
    {text = "Horre Sjan Flan!", yell = false},
    {text = "Forle Bramma!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 82000, maxCount = 40},
    {id = 2666, chance = 4970, maxCount = 2},
    {id = 2406, chance = 8140},
    {id = 7441, chance = 2180},
    {id = 2513, chance = 1350},
    {id = 2381, chance = 560},
    {id = 7460, chance = 250},
    {id = 2490, chance = 180},
    {id = 7618, chance = 819},
    {id = 7290, chance = 60},
    {id = 2209, chance = 130},
    {id = 10575, chance = 5000},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=45, attack=40
-- name=physical, interval=2000, chance=15, range=7, max=-90, shootEffect=largerock
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=speed, interval=2000, chance=15, duration=5000, speedchange=300, areaEffect=redshimmer
--]]

monster:register()
