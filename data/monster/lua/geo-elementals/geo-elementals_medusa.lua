-- Medusa
-- Converted from XML

local monster = Game.createMonsterType("Medusa")
if not monster then return end

monster:name("Medusa")
monster:nameDescription("a medusa")
monster:health(4500)
monster:maxHealth(4500)
monster:experience(4050)
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

-- Voices
monster:voices({
    {text = "You will make ssuch a fine ssstatue!", yell = false},
    {text = "There isss no chhhanccce of esscape", yell = false},
    {text = "Jusssst look at me!", yell = false},
    {text = "Are you tired or why are you moving thhat sslow<chuckle>", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 100},
    {id = 2148, chance = 50000, maxCount = 90},
    {id = 2152, chance = 74810, maxCount = 6},
    {id = 2149, chance = 3770, maxCount = 4},
    {id = 7887, chance = 4060},
    {id = 8473, chance = 9290, maxCount = 2},
    {id = 2536, chance = 3040},
    {id = 7590, chance = 10000, maxCount = 2},
    {id = 11226, chance = 9900},
    {id = 7885, chance = 420},
    {id = 7413, chance = 1160},
    {id = 7884, chance = 870},
    {id = 10219, chance = 850},
    {id = 2476, chance = 1840},
    {id = 9810, chance = 500}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -180},
    {name = "lifedrain", interval = 2000, chance = 20, minDamage = -21, maxDamage = -350, range = 7},
    {name = "earth", interval = 2000, chance = 15, minDamage = -250, maxDamage = -500, length = 8, spread = 3},
    {name = "speed", interval = 2000, chance = 25, radius = 7},
    {name = "outfit", interval = 2000, chance = 1, range = 7}
})

monster:register()
