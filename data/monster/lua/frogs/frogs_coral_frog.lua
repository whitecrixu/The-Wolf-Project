-- Coral Frog
-- Converted from XML

local monster = Game.createMonsterType("Coral Frog")
if not monster then return end

monster:name("Coral Frog")
monster:nameDescription("a coral frog")
monster:health(60)
monster:maxHealth(60)
monster:experience(20)
monster:speed(200)
monster:race(RACE_BLOOD)
monster:manaCost(305)
monster:corpseId(6079)
monster:outfit({lookType = 226, lookHead = 114, lookBody = 98, lookLegs = 97, lookFeet = 114})
monster:defense(5)
monster:armor(5)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isSummonable(true)
monster:pushable(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ICEDAMAGE, percent = 10},
    {type = COMBAT_FIREDAMAGE, percent = -10}
})

-- Voices
monster:voices({
    {text = "Ribbit!", yell = false},
    {text = "Ribbit! Ribbit!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 76780, maxCount = 10},
    {id = 3976, chance = 13510}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -34}
})

monster:register()
