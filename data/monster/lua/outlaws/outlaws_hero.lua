-- Hero
-- Converted from XML

local monster = Game.createMonsterType("Hero")
if not monster then return end

monster:name("Hero")
monster:nameDescription("a hero")
monster:health(1400)
monster:maxHealth(1400)
monster:experience(1200)
monster:speed(240)
monster:race(RACE_BLOOD)
monster:corpseId(20415)
monster:outfit({lookType = 73})
monster:defense(40)
monster:armor(40)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 40},
    {type = COMBAT_ICEDAMAGE, percent = 10},
    {type = COMBAT_FIREDAMAGE, percent = 30},
    {type = COMBAT_HOLYDAMAGE, percent = 50},
    {type = COMBAT_EARTHDAMAGE, percent = 50},
    {type = COMBAT_PHYSICALDAMAGE, percent = 30},
    {type = COMBAT_DEATHDAMAGE, percent = -20}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Let's have a fight!", yell = false},
    {text = "Welcome to my battleground.", yell = false},
    {text = "Have you seen princess Lumelia?", yell = false},
    {text = "I will sing a tune at your grave.", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 59500, maxCount = 100},
    {id = 2544, chance = 26000, maxCount = 13},
    {id = 12466, chance = 5000},
    {id = 12406, chance = 930},
    {id = 2120, chance = 2190},
    {id = 1949, chance = 45000},
    {id = 2071, chance = 1640},
    {id = 2652, chance = 8000},
    {id = 2456, chance = 13300},
    {id = 2661, chance = 1110},
    {id = 2666, chance = 8200, maxCount = 3},
    {id = 2681, chance = 19850},
    {id = 2744, chance = 20450},
    {id = 2121, chance = 4910},
    {id = 2377, chance = 1500},
    {id = 7364, chance = 11400, maxCount = 4},
    {id = 2391, chance = 870},
    {id = 5911, chance = 2006},
    {id = 2487, chance = 490},
    {id = 2519, chance = 280},
    {id = 2491, chance = 450},
    {id = 2392, chance = 550},
    {id = 7591, chance = 720},
    {id = 2114, chance = 80},
    {id = 2164, chance = 470},
    {id = 2488, chance = 660}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -130},
    {name = "physical", interval = 2000, chance = 20, maxDamage = -120, range = 7}
})

monster:register()
