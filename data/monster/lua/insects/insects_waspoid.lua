-- Waspoid
-- Converted from XML

local monster = Game.createMonsterType("Waspoid")
if not monster then return end

monster:name("Waspoid")
monster:nameDescription("a waspoid")
monster:health(1100)
monster:maxHealth(1100)
monster:experience(830)
monster:speed(210)
monster:race(RACE_VENOM)
monster:corpseId(15396)
monster:outfit({lookType = 462})
monster:defense(25)
monster:armor(25)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_DEATHDAMAGE, percent = 5},
    {type = COMBAT_ENERGYDAMAGE, percent = 25},
    {type = COMBAT_PHYSICALDAMAGE, percent = -5},
    {type = COMBAT_HOLYDAMAGE, percent = -5},
    {type = COMBAT_FIREDAMAGE, percent = -10}
})

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Peeex!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 40000, maxCount = 100},
    {id = 2148, chance = 50000, maxCount = 35},
    {id = 2152, chance = 40430},
    {id = 15484, chance = 13890},
    {id = 15483, chance = 9096},
    {id = 15486, chance = 6060},
    {id = 2144, chance = 4230},
    {id = 2127, chance = 2040},
    {id = 2154, chance = 1040},
    {id = 15490, chance = 230},
    {id = 15492, chance = 330},
    {id = 15491, chance = 120}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -135},
    {name = "earth", interval = 2000, chance = 15, minDamage = -110, maxDamage = -180, radius = 3},
    {name = "earth", interval = 2000, chance = 15, minDamage = -80, maxDamage = -100, range = 7}
})

monster:register()
