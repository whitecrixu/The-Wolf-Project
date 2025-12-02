-- Hellhound
-- Converted from XML

local monster = Game.createMonsterType("Hellhound")
if not monster then return end

monster:name("Hellhound")
monster:nameDescription("a hellhound")
monster:health(7500)
monster:maxHealth(7500)
monster:experience(6800)
monster:speed(280)
monster:race(RACE_BLOOD)
monster:corpseId(6332)
monster:outfit({lookType = 240})
monster:defense(40)
monster:armor(40)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = 20},
    {type = COMBAT_ENERGYDAMAGE, percent = 10},
    {type = COMBAT_ICEDAMAGE, percent = -5},
    {type = COMBAT_HOLYDAMAGE, percent = -25}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_FIRE, immunity = true}
})

-- Voices
monster:voices({
    {text = "GROOOWL!", yell = false},
    {text = "GRRRRR!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 100},
    {id = 2152, chance = 100000, maxCount = 7},
    {id = 2671, chance = 30930, maxCount = 14},
    {id = 7368, chance = 38000, maxCount = 10},
    {id = 2144, chance = 9400, maxCount = 4},
    {id = 2231, chance = 1000},
    {id = 6558, chance = 31000, maxCount = 2},
    {id = 6500, chance = 17000},
    {id = 9971, chance = 1500},
    {id = 9810, chance = 4500},
    {id = 2393, chance = 950},
    {id = 5944, chance = 53000},
    {id = 2430, chance = 10810},
    {id = 2383, chance = 16310},
    {id = 6553, chance = 400},
    {id = 10554, chance = 18000},
    {id = 7894, chance = 1270},
    {id = 2392, chance = 6900},
    {id = 4873, chance = 130},
    {id = 2187, chance = 9000},
    {id = 7591, chance = 15150, maxCount = 2},
    {id = 7590, chance = 15150, maxCount = 3}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -200},
    {name = "earth", interval = 2000, chance = 5, minDamage = -300, maxDamage = -700, length = 8, spread = 3},
    {name = "death", interval = 2000, chance = 10, minDamage = -395, maxDamage = -498, range = 7},
    {name = "fire", interval = 2000, chance = 10, minDamage = -350, maxDamage = -660, length = 8, spread = 3},
    {name = "lifedrain", interval = 2000, chance = 10, minDamage = -350, maxDamage = -976, length = 8, spread = 3},
    {name = "fire", interval = 2000, chance = 10, minDamage = -200, maxDamage = -403, radius = 1},
    {name = "earth", interval = 2000, chance = 5, minDamage = -300, maxDamage = -549, range = 7}
})

monster:register()
