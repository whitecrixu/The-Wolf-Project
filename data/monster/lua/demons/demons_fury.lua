-- Fury
-- Converted from XML

local monster = Game.createMonsterType("Fury")
if not monster then return end

monster:name("Fury")
monster:nameDescription("a fury")
monster:health(4100)
monster:maxHealth(4100)
monster:experience(4500)
monster:speed(250)
monster:race(RACE_BLOOD)
monster:corpseId(20399)
monster:outfit({lookType = 149, lookHead = 94, lookBody = 77, lookLegs = 96, lookAddons = 3})
monster:defense(20)
monster:armor(20)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ICEDAMAGE, percent = 30},
    {type = COMBAT_HOLYDAMAGE, percent = 30},
    {type = COMBAT_DEATHDAMAGE, percent = -10},
    {type = COMBAT_ENERGYDAMAGE, percent = -10},
    {type = COMBAT_EARTHDAMAGE, percent = -10},
    {type = COMBAT_PHYSICALDAMAGE, percent = -10}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_FIRE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Ahhhhrrrr!", yell = false},
    {text = "Waaaaah!", yell = false},
    {text = "Carnage!", yell = false},
    {text = "Dieee!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 30000, maxCount = 100},
    {id = 2148, chance = 30000, maxCount = 100},
    {id = 2148, chance = 38000, maxCount = 69},
    {id = 2152, chance = 2800, maxCount = 4},
    {id = 6558, chance = 35000, maxCount = 3},
    {id = 6500, chance = 22500},
    {id = 2470, chance = 130},
    {id = 7591, chance = 10500},
    {id = 2666, chance = 25000},
    {id = 7456, chance = 2000},
    {id = 5022, chance = 1500, maxCount = 4},
    {id = 5911, chance = 4000},
    {id = 9813, chance = 1920},
    {id = 2120, chance = 8000, maxCount = 3},
    {id = 5944, chance = 21500},
    {id = 2645, chance = 790},
    {id = 2181, chance = 20000},
    {id = 7404, chance = 660},
    {id = 5944, chance = 50},
    {id = 2124, chance = 410},
    {id = 8844, chance = 29280, maxCount = 4},
    {id = 6301, chance = 60}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -220},
    {name = "fire", interval = 2000, chance = 10, minDamage = -200, maxDamage = -300, length = 8, spread = 3},
    {name = "death", interval = 2000, chance = 5, minDamage = -120, maxDamage = -700, length = 8},
    {name = "death", interval = 2000, chance = 10, minDamage = -120, maxDamage = -300, radius = 4},
    {name = "fury skill reducer", interval = 2000, chance = 5},
    {name = "lifedrain", interval = 2000, chance = 10, minDamage = -120, maxDamage = -300, radius = 3},
    {name = "death", interval = 2000, chance = 10, minDamage = -125, maxDamage = -250, range = 7},
    {name = "speed", interval = 2000, chance = 15, range = 7}
})

monster:register()
