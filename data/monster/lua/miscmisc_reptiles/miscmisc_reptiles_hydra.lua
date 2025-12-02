-- Hydra
-- Converted from XML

local monster = Game.createMonsterType("Hydra")
if not monster then return end

monster:name("Hydra")
monster:nameDescription("a hydra")
monster:health(2350)
monster:maxHealth(2350)
monster:experience(2100)
monster:speed(250)
monster:race(RACE_BLOOD)
monster:corpseId(6048)
monster:outfit({lookType = 121})
monster:defense(35)
monster:armor(35)
monster:runHealth(235)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ICEDAMAGE, percent = 50},
    {type = COMBAT_HOLYDAMAGE, percent = 30},
    {type = COMBAT_PHYSICALDAMAGE, percent = -5},
    {type = COMBAT_ENERGYDAMAGE, percent = -10}
})

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {type = COMBAT_LIFEDRAIN, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "FCHHHHH", yell = false},
    {text = "HISSSS", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 34000, maxCount = 100},
    {id = 2148, chance = 34000, maxCount = 100},
    {id = 2148, chance = 20000, maxCount = 46},
    {id = 2152, chance = 48000, maxCount = 3},
    {id = 2671, chance = 60000, maxCount = 4},
    {id = 7589, chance = 380},
    {id = 2177, chance = 570},
    {id = 2197, chance = 900},
    {id = 2146, chance = 5000},
    {id = 4850, chance = 930},
    {id = 2214, chance = 1190},
    {id = 2475, chance = 890},
    {id = 2476, chance = 1000},
    {id = 2536, chance = 270},
    {id = 2498, chance = 210},
    {id = 2195, chance = 130},
    {id = 11199, chance = 10120},
    {id = 8842, chance = 4780}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -140},
    {name = "speed", interval = 2000, chance = 25, range = 7, radius = 4},
    {name = "ice", interval = 2000, chance = 10, minDamage = -100, maxDamage = -250, length = 8, spread = 3},
    {name = "icicle", interval = 2000, chance = 10, minDamage = -80, maxDamage = -155},
    {name = "earth", interval = 2000, chance = 10, minDamage = -66, maxDamage = -320, length = 8, spread = 3}
})

monster:register()
