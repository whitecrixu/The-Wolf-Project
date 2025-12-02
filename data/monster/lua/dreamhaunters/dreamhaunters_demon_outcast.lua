-- Demon Outcast
-- Converted from XML

local monster = Game.createMonsterType("Demon Outcast")
if not monster then return end

monster:name("Demon Outcast")
monster:nameDescription("Demon Outcast")
monster:health(6900)
monster:maxHealth(6900)
monster:experience(6200)
monster:speed(280)
monster:race(RACE_BLOOD)
monster:corpseId(22549)
monster:outfit({lookType = 590})
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
    {type = COMBAT_PHYSICALDAMAGE, percent = 20},
    {type = COMBAT_DEATHDAMAGE, percent = 5},
    {type = COMBAT_ENERGYDAMAGE, percent = -5},
    {type = COMBAT_ICEDAMAGE, percent = 5},
    {type = COMBAT_EARTHDAMAGE, percent = 40},
    {type = COMBAT_HOLYDAMAGE, percent = -5}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Back in the evil business!", yell = false},
    {text = "This prison break will have casualties!", yell = false},
    {text = "At last someone to hurt", yell = false},
    {text = "No one will imprison me again!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 100},
    {id = 2152, chance = 100000, maxCount = 6},
    {id = 2145, chance = 10000, maxCount = 5},
    {id = 2146, chance = 10000, maxCount = 5},
    {id = 2147, chance = 12000, maxCount = 5},
    {id = 2149, chance = 10000, maxCount = 5},
    {id = 2164, chance = 910},
    {id = 2165, chance = 1300},
    {id = 2171, chance = 1000},
    {id = 2214, chance = 3000},
    {id = 2393, chance = 2000},
    {id = 2396, chance = 660},
    {id = 2462, chance = 910},
    {id = 2497, chance = 740},
    {id = 2519, chance = 740},
    {id = 2520, chance = 170},
    {id = 7382, chance = 350},
    {id = 6550, chance = 1000},
    {id = 2795, chance = 20600, maxCount = 6},
    {id = 7368, chance = 8340, maxCount = 10},
    {id = 7590, chance = 18000, maxCount = 2},
    {id = 8473, chance = 20500, maxCount = 3},
    {id = 9970, chance = 9300, maxCount = 5},
    {id = 22396, chance = 410}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -170},
    {name = "energy", interval = 2000, chance = 10, minDamage = -250, maxDamage = -450, length = 6},
    {name = "energy", interval = 2000, chance = 10, minDamage = -350, maxDamage = -550, length = 8},
    {name = "energy", interval = 2000, chance = 20, minDamage = -100, maxDamage = -250, radius = 3},
    {name = "demon outcast skill reducer", interval = 2000, chance = 10, range = 5},
    {name = "manadrain", interval = 2000, chance = 10, minDamage = -80, maxDamage = -150, radius = 4}
})

monster:register()
