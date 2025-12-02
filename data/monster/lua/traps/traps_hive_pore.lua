-- Hive Pore
-- Converted from XML

local monster = Game.createMonsterType("Hive Pore")
if not monster then return end

monster:name("Hive Pore")
monster:nameDescription("a hive pore")
monster:health(550)
monster:maxHealth(550)
monster:experience(0)
monster:speed(0)
monster:race(RACE_VENOM)
monster:manaCost(355)
monster:outfit({lookTypeEx = 15467})
monster:defense(0)
monster:armor(0)

-- Flags
monster:attackable(false)
monster:hostile(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
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

-- Attacks (default melee)
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -110}
})

monster:register()
