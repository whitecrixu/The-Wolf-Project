-- Yielothax
-- Converted from XML

local monster = Game.createMonsterType("Yielothax")
if not monster then return end

monster:name("Yielothax")
monster:nameDescription("Yielothax")
monster:health(1500)
monster:maxHealth(1500)
monster:experience(1250)
monster:speed(240)
monster:race(RACE_VENOM)
monster:corpseId(13752)
monster:outfit({lookType = 408})
monster:defense(30)
monster:armor(30)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_DEATHDAMAGE, percent = 50},
    {type = COMBAT_FIREDAMAGE, percent = 25},
    {type = COMBAT_PHYSICALDAMAGE, percent = -10},
    {type = COMBAT_ENERGYDAMAGE, percent = -5},
    {type = COMBAT_ICEDAMAGE, percent = -5}
})

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "IIEEH!! Iiih iih ih iiih!!!", yell = true},
    {text = "Bsssssssm Bssssssm Bsssssssssssm!", yell = true}
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 100},
    {id = 2148, chance = 50000, maxCount = 100},
    {id = 2148, chance = 50000, maxCount = 27},
    {id = 7588, chance = 20000},
    {id = 7589, chance = 20000},
    {id = 2789, chance = 9090, maxCount = 3},
    {id = 2145, chance = 4761, maxCount = 5},
    {id = 2164, chance = 3846},
    {id = 2151, chance = 917},
    {id = 7889, chance = 862},
    {id = 10221, chance = 571},
    {id = 2438, chance = 564},
    {id = 7440, chance = 490},
    {id = 2189, chance = 523},
    {id = 7895, chance = 480},
    {id = 13942, chance = 320},
    {id = 13881, chance = 300},
    {id = 13877, chance = 261}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 1000, chance = 100, minDamage = 0, maxDamage = -119},
    {name = "lifedrain", interval = 2000, chance = 10, minDamage = -100, maxDamage = -130, length = 4},
    {name = "earth", interval = 2000, chance = 15, minDamage = -150, maxDamage = -250, radius = 3},
    {name = "earth", interval = 2000, chance = 15, minDamage = -70, maxDamage = -120, radius = 3},
    {name = "manadrain", interval = 2000, chance = 10, minDamage = -50, maxDamage = -150, length = 4, spread = 3}
})

monster:register()
