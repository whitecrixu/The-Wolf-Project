-- Fazzrah
-- Converted from XML

local monster = Game.createMonsterType("Fazzrah")
if not monster then return end

monster:name("Fazzrah")
monster:nameDescription("Fazzrah")
monster:health(2955)
monster:maxHealth(2955)
monster:experience(2600)
monster:speed(290)
monster:race(RACE_BLOOD)
monster:corpseId(11284)
monster:outfit({lookType = 343})
monster:defense(35)
monster:armor(35)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 1},
    {type = COMBAT_ICEDAMAGE, percent = -1}
})

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Zztand and fight!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 292},
    {id = 5876, chance = 100000},
    {id = 5881, chance = 100000},
    {id = 2152, chance = 100000, maxCount = 5},
    {id = 7588, chance = 100000},
    {id = 11330, chance = 100000},
    {id = 11331, chance = 100000},
    {id = 7591, chance = 75000, maxCount = 3},
    {id = 11303, chance = 75000},
    {id = 2149, chance = 71000, maxCount = 5},
    {id = 11206, chance = 25000},
    {id = 11304, chance = 6250},
    {id = 11301, chance = 3130}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -260},
    {name = "poison", interval = 2000, chance = 25, minDamage = -220, maxDamage = -270, range = 7}
})

monster:register()
