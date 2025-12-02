-- Zarabustor
-- Converted from XML

local monster = Game.createMonsterType("Zarabustor")
if not monster then return end

monster:name("Zarabustor")
monster:nameDescription("zarabustor")
monster:health(5100)
monster:maxHealth(5100)
monster:experience(8000)
monster:speed(220)
monster:race(RACE_BLOOD)
monster:corpseId(20554)
monster:outfit({lookType = 130, lookBody = 77, lookLegs = 92, lookFeet = 115, lookAddons = 1})
monster:defense(20)
monster:armor(20)
monster:runHealth(510)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = 95},
    {type = COMBAT_HOLYDAMAGE, percent = -5},
    {type = COMBAT_PHYSICALDAMAGE, percent = -5}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_ENERGY, immunity = true},
    {type = COMBAT_ICEDAMAGE, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Killing is such a splendid diversion from my studies.", yell = false},
    {text = "Time to test my newest spells!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 32000, maxCount = 80},
    {id = 2679, chance = 21000, maxCount = 4},
    {id = 2689, chance = 11000},
    {id = 2411, chance = 9600},
    {id = 2436, chance = 8330},
    {id = 7591, chance = 7190},
    {id = 7590, chance = 6760},
    {id = 7368, chance = 5500, maxCount = 4},
    {id = 2792, chance = 5000},
    {id = 2167, chance = 4200},
    {id = 2178, chance = 4000},
    {id = 2047, chance = 3500},
    {id = 2656, chance = 3390},
    {id = 2146, chance = 3190},
    {id = 2151, chance = 3160},
    {id = 7898, chance = 3040},
    {id = 2600, chance = 3000},
    {id = 2124, chance = 2670},
    {id = 12410, chance = 2500},
    {id = 2123, chance = 2420},
    {id = 2197, chance = 2320},
    {id = 1986, chance = 2310},
    {id = 2466, chance = 2240},
    {id = 2114, chance = 2060}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -130},
    {name = "fire", interval = 2000, chance = 20, maxDamage = -250, range = 7, radius = 3},
    {name = "firefield", interval = 2000, chance = 10, range = 7, radius = 2},
    {name = "physical", interval = 2000, chance = 25, maxDamage = -250, range = 7},
    {name = "energy", interval = 2000, chance = 10, minDamage = -130, maxDamage = -350, length = 8},
    {name = "manadrain", interval = 2000, chance = 10, maxDamage = -250, range = 7},
    {name = "speed", interval = 2000, chance = 15, range = 7},
    {name = "warlock skill reducer", interval = 2000, chance = 5, range = 5}
})

monster:register()
