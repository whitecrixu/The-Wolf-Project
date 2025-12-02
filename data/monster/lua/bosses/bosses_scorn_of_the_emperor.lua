-- Scorn of the Emperor
-- Converted from XML

local monster = Game.createMonsterType("Scorn of the Emperor")
if not monster then return end

monster:name("Scorn of the Emperor")
monster:nameDescription("a scorn of the emperor")
monster:health(7800)
monster:maxHealth(7800)
monster:experience(4600)
monster:speed(410)
monster:race(RACE_UNDEAD)
monster:outfit({lookType = 351})
monster:defense(35)
monster:armor(45)
monster:runHealth(780)

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
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -170},
    {name = "physical", interval = 3000, chance = 17, minDamage = -150, maxDamage = -250, length = 8, spread = 3},
    {name = "physical", interval = 3000, chance = 10, maxDamage = -500, range = 7},
    {name = "speed", interval = 1000, chance = 10, range = 7},
    {name = "lifedrain", interval = 2000, chance = 21, minDamage = -200, maxDamage = -450, radius = 6}
})

monster:register()
