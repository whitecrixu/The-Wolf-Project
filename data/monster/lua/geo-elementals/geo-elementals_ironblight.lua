-- Ironblight
-- Converted from XML

local monster = Game.createMonsterType("Ironblight")
if not monster then return end

monster:name("Ironblight")
monster:nameDescription("ironblight")
monster:health(6600)
monster:maxHealth(6600)
monster:experience(4400)
monster:speed(220)
monster:race(RACE_UNDEAD)
monster:corpseId(17424)
monster:outfit({lookType = 498})
monster:defense(35)
monster:armor(35)
monster:runHealth(660)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_DEATHDAMAGE, percent = 50},
    {type = COMBAT_ICEDAMAGE, percent = 20},
    {type = COMBAT_FIREDAMAGE, percent = 60},
    {type = COMBAT_ENERGYDAMAGE, percent = 25}
})

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Clonk!", yell = false},
    {text = "Yowl!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 199},
    {id = 2152, chance = 100000, maxCount = 8},
    {id = 2150, chance = 15020, maxCount = 3},
    {id = 2149, chance = 10890, maxCount = 3},
    {id = 7590, chance = 17640},
    {id = 10571, chance = 21230},
    {id = 8473, chance = 18330},
    {id = 11227, chance = 15230},
    {id = 2156, chance = 3510},
    {id = 2158, chance = 480},
    {id = 18420, chance = 10540},
    {id = 18421, chance = 10540},
    {id = 18415, chance = 5720},
    {id = 18417, chance = 12610, maxCount = 2},
    {id = 18432, chance = 18400},
    {id = 9942, chance = 4480},
    {id = 9980, chance = 2480},
    {id = 5904, chance = 830},
    {id = 2245, chance = 620},
    {id = 2438, chance = 480},
    {id = 7437, chance = 480},
    {id = 8855, chance = 210},
    {id = 18412, chance = 960},
    {id = 8912, chance = 1720},
    {id = 11368, chance = 210},
    {id = 7885, chance = 1110}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -150},
    {name = "poisoncondition", interval = 2000, chance = 10, minDamage = -460, maxDamage = -480, radius = 6},
    {name = "ice", interval = 2000, chance = 15, minDamage = -260, maxDamage = -350, length = 7},
    {name = "earth", interval = 2000, chance = 20, minDamage = -180, maxDamage = -250, radius = 2},
    {name = "speed", interval = 2000, chance = 10, length = 5, spread = 3}
})

monster:register()
