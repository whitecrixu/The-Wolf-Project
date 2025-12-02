-- Lizard Abomination
-- Converted from XML

local monster = Game.createMonsterType("Lizard Abomination")
if not monster then return end

monster:name("Lizard Abomination")
monster:nameDescription("a lizard abomination")
monster:health(20000)
monster:maxHealth(20000)
monster:experience(1350)
monster:speed(300)
monster:race(RACE_BLOOD)
monster:outfit({lookType = 364})
monster:defense(60)
monster:armor(55)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 15},
    {type = COMBAT_FIREDAMAGE, percent = -10},
    {type = COMBAT_ENERGYDAMAGE, percent = -10},
    {type = COMBAT_ICEDAMAGE, percent = 20}
})

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true}
})

-- Voices
monster:voices({
    {text = "NOOOO! NOW YOU HERETICS WILL FACE MY GODLY WRATH!", yell = true},
    {text = "RAAARRRR! I WILL DEVOL YOU!", yell = true},
    {text = "I WILL MAKE YOU ZHEE!", yell = true}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -550},
    {name = "earth", interval = 2000, chance = 40, maxDamage = -980, radius = 3},
    {name = "lifedrain", interval = 2000, chance = 50, minDamage = -200, maxDamage = -300, length = 8},
    {name = "speed", interval = 2000, chance = 20, radius = 3}
})

monster:register()
