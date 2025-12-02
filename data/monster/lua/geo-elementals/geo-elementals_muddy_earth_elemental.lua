-- Muddy Earth Elemental
-- Converted from XML

local monster = Game.createMonsterType("Muddy Earth Elemental")
if not monster then return end

monster:name("Muddy Earth Elemental")
monster:nameDescription("a muddy earth elemental")
monster:health(650)
monster:maxHealth(650)
monster:experience(450)
monster:speed(260)
monster:race(RACE_UNDEAD)
monster:corpseId(8933)
monster:outfit({lookType = 301})
monster:defense(30)
monster:armor(30)
monster:runHealth(65)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_DEATHDAMAGE, percent = 20},
    {type = COMBAT_ICEDAMAGE, percent = 20},
    {type = COMBAT_PHYSICALDAMAGE, percent = 20},
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
    {type = COMBAT_FIREDAMAGE, percent = -25}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {type = COMBAT_EARTHDAMAGE, combat = true}
})

-- Loot
monster:loot({
    {id = 2148, chance = 24500, maxCount = 80},
    {id = 2148, chance = 24500, maxCount = 47},
    {id = 1294, chance = 40000, maxCount = 3},
    {id = 2244, chance = 22000},
    {id = 8298, chance = 3750}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -110},
    {name = "earth", interval = 2000, chance = 15, minDamage = -25, maxDamage = -155, range = 7, radius = 2},
    {name = "poisoncondition", interval = 1000, chance = 10, maxDamage = -26, length = 6}
})

monster:register()
