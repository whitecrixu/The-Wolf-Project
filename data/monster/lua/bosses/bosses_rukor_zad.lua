-- Rukor Zad
-- Converted from XML

local monster = Game.createMonsterType("Rukor Zad")
if not monster then return end

monster:name("Rukor Zad")
monster:nameDescription("Rukor Zad")
monster:health(380)
monster:maxHealth(380)
monster:experience(380)
monster:speed(215)
monster:race(RACE_BLOOD)
monster:corpseId(20578)
monster:outfit({lookType = 152, lookHead = 114, lookBody = 95, lookLegs = 95, lookFeet = 95, lookAddons = 3})
monster:defense(15)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = -5},
    {type = COMBAT_DEATHDAMAGE, percent = -5}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "I can kill a man in a thousand ways. And that`s only with a spoon!", yell = false},
    {text = "You shouldn't have come here!", yell = false},
    {text = "Haiiii!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 93210, maxCount = 50},
    {id = 2050, chance = 35000, maxCount = 2},
    {id = 2403, chance = 19750},
    {id = 2399, chance = 9210, maxCount = 14},
    {id = 7366, chance = 6200, maxCount = 7},
    {id = 2404, chance = 5000},
    {id = 2457, chance = 4190},
    {id = 2510, chance = 2910},
    {id = 2513, chance = 2560},
    {id = 2509, chance = 1940},
    {id = 3968, chance = 1480},
    {id = 3969, chance = 1240},
    {id = 2145, chance = 1220}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -170},
    {name = "physical", interval = 2000, chance = 15, maxDamage = -100, range = 7},
    {name = "physical", interval = 2000, chance = 15, maxDamage = -100, range = 7},
    {name = "poisoncondition", interval = 2000, chance = 10, minDamage = -8, maxDamage = -8, range = 7},
    {name = "drunk", interval = 3000, chance = 34, range = 7}
})

monster:register()
