-- Marsh Stalker
-- Converted from XML

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
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ICEDAMAGE, percent = 5},
    {type = COMBAT_EARTHDAMAGE, percent = -5}
})

-- Voices
monster:voices({
    {text = "Rrrawk! Rrrrawk!", yell = false}
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
    {id = 2120, chance = 4530}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -20},
    {name = "physical", interval = 2000, chance = 20, maxDamage = -8, range = 7, radius = 1}
})

monster:register()
