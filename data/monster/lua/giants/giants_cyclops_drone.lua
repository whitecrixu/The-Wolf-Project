-- Cyclops Drone
-- Converted from XML

local monster = Game.createMonsterType("Cyclops Drone")
if not monster then return end

monster:name("Cyclops Drone")
monster:nameDescription("a cyclops drone")
monster:health(325)
monster:maxHealth(325)
monster:experience(200)
monster:speed(205)
monster:race(RACE_BLOOD)
monster:manaCost(525)
monster:corpseId(7847)
monster:outfit({lookType = 280})
monster:defense(20)
monster:armor(20)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isConvinceable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 10},
    {type = COMBAT_ICEDAMAGE, percent = 20},
    {type = COMBAT_HOLYDAMAGE, percent = 1},
    {type = COMBAT_EARTHDAMAGE, percent = -10},
    {type = COMBAT_DEATHDAMAGE, percent = -5}
})

-- Voices
monster:voices({
    {text = "Fee! Fie! Foe! Fum!", yell = false},
    {text = "Luttl pest!", yell = false},
    {text = "Me makking you pulp!", yell = false},
    {text = "Humy tasy! Hum hum!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 82000, maxCount = 30},
    {id = 2666, chance = 50430, maxCount = 2},
    {id = 2406, chance = 8000},
    {id = 2510, chance = 2000},
    {id = 2513, chance = 1600},
    {id = 2381, chance = 680},
    {id = 7398, chance = 120},
    {id = 2490, chance = 190},
    {id = 7588, chance = 520},
    {id = 2209, chance = 90},
    {id = 10574, chance = 6750}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -90},
    {name = "physical", interval = 2000, chance = 35, maxDamage = -80, range = 7}
})

monster:register()
