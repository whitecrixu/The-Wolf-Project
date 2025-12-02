-- Darakan the Executioner
-- Converted from XML

local monster = Game.createMonsterType("Darakan the Executioner")
if not monster then return end

monster:name("Darakan the Executioner")
monster:nameDescription("darakan the executioner")
monster:health(3500)
monster:maxHealth(3500)
monster:experience(1600)
monster:speed(205)
monster:race(RACE_BLOOD)
monster:corpseId(7349)
monster:outfit({lookType = 255, lookHead = 78, lookBody = 114, lookLegs = 114, lookFeet = 114})
monster:defense(31)
monster:armor(30)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ICEDAMAGE, percent = 15},
    {type = COMBAT_FIREDAMAGE, percent = -15}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "FIGHT LIKE A BARBARIAN!", yell = true},
    {text = "VICTORY IS MINE!", yell = true},
    {text = "I AM your father!", yell = false},
    {text = "To be the man you have to beat the man!", yell = false}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -120},
    {name = "physical", interval = 1000, chance = 100, minDamage = -72, maxDamage = -130}
})

monster:register()
