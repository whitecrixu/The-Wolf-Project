-- Death Blob
-- Converted from XML

local monster = Game.createMonsterType("Death Blob")
if not monster then return end

monster:name("Death Blob")
monster:nameDescription("a death blob")
monster:health(320)
monster:maxHealth(320)
monster:experience(300)
monster:speed(180)
monster:race(RACE_UNDEAD)
monster:corpseId(9960)
monster:outfit({lookType = 315})
monster:defense(15)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 30},
    {type = COMBAT_ICEDAMAGE, percent = 10},
    {type = COMBAT_FIREDAMAGE, percent = -10},
    {type = COMBAT_HOLYDAMAGE, percent = -10},
    {type = COMBAT_ENERGYDAMAGE, percent = -10}
})

-- Immunities
monster:immunities({
    {type = COMBAT_DEATHDAMAGE, combat = true},
    {type = COMBAT_EARTHDAMAGE, combat = true}
})

-- Loot
monster:loot({
    {id = 9968, chance = 14285}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -80},
    {name = "physical", interval = 2000, chance = 25, minDamage = -35, maxDamage = -60, range = 3, radius = 4},
    {name = "death blob curse", interval = 2000, chance = 5, range = 5}
})

monster:register()
