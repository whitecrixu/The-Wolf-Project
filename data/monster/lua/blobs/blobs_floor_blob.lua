-- Floor Blob
-- Converted from XML

local monster = Game.createMonsterType("Floor Blob")
if not monster then return end

monster:name("Floor Blob")
monster:nameDescription("a floor blob")
monster:health(550)
monster:maxHealth(550)
monster:experience(0)
monster:speed(0)
monster:race(RACE_VENOM)
monster:outfit({lookType = 459})
monster:defense(11)
monster:armor(5)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(true)
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
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = 0}
})

monster:register()
