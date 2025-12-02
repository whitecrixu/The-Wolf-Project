-- Orcus the Cruel
-- Converted from XML

local monster = Game.createMonsterType("Orcus the Cruel")
if not monster then return end

monster:name("Orcus the Cruel")
monster:nameDescription("orcus the cruel")
monster:health(480)
monster:maxHealth(480)
monster:experience(280)
monster:speed(230)
monster:race(RACE_BLOOD)
monster:corpseId(7349)
monster:outfit({lookType = 59})
monster:defense(40)
monster:armor(39)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
    {type = COMBAT_EARTHDAMAGE, percent = -20}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -110},
    {name = "physical", interval = 2000, chance = 40, maxDamage = -70, range = 5, radius = 1}
})

monster:register()
