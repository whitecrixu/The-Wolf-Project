-- Dreadbeast
-- Converted from XML

local monster = Game.createMonsterType("Dreadbeast")
if not monster then return end

monster:name("Dreadbeast")
monster:nameDescription("a dreadbeast")
monster:health(515)
monster:maxHealth(515)
monster:experience(580)
monster:speed(200)
monster:race(RACE_UNDEAD)
monster:manaCost(800)
monster:corpseId(3031)
monster:outfit({lookType = 101, lookHead = 20, lookBody = 30, lookLegs = 40, lookFeet = 50})
monster:defense(36)
monster:armor(34)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isConvinceable(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 70},
    {type = COMBAT_PHYSICALDAMAGE, percent = -25}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -100},
    {name = "lifedrain", interval = 2000, chance = 20, minDamage = -150, maxDamage = -250, radius = 1},
    {name = "lifedrain", interval = 2000, chance = 20, minDamage = -150, maxDamage = -250, radius = 1}
})

monster:register()
