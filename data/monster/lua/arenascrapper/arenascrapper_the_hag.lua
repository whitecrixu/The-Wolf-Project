-- The Hag
-- Converted from XML

local monster = Game.createMonsterType("The Hag")
if not monster then return end

monster:name("The Hag")
monster:nameDescription("the hag")
monster:health(935)
monster:maxHealth(935)
monster:experience(510)
monster:speed(205)
monster:race(RACE_BLOOD)
monster:corpseId(7349)
monster:outfit({lookType = 264, lookHead = 78, lookBody = 97, lookLegs = 95, lookFeet = 95})
monster:defense(25)
monster:armor(24)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 30},
    {type = COMBAT_ICEDAMAGE, percent = 20},
    {type = COMBAT_ENERGYDAMAGE, percent = 10}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "If you think I am to old to fight then you're wrong!", yell = false},
    {text = "I've forgotten more things then you have ever learned!", yell = false},
    {text = "Let me teach you a few things youngster!", yell = false},
    {text = "I'll teach you respect for the old!", yell = false}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -80},
    {name = "drunk", interval = 3000, chance = 35, range = 5, radius = 1},
    {name = "speed", interval = 4000, chance = 55, range = 5, radius = 1}
})

monster:register()
