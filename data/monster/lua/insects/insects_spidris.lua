-- Spidris
-- Converted from XML

local monster = Game.createMonsterType("Spidris")
if not monster then return end

monster:name("Spidris")
monster:nameDescription("a spidris")
monster:health(3700)
monster:maxHealth(3700)
monster:experience(2600)
monster:speed(260)
monster:race(RACE_VENOM)
monster:corpseId(15296)
monster:outfit({lookType = 457})
monster:defense(30)
monster:armor(30)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_DEATHDAMAGE, percent = 5},
    {type = COMBAT_FIREDAMAGE, percent = 5},
    {type = COMBAT_HOLYDAMAGE, percent = -10},
    {type = COMBAT_ENERGYDAMAGE, percent = -5},
    {type = COMBAT_ICEDAMAGE, percent = -5}
})

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Eeeeeeyyyyh!", yell = false},
    {text = "Iiiiieeeeeh!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 100},
    {id = 2148, chance = 50000, maxCount = 100},
    {id = 2152, chance = 45000, maxCount = 4},
    {id = 15485, chance = 14960},
    {id = 15486, chance = 12500},
    {id = 2147, chance = 11900, maxCount = 5},
    {id = 7590, chance = 11500, maxCount = 2},
    {id = 8473, chance = 6250, maxCount = 2},
    {id = 6300, chance = 2700},
    {id = 7632, chance = 1700},
    {id = 7413, chance = 920},
    {id = 2153, chance = 770},
    {id = 15489, chance = 370},
    {id = 15492, chance = 690},
    {id = 15491, chance = 720}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -145},
    {name = "earth", interval = 2000, chance = 20, minDamage = -150, maxDamage = -310, range = 7, radius = 3}
})

monster:register()
