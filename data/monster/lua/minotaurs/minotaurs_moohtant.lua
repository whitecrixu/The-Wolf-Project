-- Moohtant
-- Converted from XML

local monster = Game.createMonsterType("Moohtant")
if not monster then return end

monster:name("Moohtant")
monster:nameDescription("a moohtant")
monster:health(3200)
monster:maxHealth(3200)
monster:experience(2600)
monster:speed(260)
monster:race(RACE_BLOOD)
monster:corpseId(23367)
monster:outfit({lookType = 607})
monster:defense(45)
monster:armor(40)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 1},
    {type = COMBAT_ICEDAMAGE, percent = 15},
    {type = COMBAT_FIREDAMAGE, percent = 1},
    {type = COMBAT_DEATHDAMAGE, percent = 1}
})

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "MOOOOH!", yell = true},
    {text = "Grrrr.", yell = false},
    {text = "Raaaargh!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 195},
    {id = 2152, chance = 58160, maxCount = 2},
    {id = 23554, chance = 15740, maxCount = 2},
    {id = 23570, chance = 11770},
    {id = 7591, chance = 7380, maxCount = 3},
    {id = 7590, chance = 7230, maxCount = 3},
    {id = 2666, chance = 6520},
    {id = 2147, chance = 4680, maxCount = 2},
    {id = 5878, chance = 4110},
    {id = 2145, chance = 4400, maxCount = 2},
    {id = 2214, chance = 2410},
    {id = 5911, chance = 1700},
    {id = 23544, chance = 1560},
    {id = 2156, chance = 850},
    {id = 2154, chance = 710},
    {id = 7452, chance = 430},
    {id = 7427, chance = 280},
    {id = 9971, chance = 280},
    {id = 7401, chance = 280}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -160},
    {name = "physical", interval = 2000, chance = 13, minDamage = -100, maxDamage = -230, length = 3},
    {name = "physical", interval = 2000, chance = 12, minDamage = -100, maxDamage = -200, radius = 3},
    {name = "lifedrain", interval = 2000, chance = 19, minDamage = -50, maxDamage = -225, radius = 5},
    {name = "lifedrain", interval = 2000, chance = 10, minDamage = -150, maxDamage = -235, range = 7, radius = 4}
})

monster:register()
