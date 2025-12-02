-- Spitter
-- Converted from XML

local monster = Game.createMonsterType("Spitter")
if not monster then return end

monster:name("Spitter")
monster:nameDescription("a spitter")
monster:health(1500)
monster:maxHealth(1500)
monster:experience(1100)
monster:speed(200)
monster:race(RACE_VENOM)
monster:corpseId(15392)
monster:outfit({lookType = 461})
monster:defense(20)
monster:armor(20)
monster:runHealth(150)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:pushable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 5},
    {type = COMBAT_ENERGYDAMAGE, percent = -5},
    {type = COMBAT_DEATHDAMAGE, percent = 5},
    {type = COMBAT_ICEDAMAGE, percent = -5}
})

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Spotz!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 190},
    {id = 2152, chance = 75250},
    {id = 15481, chance = 18000},
    {id = 15486, chance = 15000},
    {id = 2150, chance = 8100, maxCount = 2},
    {id = 7590, chance = 7800},
    {id = 2789, chance = 7500, maxCount = 3},
    {id = 7591, chance = 5000},
    {id = 2169, chance = 2400},
    {id = 7449, chance = 2000},
    {id = 7440, chance = 300},
    {id = 2171, chance = 260},
    {id = 15489, chance = 230},
    {id = 2497, chance = 220},
    {id = 2155, chance = 210},
    {id = 15490, chance = 140}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -150},
    {name = "earth", interval = 2000, chance = 20, minDamage = -100, maxDamage = -150, range = 7, radius = 3},
    {name = "speed", interval = 2000, chance = 15, range = 7},
    {name = "poisoncondition", interval = 2000, chance = 30, minDamage = -12, maxDamage = -12, radius = 5}
})

monster:register()
