-- Cyclops Smith
-- Converted from XML

local monster = Game.createMonsterType("Cyclops Smith")
if not monster then return end

monster:name("Cyclops Smith")
monster:nameDescription("a cyclops smith")
monster:health(435)
monster:maxHealth(435)
monster:experience(255)
monster:speed(210)
monster:race(RACE_BLOOD)
monster:manaCost(695)
monster:corpseId(7740)
monster:outfit({lookType = 277})
monster:defense(25)
monster:armor(25)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isConvinceable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
    {type = COMBAT_FIREDAMAGE, percent = 10},
    {type = COMBAT_HOLYDAMAGE, percent = 1},
    {type = COMBAT_EARTHDAMAGE, percent = -10},
    {type = COMBAT_DEATHDAMAGE, percent = -5}
})

-- Voices
monster:voices({
    {text = "Outis emoi g' onoma.", yell = false},
    {text = "Whack da humy!", yell = false},
    {text = "Ai humy phary ty kaynon", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 82920, maxCount = 70},
    {id = 2666, chance = 49950},
    {id = 2513, chance = 6190},
    {id = 2417, chance = 5200},
    {id = 2510, chance = 2000},
    {id = 2378, chance = 5450},
    {id = 2442, chance = 2000},
    {id = 2387, chance = 880},
    {id = 2490, chance = 200},
    {id = 7398, chance = 140},
    {id = 7588, chance = 390},
    {id = 2209, chance = 90},
    {id = 7452, chance = 150},
    {id = 10574, chance = 10280}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -100},
    {name = "physical", interval = 2000, chance = 10, maxDamage = -70, range = 7},
    {name = "drunk", interval = 2000, chance = 10}
})

monster:register()
