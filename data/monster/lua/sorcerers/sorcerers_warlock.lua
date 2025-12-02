-- Warlock
-- Converted from XML

local monster = Game.createMonsterType("Warlock")
if not monster then return end

monster:name("Warlock")
monster:nameDescription("a warlock")
monster:health(3500)
monster:maxHealth(3500)
monster:experience(4000)
monster:speed(220)
monster:race(RACE_BLOOD)
monster:corpseId(20527)
monster:outfit({lookType = 130, lookHead = 19, lookBody = 71, lookLegs = 128, lookFeet = 128, lookAddons = 1})
monster:defense(20)
monster:armor(20)
monster:runHealth(350)

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
    {text = "Learn the secret of our magic! YOUR death!", yell = false},
    {text = "Even a rat is a better mage than you.", yell = false},
    {text = "We don't like intruders!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 29340, maxCount = 80},
    {id = 2679, chance = 19000, maxCount = 4},
    {id = 2689, chance = 9000},
    {id = 2411, chance = 7600},
    {id = 2047, chance = 1500},
    {id = 2124, chance = 700},
    {id = 2792, chance = 3000},
    {id = 2167, chance = 2200},
    {id = 2600, chance = 1000},
    {id = 2178, chance = 2000},
    {id = 2436, chance = 6370},
    {id = 2151, chance = 1150},
    {id = 7591, chance = 5190},
    {id = 7590, chance = 4760},
    {id = 2656, chance = 1410},
    {id = 7368, chance = 3500, maxCount = 4},
    {id = 2146, chance = 1190},
    {id = 1986, chance = 300},
    {id = 2123, chance = 430},
    {id = 2197, chance = 330},
    {id = 7898, chance = 1000},
    {id = 2466, chance = 240},
    {id = 2114, chance = 60},
    {id = 12410, chance = 510},
    {id = 7368, chance = 3470, maxCount = 4}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -92},
    {name = "energy", interval = 2000, chance = 25, minDamage = -90, maxDamage = -180, range = 7},
    {name = "warlock skill reducer", interval = 2000, chance = 5, range = 5},
    {name = "manadrain", interval = 2000, chance = 10, maxDamage = -120, range = 7},
    {name = "fire", interval = 2000, chance = 20, minDamage = -50, maxDamage = -180, range = 7, radius = 3},
    {name = "firefield", interval = 2000, chance = 10, range = 7, radius = 2},
    {name = "energy", interval = 2000, chance = 10, minDamage = -150, maxDamage = -230, length = 8},
    {name = "speed", interval = 2000, chance = 15, range = 7}
})

monster:register()
