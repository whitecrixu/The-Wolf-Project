-- Fallen Mooh'tah Master Ghar
-- Converted from XML

local monster = Game.createMonsterType("Fallen Mooh'tah Master Ghar")
if not monster then return end

monster:name("Fallen Mooh'tah Master Ghar")
monster:nameDescription("fallen mooh'tah master ghar")
monster:health(8000)
monster:maxHealth(8000)
monster:experience(4400)
monster:speed(190)
monster:race(RACE_BLOOD)
monster:corpseId(7349)
monster:outfit({lookType = 29})
monster:defense(33)
monster:armor(30)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 60}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "I will finish you!", yell = false},
    {text = "You are no match for a master of the Mooh'Tha!", yell = false},
    {text = "I might be fallen but you will fall before me!", yell = false}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -210},
    {name = "fire", interval = 6000, chance = 30, minDamage = -80, maxDamage = -300, length = 8, spread = 3},
    {name = "fire", interval = 3000, chance = 45, minDamage = -80, maxDamage = -400, radius = 5},
    {name = "death", interval = 4000, chance = 30, minDamage = -80, maxDamage = -270},
    {name = "poisoncondition", interval = 4500, chance = 40, minDamage = -10, maxDamage = -200, range = 10},
    {name = "poison", interval = 5000, chance = 30, minDamage = -60, maxDamage = -300, length = 8, spread = 3}
})

monster:register()
