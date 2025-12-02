-- Colerian The Barbarian
-- Converted from XML

local monster = Game.createMonsterType("Colerian The Barbarian")
if not monster then return end

monster:name("Colerian The Barbarian")
monster:nameDescription("colerian the barbarian")
monster:health(265)
monster:maxHealth(265)
monster:experience(90)
monster:speed(190)
monster:race(RACE_BLOOD)
monster:corpseId(7349)
monster:outfit({lookType = 253, lookHead = 76, lookBody = 115, lookLegs = 115, lookFeet = 43})
monster:defense(20)
monster:armor(19)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
    {type = COMBAT_EARTHDAMAGE, percent = -20}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Flee, coward!", yell = false},
    {text = "You will lose!", yell = false},
    {text = "Yeehaawh", yell = false}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -60},
    {name = "physical", interval = 1000, chance = 80, maxDamage = -40, range = 5, radius = 1}
})

monster:register()
