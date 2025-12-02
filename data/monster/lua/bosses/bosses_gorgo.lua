-- Gorgo
-- Converted from XML

local monster = Game.createMonsterType("Gorgo")
if not monster then return end

monster:name("Gorgo")
monster:nameDescription("Gorgo")
monster:health(4500)
monster:maxHealth(4500)
monster:experience(7000)
monster:speed(280)
monster:race(RACE_BLOOD)
monster:corpseId(10524)
monster:outfit({lookType = 330})
monster:defense(30)
monster:armor(30)
monster:runHealth(450)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ICEDAMAGE, percent = 20},
    {type = COMBAT_FIREDAMAGE, percent = -5},
    {type = COMBAT_ENERGYDAMAGE, percent = -10}
})

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {type = COMBAT_LIFEDRAIN, combat = true},
    {condition = CONDITION_DROWN, immunity = true}
})

-- Loot
monster:loot({
    {id = 2536, chance = 100000},
    {id = 2152, chance = 100000, maxCount = 20},
    {id = 11226, chance = 100000},
    {id = 7590, chance = 87000, maxCount = 2},
    {id = 10219, chance = 60000},
    {id = 8473, chance = 60000, maxCount = 2},
    {id = 2149, chance = 46470, maxCount = 4},
    {id = 7887, chance = 46470},
    {id = 7884, chance = 46470},
    {id = 7885, chance = 33300},
    {id = 7413, chance = 33300}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -450},
    {name = "lifedrain", interval = 2000, chance = 20, minDamage = -21, maxDamage = -350, range = 7},
    {name = "earth", interval = 2000, chance = 15, minDamage = -250, maxDamage = -500, length = 8, spread = 3},
    {name = "speed", interval = 2000, chance = 25, radius = 7},
    {name = "outfit", interval = 2000, chance = 1, range = 7}
})

monster:register()
