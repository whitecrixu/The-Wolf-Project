-- Nightfiend
-- Converted from XML

local monster = Game.createMonsterType("Nightfiend")
if not monster then return end

monster:name("Nightfiend")
monster:nameDescription("a nightfiend")
monster:health(2700)
monster:maxHealth(2700)
monster:experience(2100)
monster:speed(210)
monster:race(RACE_BLOOD)
monster:corpseId(2669)
monster:outfit({lookType = 568})
monster:defense(11)
monster:armor(11)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 5},
    {type = COMBAT_ENERGYDAMAGE, percent = 5},
    {type = COMBAT_ICEDAMAGE, percent = 5},
    {type = COMBAT_FIREDAMAGE, percent = -5},
    {type = COMBAT_HOLYDAMAGE, percent = -5}
})

-- Immunities
monster:immunities({
    {type = COMBAT_DEATHDAMAGE, combat = true},
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -50},
    {name = "physical", interval = 1000, chance = 10, minDamage = -5, maxDamage = -40, range = 7}
})

monster:register()
