-- Essence of Darkness
-- Converted from XML

local monster = Game.createMonsterType("Essence of Darkness")
if not monster then return end

monster:name("Essence of Darkness")
monster:nameDescription("a essence of darkness")
monster:health(1000)
monster:maxHealth(1000)
monster:experience(30)
monster:speed(230)
monster:race(RACE_UNDEAD)
monster:corpseId(9960)
monster:outfit({lookType = 315})
monster:defense(10)
monster:armor(10)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 98},
    {type = COMBAT_HOLYDAMAGE, percent = 80}
})

-- Immunities
monster:immunities({
    {type = COMBAT_PHYSICALDAMAGE, combat = true},
    {type = COMBAT_DEATHDAMAGE, combat = true},
    {condition = CONDITION_ENERGY, immunity = true},
    {type = COMBAT_ICEDAMAGE, combat = true},
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {type = COMBAT_LIFEDRAIN, combat = true}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -80}
})

monster:register()
