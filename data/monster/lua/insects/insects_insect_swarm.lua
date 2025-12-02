-- Insect Swarm
-- Converted from XML

local monster = Game.createMonsterType("Insect Swarm")
if not monster then return end

monster:name("Insect Swarm")
monster:nameDescription("a insect swarm")
monster:health(50)
monster:maxHealth(50)
monster:experience(40)
monster:speed(150)
monster:race(RACE_UNDEAD)
monster:outfit({lookType = 349})
monster:defense(5)
monster:armor(5)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = -10}
})

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -20},
    {name = "lifedrain", interval = 2000, chance = 15, maxDamage = -15}
})

monster:register()
