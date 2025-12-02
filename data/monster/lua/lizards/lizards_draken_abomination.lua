-- Draken Abomination
-- Converted from XML

local monster = Game.createMonsterType("Draken Abomination")
if not monster then return end

monster:name("Draken Abomination")
monster:nameDescription("a draken abomination")
monster:health(6250)
monster:maxHealth(6250)
monster:experience(3800)
monster:speed(230)
monster:race(RACE_VENOM)
monster:corpseId(12623)
monster:outfit({lookType = 357})
monster:defense(30)
monster:armor(30)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_HOLYDAMAGE, percent = -5},
    {type = COMBAT_ENERGYDAMAGE, percent = -5},
    {type = COMBAT_ICEDAMAGE, percent = 5}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {type = COMBAT_DEATHDAMAGE, combat = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Ugggh!", yell = false},
    {text = "Gll", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 100},
    {id = 2148, chance = 47000, maxCount = 98},
    {id = 2152, chance = 50590, maxCount = 8},
    {id = 2666, chance = 50450, maxCount = 4},
    {id = 8473, chance = 9400, maxCount = 3},
    {id = 7590, chance = 9950, maxCount = 3},
    {id = 12627, chance = 12110},
    {id = 12628, chance = 6240},
    {id = 9970, chance = 2900, maxCount = 4},
    {id = 8472, chance = 4905, maxCount = 3},
    {id = 7903, chance = 8730},
    {id = 12629, chance = 10940},
    {id = 8922, chance = 1020},
    {id = 12646, chance = 540},
    {id = 12644, chance = 10},
    {id = 12647, chance = 10},
    {id = 13538, chance = 360},
    {id = 11304, chance = 780},
    {id = 11301, chance = 470},
    {id = 11302, chance = 560}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -180},
    {name = "fire", interval = 2000, chance = 10, minDamage = -310, maxDamage = -630, length = 4, spread = 3},
    {name = "draken abomination curse", interval = 2000, chance = 10, range = 5},
    {name = "death", interval = 2000, chance = 15, minDamage = -170, maxDamage = -370, length = 4},
    {name = "drunk", interval = 2000, chance = 15, range = 7, radius = 4},
    {name = "physical", interval = 2000, chance = 10, range = 7, radius = 3}
})

monster:register()
