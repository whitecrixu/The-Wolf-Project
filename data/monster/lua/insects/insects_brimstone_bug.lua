-- Brimstone Bug
-- Converted from XML

local monster = Game.createMonsterType("Brimstone Bug")
if not monster then return end

monster:name("Brimstone Bug")
monster:nameDescription("a brimstone bug")
monster:health(1300)
monster:maxHealth(1300)
monster:experience(900)
monster:speed(200)
monster:race(RACE_VENOM)
monster:corpseId(12527)
monster:outfit({lookType = 352})
monster:defense(25)
monster:armor(25)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = -10},
    {type = COMBAT_ICEDAMAGE, percent = -10},
    {type = COMBAT_HOLYDAMAGE, percent = -10},
    {type = COMBAT_ENERGYDAMAGE, percent = -10},
    {type = COMBAT_PHYSICALDAMAGE, percent = -5}
})

-- Immunities
monster:immunities({
    {type = COMBAT_LIFEDRAIN, combat = true},
    {type = COMBAT_DEATHDAMAGE, combat = true},
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Chrrr!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 100},
    {id = 2148, chance = 50000, maxCount = 100},
    {id = 10557, chance = 50000},
    {id = 11222, chance = 20000},
    {id = 11232, chance = 14970},
    {id = 12659, chance = 10000},
    {id = 7589, chance = 9025},
    {id = 7588, chance = 9003},
    {id = 12658, chance = 5710},
    {id = 2149, chance = 2702, maxCount = 4},
    {id = 5904, chance = 1639},
    {id = 2165, chance = 892},
    {id = 2171, chance = 110}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -125},
    {name = "speed", interval = 2000, chance = 20, range = 7},
    {name = "earth", interval = 2000, chance = 5, minDamage = -140, maxDamage = -310, radius = 6},
    {name = "manadrain", interval = 2000, chance = 10, minDamage = -130, maxDamage = -200, length = 6},
    {name = "poison", interval = 2000, chance = 15, minDamage = -80, maxDamage = -120, length = 8, spread = 3}
})

monster:register()
