-- Draken Spellweaver
-- Converted from XML

local monster = Game.createMonsterType("Draken Spellweaver")
if not monster then return end

monster:name("Draken Spellweaver")
monster:nameDescription("a draken spellweaver")
monster:health(5000)
monster:maxHealth(5000)
monster:experience(3100)
monster:speed(210)
monster:race(RACE_BLOOD)
monster:corpseId(11316)
monster:outfit({lookType = 340})
monster:defense(25)
monster:armor(25)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_DEATHDAMAGE, percent = 75},
    {type = COMBAT_HOLYDAMAGE, percent = -5},
    {type = COMBAT_ENERGYDAMAGE, percent = -10},
    {type = COMBAT_ICEDAMAGE, percent = -10},
    {type = COMBAT_PHYSICALDAMAGE, percent = -10}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Kazzzzuuuum!!", yell = false},
    {text = "Fissziss!", yell = false},
    {text = "Zzzzzooom!!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 41000, maxCount = 100},
    {id = 2148, chance = 58000, maxCount = 100},
    {id = 2152, chance = 25510, maxCount = 5},
    {id = 2147, chance = 6910, maxCount = 5},
    {id = 8871, chance = 1450},
    {id = 2666, chance = 30400},
    {id = 13294, chance = 30},
    {id = 11303, chance = 1980},
    {id = 2187, chance = 1660},
    {id = 11314, chance = 19790},
    {id = 7590, chance = 4970},
    {id = 2123, chance = 370},
    {id = 13538, chance = 180},
    {id = 12410, chance = 1980},
    {id = 11355, chance = 620},
    {id = 11315, chance = 10},
    {id = 12614, chance = 3930},
    {id = 11356, chance = 770},
    {id = 2155, chance = 970}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -133},
    {name = "fire", interval = 2000, chance = 10, minDamage = -240, maxDamage = -480, length = 4, spread = 3},
    {name = "fire", interval = 2000, chance = 10, minDamage = -100, maxDamage = -250, range = 7},
    {name = "energy", interval = 2000, chance = 10, minDamage = -150, maxDamage = -300, range = 7},
    {name = "earth", interval = 2000, chance = 10, minDamage = -200, maxDamage = -380, radius = 4},
    {name = "soulfire", interval = 2000, chance = 10},
    {name = "poisoncondition", interval = 2000, chance = 10, minDamage = -280, maxDamage = -360}
})

monster:register()
