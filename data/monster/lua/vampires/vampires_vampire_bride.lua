-- Vampire Bride
-- Converted from XML

local monster = Game.createMonsterType("Vampire Bride")
if not monster then return end

monster:name("Vampire Bride")
monster:nameDescription("a vampire bride")
monster:health(1200)
monster:maxHealth(1200)
monster:experience(1050)
monster:speed(230)
monster:race(RACE_BLOOD)
monster:corpseId(9660)
monster:outfit({lookType = 312})
monster:defense(20)
monster:armor(20)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 10},
    {type = COMBAT_EARTHDAMAGE, percent = 20},
    {type = COMBAT_DROWNDAMAGE, percent = 10},
    {type = COMBAT_ICEDAMAGE, percent = 20},
    {type = COMBAT_FIREDAMAGE, percent = -10},
    {type = COMBAT_HOLYDAMAGE, percent = -10}
})

-- Immunities
monster:immunities({
    {type = COMBAT_DEATHDAMAGE, combat = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Kneel before your Mistress!", yell = false},
    {text = "Dead is the new alive.", yell = false},
    {text = "Come, let me kiss you, darling. Oh wait, I meant kill.", yell = false},
    {text = "Enjoy the pain - I know you love it.", yell = false},
    {text = "Are you suffering nicely enough?", yell = false},
    {text = "You won't regret you came to me, sweetheart.", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 90000, maxCount = 149},
    {id = 7589, chance = 10210},
    {id = 10602, chance = 10000},
    {id = 2152, chance = 9910},
    {id = 2186, chance = 5500},
    {id = 7588, chance = 5000},
    {id = 12405, chance = 4950},
    {id = 2127, chance = 1100},
    {id = 8873, chance = 1030},
    {id = 2145, chance = 1020, maxCount = 2},
    {id = 9809, chance = 1010},
    {id = 9837, chance = 970},
    {id = 2195, chance = 220},
    {id = 7733, chance = 200},
    {id = 5670, chance = 170},
    {id = 9447, chance = 60},
    {id = 13293, chance = 20}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -190},
    {name = "lifedrain", interval = 3000, chance = 15, minDamage = -60, maxDamage = -130},
    {name = "death", interval = 2000, chance = 10, minDamage = -60, maxDamage = -150, range = 7},
    {name = "death", interval = 4000, chance = 5, minDamage = -60, maxDamage = -150, range = 7},
    {name = "energy", interval = 2000, chance = 15, minDamage = -60, maxDamage = -150, range = 7}
})

monster:register()
