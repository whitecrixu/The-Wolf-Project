-- Rift Worm
-- Converted from XML

local monster = Game.createMonsterType("Rift Worm")
if not monster then return end

monster:name("Rift Worm")
monster:nameDescription("a rift worm")
monster:health(2800)
monster:maxHealth(2800)
monster:experience(1195)
monster:speed(200)
monster:race(RACE_BLOOD)
monster:outfit({lookType = 295})
monster:defense(25)
monster:armor(25)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_HOLYDAMAGE, percent = -5},
    {type = COMBAT_FIREDAMAGE, percent = -5},
    {type = COMBAT_ICEDAMAGE, percent = -5},
    {type = COMBAT_EARTHDAMAGE, percent = -25}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -160},
    {name = "manadrain", interval = 2000, chance = 10, minDamage = -500, maxDamage = -1000, range = 7}
})

monster:register()
