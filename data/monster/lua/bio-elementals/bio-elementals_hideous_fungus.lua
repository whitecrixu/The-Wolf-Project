-- Hideous Fungus
-- Converted from XML

local monster = Game.createMonsterType("Hideous Fungus")
if not monster then return end

monster:name("Hideous Fungus")
monster:nameDescription("a hideous fungus")
monster:health(4600)
monster:maxHealth(4600)
monster:experience(2900)
monster:speed(260)
monster:race(RACE_VENOM)
monster:corpseId(17428)
monster:outfit({lookType = 499})
monster:defense(35)
monster:armor(35)
monster:runHealth(460)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_HOLYDAMAGE, percent = 5},
    {type = COMBAT_DEATHDAMAGE, percent = 1},
    {type = COMBAT_FIREDAMAGE, percent = 5},
    {type = COMBAT_ENERGYDAMAGE, percent = 15},
    {type = COMBAT_ICEDAMAGE, percent = 15}
})

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Munch munch munch!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 70000, maxCount = 100},
    {id = 2148, chance = 70000, maxCount = 97},
    {id = 2152, chance = 100000, maxCount = 7},
    {id = 18434, chance = 14285},
    {id = 18437, chance = 14500, maxCount = 15},
    {id = 18397, chance = 14500, maxCount = 3},
    {id = 7620, chance = 9090},
    {id = 7590, chance = 7692},
    {id = 7591, chance = 7220},
    {id = 5909, chance = 6430},
    {id = 2391, chance = 4010},
    {id = 5912, chance = 3700},
    {id = 5910, chance = 3003},
    {id = 7886, chance = 2000},
    {id = 7887, chance = 2000},
    {id = 5911, chance = 1820},
    {id = 7885, chance = 920},
    {id = 7884, chance = 800},
    {id = 18411, chance = 590},
    {id = 18454, chance = 60},
    {id = 18393, chance = 20}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -180},
    {name = "earth", interval = 2000, chance = 15, minDamage = -250, maxDamage = -430, range = 7},
    {name = "ice", interval = 2000, chance = 15, minDamage = -250, maxDamage = -550, length = 8, spread = 3},
    {name = "speed", interval = 2000, chance = 10, radius = 1},
    {name = "drunk", interval = 2000, chance = 10, range = 7, radius = 5},
    {name = "poisoncondition", interval = 2000, chance = 10, minDamage = -400, maxDamage = -640, range = 7, radius = 3}
})

monster:register()
