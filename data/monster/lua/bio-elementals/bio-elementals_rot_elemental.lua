-- Rot Elemental
-- Converted from XML

local monster = Game.createMonsterType("Rot Elemental")
if not monster then return end

monster:name("Rot Elemental")
monster:nameDescription("a rot elemental")
monster:health(850)
monster:maxHealth(850)
monster:experience(750)
monster:speed(230)
monster:race(RACE_VENOM)
monster:corpseId(23481)
monster:outfit({lookType = 615})
monster:defense(15)
monster:armor(10)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 10},
    {type = COMBAT_ENERGYDAMAGE, percent = -5},
    {type = COMBAT_ICEDAMAGE, percent = 30},
    {type = COMBAT_HOLYDAMAGE, percent = 20},
    {type = COMBAT_DEATHDAMAGE, percent = 20},
    {type = COMBAT_FIREDAMAGE, percent = -5}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {type = COMBAT_LIFEDRAIN, combat = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "*glibb*", yell = false},
    {text = "*splib*", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 80},
    {id = 2152, chance = 10390},
    {id = 7588, chance = 10310},
    {id = 7589, chance = 9990},
    {id = 23553, chance = 14320},
    {id = 2168, chance = 1630},
    {id = 2146, chance = 5110},
    {id = 9970, chance = 4140, maxCount = 2},
    {id = 2149, chance = 5340, maxCount = 2},
    {id = 2155, chance = 80},
    {id = 23554, chance = 130},
    {id = 23551, chance = 60},
    {id = 23529, chance = 5660}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -108},
    {name = "earth", interval = 2000, chance = 13, minDamage = -150, maxDamage = -250, range = 7, radius = 3},
    {name = "earth", interval = 2000, chance = 15, minDamage = -150, maxDamage = -230, length = 6},
    {name = "poisoncondition", interval = 2000, chance = 10, minDamage = -200, maxDamage = -300, range = 7},
    {name = "rot elemental paralyze", interval = 2000, chance = 11}
})

monster:register()
