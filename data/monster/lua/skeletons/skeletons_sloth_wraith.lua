-- Sloth Wraith
-- Converted from XML

local monster = Game.createMonsterType("Sloth Wraith")
if not monster then return end

monster:name("Sloth Wraith")
monster:nameDescription("a sloth wraith")
monster:health(100)
monster:maxHealth(100)
monster:experience(0)
monster:speed(230)
monster:race(RACE_UNDEAD)
monster:corpseId(6316)
monster:outfit({lookType = 233})
monster:defense(10)
monster:armor(10)

-- Flags
monster:attackable(false)
monster:hostile(true)
monster:canPushItems(true)
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
    {name = "speed", interval = 2000, chance = 50, range = 7}
})

monster:register()
