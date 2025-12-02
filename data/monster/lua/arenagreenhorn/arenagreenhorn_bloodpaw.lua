-- Bloodpaw
-- Converted from XML

local monster = Game.createMonsterType("Bloodpaw")
if not monster then return end

monster:name("Bloodpaw")
monster:nameDescription("bloodpaw")
monster:health(100)
monster:maxHealth(100)
monster:experience(50)
monster:speed(156)
monster:race(RACE_BLOOD)
monster:corpseId(7349)
monster:outfit({lookType = 42})
monster:defense(8)
monster:armor(3)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 20},
    {type = COMBAT_ENERGYDAMAGE, percent = -10}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -50}
})

monster:register()
