-- Mechanical Fighter
-- Converted from XML

local monster = Game.createMonsterType("Mechanical Fighter")
if not monster then return end

monster:name("Mechanical Fighter")
monster:nameDescription("a mechanical fighter")
monster:health(420)
monster:maxHealth(420)
monster:experience(255)
monster:speed(200)
monster:race(RACE_UNDEAD)
monster:corpseId(2253)
monster:outfit({lookType = 102})
monster:defense(199)
monster:armor(199)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 50}
})

-- Immunities
monster:immunities({
    {type = COMBAT_HOLYDAMAGE, combat = true},
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -240}
})

monster:register()
