-- Azure Frog
-- Converted from XML

local monster = Game.createMonsterType("Azure Frog")
if not monster then return end

monster:name("Azure Frog")
monster:nameDescription("a azure frog")
monster:health(60)
monster:maxHealth(60)
monster:experience(20)
monster:speed(200)
monster:race(RACE_BLOOD)
monster:manaCost(305)
monster:corpseId(6079)
monster:outfit({lookType = 226, lookHead = 69, lookBody = 66, lookLegs = 69, lookFeet = 66})
monster:defense(5)
monster:armor(5)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isSummonable(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ICEDAMAGE, percent = 10},
    {type = COMBAT_FIREDAMAGE, percent = -10}
})

-- Voices
monster:voices({
    {text = "Ribbit! Ribbit!", yell = false},
    {text = "Ribbit!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 71230, maxCount = 10},
    {id = 3976, chance = 8880}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -34}
})

monster:register()
