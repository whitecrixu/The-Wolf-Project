-- Deaththrower
-- Converted from XML

local monster = Game.createMonsterType("Deaththrower")
if not monster then return end

monster:name("Deaththrower")
monster:nameDescription("a deaththrower")
monster:health(100)
monster:maxHealth(100)
monster:experience(0)
monster:speed(0)
monster:race(RACE_UNDEAD)
monster:outfit({lookTypeEx = 1551})
monster:defense(1)
monster:armor(1)

-- Flags
monster:attackable(false)
monster:hostile(true)
monster:staticAttackChance(90)

-- Immunities
monster:immunities({
    {type = COMBAT_PHYSICALDAMAGE, combat = true},
    {condition = CONDITION_ENERGY, immunity = true},
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {type = COMBAT_ICEDAMAGE, combat = true},
    {type = COMBAT_HOLYDAMAGE, combat = true},
    {type = COMBAT_DEATHDAMAGE, combat = true},
    {type = COMBAT_LIFEDRAIN, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_DROWN, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Attacks
monster:attacks({
    {name = "dark torturer skill reducer", interval = 2000, chance = 15, range = 6}
})

monster:register()
