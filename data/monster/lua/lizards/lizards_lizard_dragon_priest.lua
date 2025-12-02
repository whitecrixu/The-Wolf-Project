-- Lizard Dragon Priest
-- Converted from XML

local monster = Game.createMonsterType("Lizard Dragon Priest")
if not monster then return end

monster:name("Lizard Dragon Priest")
monster:nameDescription("a lizard dragon priest")
monster:health(1450)
monster:maxHealth(1450)
monster:experience(1320)
monster:speed(220)
monster:race(RACE_BLOOD)
monster:corpseId(11280)
monster:outfit({lookType = 339})
monster:defense(15)
monster:armor(15)
monster:runHealth(145)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 45}
})

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "I ssssmell warm blood!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 5000, maxCount = 100},
    {id = 2148, chance = 4400, maxCount = 88},
    {id = 11245, chance = 960},
    {id = 2152, chance = 4090, maxCount = 2},
    {id = 2154, chance = 1000},
    {id = 2150, chance = 4900, maxCount = 3},
    {id = 11361, chance = 9910},
    {id = 8871, chance = 660},
    {id = 7589, chance = 12110},
    {id = 5876, chance = 980},
    {id = 2181, chance = 1001},
    {id = 7590, chance = 7940},
    {id = 11356, chance = 300},
    {id = 2187, chance = 1480},
    {id = 5881, chance = 1130},
    {id = 11303, chance = 450},
    {id = 2168, chance = 770}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -55},
    {name = "fireball", interval = 2000, chance = 20, minDamage = -125, maxDamage = -190, range = 7},
    {name = "poisoncondition", interval = 2000, chance = 15, minDamage = -320, maxDamage = -400, range = 7, radius = 1}
})

monster:register()
