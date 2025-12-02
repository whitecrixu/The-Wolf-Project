-- Minishabaal
-- Converted from XML

local monster = Game.createMonsterType("Minishabaal")
if not monster then return end

monster:name("Minishabaal")
monster:nameDescription("minishabaal")
monster:health(3500)
monster:maxHealth(3500)
monster:experience(4000)
monster:speed(700)
monster:race(RACE_BLOOD)
monster:corpseId(6364)
monster:outfit({lookType = 237})
monster:defense(25)
monster:armor(25)
monster:runHealth(350)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "I had Princess Lumelia as breakfast!", yell = false},
    {text = "Naaa-Nana-Naaa-Naaa!", yell = false},
    {text = "My brother will come and get you for this!", yell = false},
    {text = "Get them Fluffy!", yell = false},
    {text = "He He He!", yell = false},
    {text = "Pftt, Ferumbras such an upstart!", yell = false},
    {text = "My dragon is not that old, it's just second hand!", yell = false},
    {text = "My other dragon is a red one!", yell = false},
    {text = "When I am big I want to become the ruthless eighth!", yell = false},
    {text = "WHERE'S FLUFFY?", yell = false},
    {text = "Muahaha!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 20},
    {id = 2150, chance = 1428, maxCount = 2},
    {id = 2548, chance = 2857},
    {id = 2432, chance = 666},
    {id = 5944, chance = 909},
    {id = 2520, chance = 200},
    {id = 6500, chance = 1000, maxCount = 2},
    {id = 2470, chance = 180},
    {id = 2148, chance = 100000, maxCount = 20},
    {id = 5944, chance = 909},
    {id = 2488, chance = 800},
    {id = 2515, chance = 1333},
    {id = 2136, chance = 909},
    {id = 2542, chance = 500}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -165},
    {name = "fire", interval = 2000, chance = 10, minDamage = -80, maxDamage = -350, range = 7, radius = 4},
    {name = "fire", interval = 3000, chance = 34, minDamage = -120, maxDamage = -500, range = 7, radius = 2}
})

monster:register()
