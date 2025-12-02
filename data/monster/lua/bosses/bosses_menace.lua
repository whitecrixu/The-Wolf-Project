-- Menace
-- Converted from XML

local monster = Game.createMonsterType("Menace")
if not monster then return end

monster:name("Menace")
monster:nameDescription("Menace")
monster:health(6000)
monster:maxHealth(6000)
monster:experience(3250)
monster:speed(220)
monster:race(RACE_BLOOD)
monster:corpseId(4251)
monster:outfit({lookType = 113})
monster:defense(19)
monster:armor(16)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = -10},
    {type = COMBAT_ICEDAMAGE, percent = 10},
    {type = COMBAT_ENERGYDAMAGE, percent = 20}
})

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -133}
})

monster:register()
