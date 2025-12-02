-- The Axeorcist
-- Converted from XML

local monster = Game.createMonsterType("The Axeorcist")
if not monster then return end

monster:name("The Axeorcist")
monster:nameDescription("The Axeorcist")
monster:health(5000)
monster:maxHealth(5000)
monster:experience(3000)
monster:speed(250)
monster:race(RACE_BLOOD)
monster:corpseId(5980)
monster:outfit({lookType = 8})
monster:defense(12)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = -10},
    {type = COMBAT_ENERGYDAMAGE, percent = -10},
    {type = COMBAT_DEATHDAMAGE, percent = -10},
    {type = COMBAT_HOLYDAMAGE, percent = 10}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "DEESTRUCTIOON!", yell = true},
    {text = "Blood! Carnage! Muhahaha!", yell = true}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -145}
})

monster:register()
