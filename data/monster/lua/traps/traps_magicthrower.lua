-- Magicthrower
-- Converted from XML

local monster = Game.createMonsterType("Magicthrower")
if not monster then return end

monster:name("Magicthrower")
monster:nameDescription("a magicthrower")
monster:health(9950)
monster:maxHealth(9950)
monster:experience(0)
monster:speed(0)
monster:race(RACE_UNDEAD)
monster:outfit({lookTypeEx = 1551})
monster:defense(0)
monster:armor(0)
monster:runHealth(995)

-- Flags
monster:attackable(false)
monster:hostile(true)
monster:canPushCreatures(true)
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
    {type = COMBAT_MANADRAIN, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Attacks
monster:attacks({
    {name = "earth", interval = 2000, chance = 100, maxDamage = -100, range = 7}
})

monster:register()
