-- Undead Gladiator
-- Converted from XML

local monster = Game.createMonsterType("Undead Gladiator")
if not monster then return end

monster:name("Undead Gladiator")
monster:nameDescription("a undead gladiator")
monster:health(1000)
monster:maxHealth(1000)
monster:experience(800)
monster:speed(180)
monster:race(RACE_UNDEAD)
monster:corpseId(9823)
monster:outfit({lookType = 306})
monster:defense(45)
monster:armor(45)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = -10},
    {type = COMBAT_HOLYDAMAGE, percent = 10},
    {type = COMBAT_FIREDAMAGE, percent = 80},
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
    {type = COMBAT_DEATHDAMAGE, percent = -5}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Let's battle it out in a duel!", yell = false},
    {text = "Bring it!", yell = false},
    {text = "I'll fight here in eternity and beyond.", yell = false},
    {text = "I will not give up!", yell = false},
    {text = "Another foolish adventurer who tries to beat me.", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 44000, maxCount = 100},
    {id = 2148, chance = 50500, maxCount = 48},
    {id = 8872, chance = 5000},
    {id = 2465, chance = 4700},
    {id = 2478, chance = 5500},
    {id = 3965, chance = 4200},
    {id = 2666, chance = 15000, maxCount = 2},
    {id = 2419, chance = 11280},
    {id = 2399, chance = 15700, maxCount = 18},
    {id = 2647, chance = 2444},
    {id = 2463, chance = 1700},
    {id = 2200, chance = 2200},
    {id = 2377, chance = 1900},
    {id = 2165, chance = 30},
    {id = 2490, chance = 1460},
    {id = 2497, chance = 100},
    {id = 7618, chance = 350},
    {id = 2430, chance = 280},
    {id = 5885, chance = 210},
    {id = 10573, chance = 5200}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -140},
    {name = "physical", interval = 2000, chance = 20, maxDamage = -135, range = 7}
})

monster:register()
