-- The Dark Dancer
-- Converted from XML

local monster = Game.createMonsterType("The Dark Dancer")
if not monster then return end

monster:name("The Dark Dancer")
monster:nameDescription("the dark dancer")
monster:health(855)
monster:maxHealth(855)
monster:experience(435)
monster:speed(170)
monster:race(RACE_BLOOD)
monster:corpseId(7349)
monster:outfit({lookType = 58})
monster:defense(12)
monster:armor(11)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 40},
    {type = COMBAT_DEATHDAMAGE, percent = 20}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "I hope you like my voice!", yell = false}
})

-- Attacks
monster:attacks({
    {name = "poisoncondition", interval = 2000, chance = 100},
    {name = "physical", interval = 3000, chance = 70, minDamage = -60, maxDamage = -95, range = 5, radius = 1},
    {name = "physical", interval = 6000, chance = 90, minDamage = -60, maxDamage = -95, range = 5, radius = 1},
    {name = "speed", interval = 3500, chance = 35, range = 5, radius = 1},
    {name = "manadrain", interval = 4000, chance = 30, minDamage = -2, maxDamage = -110, range = 5, radius = 1}
})

monster:register()
