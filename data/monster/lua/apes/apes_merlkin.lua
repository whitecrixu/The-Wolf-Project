-- Merlkin
-- Converted from XML

local monster = Game.createMonsterType("Merlkin")
if not monster then return end

monster:name("Merlkin")
monster:nameDescription("a merlkin")
monster:health(235)
monster:maxHealth(235)
monster:experience(145)
monster:speed(200)
monster:race(RACE_BLOOD)
monster:corpseId(6044)
monster:outfit({lookType = 117})
monster:defense(15)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 20},
    {type = COMBAT_ENERGYDAMAGE, percent = 10},
    {type = COMBAT_HOLYDAMAGE, percent = 10},
    {type = COMBAT_ICEDAMAGE, percent = -15},
    {type = COMBAT_DEATHDAMAGE, percent = -5}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Ugh! Ugh! Ugh!", yell = false},
    {text = "Holy banana!", yell = false},
    {text = "Chakka! Chakka!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 69500, maxCount = 45},
    {id = 2676, chance = 30350, maxCount = 12},
    {id = 2675, chance = 1000, maxCount = 5},
    {id = 2188, chance = 1050},
    {id = 2162, chance = 3000},
    {id = 7620, chance = 660},
    {id = 2150, chance = 260},
    {id = 5883, chance = 1000},
    {id = 3966, chance = 100},
    {id = 12467, chance = 1800}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -30},
    {name = "fire", interval = 2000, chance = 15, minDamage = -60, maxDamage = -90, range = 7},
    {name = "energy", interval = 2000, chance = 20, minDamage = -15, maxDamage = -45, range = 7},
    {name = "poisonfield", interval = 2000, chance = 15, range = 7, radius = 1}
})

monster:register()
