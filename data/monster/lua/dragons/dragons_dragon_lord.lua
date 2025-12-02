-- Dragon Lord
-- Converted from XML

local monster = Game.createMonsterType("Dragon Lord")
if not monster then return end

monster:name("Dragon Lord")
monster:nameDescription("a dragon lord")
monster:health(1900)
monster:maxHealth(1900)
monster:experience(2100)
monster:speed(200)
monster:race(RACE_BLOOD)
monster:corpseId(5984)
monster:outfit({lookType = 39})
monster:defense(35)
monster:armor(35)
monster:runHealth(190)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = 80},
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
    {type = COMBAT_ICEDAMAGE, percent = -10}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_FIRE, immunity = true}
})

-- Voices
monster:voices({
    {text = "ZCHHHHH", yell = true},
    {text = "YOU WILL BURN!", yell = true}
})

-- Loot
monster:loot({
    {id = 2148, chance = 33750, maxCount = 100},
    {id = 2148, chance = 33750, maxCount = 100},
    {id = 2148, chance = 33750, maxCount = 45},
    {id = 1976, chance = 9000},
    {id = 2672, chance = 80000, maxCount = 5},
    {id = 7399, chance = 80},
    {id = 2167, chance = 5250},
    {id = 2392, chance = 290},
    {id = 2033, chance = 3190},
    {id = 2796, chance = 12000},
    {id = 2177, chance = 680},
    {id = 2547, chance = 6700, maxCount = 7},
    {id = 5948, chance = 1040},
    {id = 5882, chance = 1920},
    {id = 2498, chance = 280},
    {id = 7378, chance = 8800, maxCount = 3},
    {id = 2146, chance = 5300},
    {id = 2479, chance = 360},
    {id = 7588, chance = 970},
    {id = 2528, chance = 250},
    {id = 7402, chance = 100},
    {id = 2492, chance = 170}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -145},
    {name = "fire", interval = 2000, chance = 20, minDamage = -100, maxDamage = -200, range = 7, radius = 4},
    {name = "firefield", interval = 2000, chance = 10, range = 7, radius = 4},
    {name = "fire", interval = 2000, chance = 15, minDamage = -150, maxDamage = -230, length = 8, spread = 3}
})

monster:register()
