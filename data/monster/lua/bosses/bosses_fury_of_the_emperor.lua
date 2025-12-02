-- Fury of the Emperor
-- Converted from XML

local monster = Game.createMonsterType("Fury of the Emperor")
if not monster then return end

monster:name("Fury of the Emperor")
monster:nameDescription("a fury of the emperor")
monster:health(28800)
monster:maxHealth(28800)
monster:experience(26600)
monster:speed(450)
monster:race(RACE_UNDEAD)
monster:outfit({lookType = 351})
monster:defense(55)
monster:armor(65)
monster:runHealth(2880)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ICEDAMAGE, percent = 50},
    {type = COMBAT_FIREDAMAGE, percent = 10},
    {type = COMBAT_PHYSICALDAMAGE, percent = -10},
    {type = COMBAT_ENERGYDAMAGE, percent = -10},
    {type = COMBAT_HOLYDAMAGE, percent = -15}
})

-- Immunities
monster:immunities({
    {type = COMBAT_DEATHDAMAGE, combat = true},
    {type = COMBAT_EARTHDAMAGE, combat = true}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -230},
    {name = "physical", interval = 3000, chance = 17, minDamage = -250, maxDamage = -450, length = 8, spread = 3},
    {name = "physical", interval = 3000, chance = 10, minDamage = -100, maxDamage = -700, range = 7},
    {name = "speed", interval = 1000, chance = 10, range = 7},
    {name = "lifedrain", interval = 2000, chance = 21, minDamage = -400, maxDamage = -650, radius = 6}
})

monster:register()
