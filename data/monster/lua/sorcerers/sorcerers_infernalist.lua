-- Infernalist
-- Converted from XML

local monster = Game.createMonsterType("Infernalist")
if not monster then return end

monster:name("Infernalist")
monster:nameDescription("an infernalist")
monster:health(3650)
monster:maxHealth(3650)
monster:experience(4000)
monster:speed(220)
monster:race(RACE_BLOOD)
monster:corpseId(20427)
monster:outfit({lookType = 130, lookHead = 78, lookBody = 76, lookLegs = 94, lookFeet = 115, lookAddons = 2})
monster:defense(15)
monster:armor(15)
monster:runHealth(365)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = 95},
    {type = COMBAT_PHYSICALDAMAGE, percent = -5},
    {type = COMBAT_ICEDAMAGE, percent = -5},
    {type = COMBAT_HOLYDAMAGE, percent = 20},
    {type = COMBAT_DEATHDAMAGE, percent = 5}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_ENERGY, immunity = true},
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Nothing will remain but your scorched bones!", yell = false},
    {text = "Some like it hot!", yell = false},
    {text = "It's cooking time!", yell = false},
    {text = "Feel the heat of battle!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 56500, maxCount = 100},
    {id = 2148, chance = 40000, maxCount = 47},
    {id = 7590, chance = 19700},
    {id = 7591, chance = 1900},
    {id = 8840, chance = 8500, maxCount = 5},
    {id = 2436, chance = 6500},
    {id = 7760, chance = 4250},
    {id = 5911, chance = 1420},
    {id = 2167, chance = 1800},
    {id = 8902, chance = 370},
    {id = 5904, chance = 600},
    {id = 1986, chance = 300},
    {id = 9971, chance = 70},
    {id = 9969, chance = 820},
    {id = 7891, chance = 300},
    {id = 9980, chance = 220},
    {id = 2114, chance = 220},
    {id = 9958, chance = 520}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -80},
    {name = "fire", interval = 2000, chance = 40, minDamage = -65, maxDamage = -180, range = 7},
    {name = "fire", interval = 2000, chance = 20, minDamage = -90, maxDamage = -180, range = 7, radius = 3},
    {name = "manadrain", interval = 2000, chance = 20, minDamage = -53, maxDamage = -120, range = 7, radius = 3},
    {name = "firefield", interval = 2000, chance = 15, range = 7, radius = 3},
    {name = "fire", interval = 2000, chance = 10, minDamage = -150, maxDamage = -250, length = 8},
    {name = "physical", interval = 2000, chance = 5, minDamage = -100, maxDamage = -150, radius = 2}
})

monster:register()
