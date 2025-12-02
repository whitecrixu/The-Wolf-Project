-- Gladiator
-- Auto-converted from XML

local monster = Game.createMonsterType("Gladiator")
if not monster then return end

monster:name("Gladiator")
monster:nameDescription("a gladiator")
monster:health(185)
monster:maxHealth(185)
monster:experience(90)
monster:speed(200)
monster:race(RACE_BLOOD)
monster:manaCost(470)
monster:corpseId(20407)
monster:outfit({lookType = 131, lookHead = 78, lookBody = 3, lookLegs = 79, lookFeet = 114})
monster:defense(25)
monster:armor(25)
monster:runHealth(10)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isConvinceable(true)
monster:pushable(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_HOLYDAMAGE, percent = 10},
    {type = COMBAT_PHYSICALDAMAGE, percent = 15},
    {type = COMBAT_DEATHDAMAGE, percent = -5},
})

-- Voices
monster:voices({
    {text = "You are no match for me!", yell = false},
    {text = "Feel my prowess", yell = false},
    {text = "Fight!", yell = false},
    {text = "Take this!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 49500, maxCount = 30},
    {id = 2666, chance = 19000},
    {id = 2510, chance = 9950},
    {id = 2376, chance = 12620},
    {id = 2398, chance = 11160},
    {id = 2465, chance = 2750},
    {id = 2458, chance = 5200},
    {id = 2509, chance = 840},
    {id = 8872, chance = 340},
    {id = 2459, chance = 590},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=50, attack=30
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=speed, interval=2000, chance=15, duration=5000, speedchange=215, areaEffect=redshimmer
--]]

monster:register()
