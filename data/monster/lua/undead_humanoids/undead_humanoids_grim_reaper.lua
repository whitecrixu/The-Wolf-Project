-- Grim Reaper
-- Converted from XML

local monster = Game.createMonsterType("Grim Reaper")
if not monster then return end

monster:name("Grim Reaper")
monster:nameDescription("a grim reaper")
monster:health(3900)
monster:maxHealth(3900)
monster:experience(5500)
monster:speed(260)
monster:race(RACE_UNDEAD)
monster:corpseId(8955)
monster:outfit({lookType = 300})
monster:defense(35)
monster:armor(35)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = -10},
    {type = COMBAT_EARTHDAMAGE, percent = 40},
    {type = COMBAT_ICEDAMAGE, percent = 65},
    {type = COMBAT_HOLYDAMAGE, percent = -10},
    {type = COMBAT_PHYSICALDAMAGE, percent = 20},
    {type = COMBAT_DEATHDAMAGE, percent = 80},
    {type = COMBAT_FIREDAMAGE, percent = -10}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Death!", yell = false},
    {text = "Come a little closer!", yell = false},
    {text = "The end is near!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 99000, maxCount = 263},
    {id = 6558, chance = 35000},
    {id = 6500, chance = 10600},
    {id = 7590, chance = 10000},
    {id = 8473, chance = 9600},
    {id = 2550, chance = 9000},
    {id = 10577, chance = 5300},
    {id = 2152, chance = 5200, maxCount = 4},
    {id = 2162, chance = 4850},
    {id = 2521, chance = 3000},
    {id = 9810, chance = 2500},
    {id = 5022, chance = 1400, maxCount = 4},
    {id = 8910, chance = 910},
    {id = 7418, chance = 880},
    {id = 6300, chance = 330},
    {id = 7896, chance = 330},
    {id = 8889, chance = 270}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -320},
    {name = "physical", interval = 2000, chance = 20, maxDamage = -165, range = 7},
    {name = "death", interval = 2000, chance = 10, minDamage = -350, maxDamage = -720, length = 8},
    {name = "physical", interval = 2000, chance = 15, maxDamage = -300, length = 7, spread = 3},
    {name = "death", interval = 2000, chance = 10, minDamage = -225, maxDamage = -275, radius = 4}
})

monster:register()
