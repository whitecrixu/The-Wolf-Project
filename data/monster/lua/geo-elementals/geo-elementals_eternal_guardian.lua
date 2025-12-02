-- Eternal Guardian
-- Converted from XML

local monster = Game.createMonsterType("Eternal Guardian")
if not monster then return end

monster:name("Eternal Guardian")
monster:nameDescription("a eternal guardian")
monster:health(2500)
monster:maxHealth(2500)
monster:experience(1800)
monster:speed(180)
monster:race(RACE_UNDEAD)
monster:corpseId(11300)
monster:outfit({lookType = 345})
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
    {type = COMBAT_DEATHDAMAGE, percent = 20},
    {type = COMBAT_FIREDAMAGE, percent = 70},
    {type = COMBAT_HOLYDAMAGE, percent = 20},
    {type = COMBAT_ENERGYDAMAGE, percent = 10},
    {type = COMBAT_ICEDAMAGE, percent = 10},
    {type = COMBAT_PHYSICALDAMAGE, percent = 25}
})

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_DROWN, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Zzrkrrch!", yell = false},
    {text = "<crackle>", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 99930, maxCount = 100},
    {id = 2152, chance = 99540, maxCount = 4},
    {id = 1294, chance = 30230, maxCount = 10},
    {id = 11227, chance = 800},
    {id = 10549, chance = 20020},
    {id = 11325, chance = 9960},
    {id = 11323, chance = 1860},
    {id = 13757, chance = 400},
    {id = 5880, chance = 1700},
    {id = 11339, chance = 720},
    {id = 11343, chance = 430},
    {id = 2528, chance = 820},
    {id = 2427, chance = 560},
    {id = 11307, chance = 100}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -150}
})

monster:register()
