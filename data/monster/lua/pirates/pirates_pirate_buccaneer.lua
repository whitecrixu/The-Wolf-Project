-- Pirate Buccaneer
-- Converted from XML

local monster = Game.createMonsterType("Pirate Buccaneer")
if not monster then return end

monster:name("Pirate Buccaneer")
monster:nameDescription("a pirate buccaneer")
monster:health(425)
monster:maxHealth(425)
monster:experience(250)
monster:speed(220)
monster:race(RACE_BLOOD)
monster:manaCost(595)
monster:corpseId(20471)
monster:outfit({lookType = 97})
monster:defense(30)
monster:armor(30)
monster:runHealth(42)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isSummonable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = 10},
    {type = COMBAT_HOLYDAMAGE, percent = 10},
    {type = COMBAT_DEATHDAMAGE, percent = -5},
    {type = COMBAT_FIREDAMAGE, percent = -5},
    {type = COMBAT_ENERGYDAMAGE, percent = -5},
    {type = COMBAT_ICEDAMAGE, percent = -5},
    {type = COMBAT_PHYSICALDAMAGE, percent = -10}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Give up!", yell = false},
    {text = "Hiyaa", yell = false},
    {text = "Plundeeeeer!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 67740, maxCount = 59},
    {id = 2410, chance = 9000, maxCount = 5},
    {id = 2385, chance = 10100},
    {id = 2238, chance = 9900},
    {id = 2050, chance = 10190},
    {id = 2513, chance = 3850},
    {id = 5091, chance = 1000},
    {id = 6095, chance = 1200},
    {id = 2463, chance = 1130},
    {id = 6126, chance = 510},
    {id = 6098, chance = 420},
    {id = 7588, chance = 670},
    {id = 6097, chance = 450},
    {id = 5926, chance = 430},
    {id = 5792, chance = 40},
    {id = 11219, chance = 9780},
    {id = 5553, chance = 120}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -110},
    {name = "physical", interval = 2000, chance = 20, maxDamage = -100, range = 4}
})

monster:register()
