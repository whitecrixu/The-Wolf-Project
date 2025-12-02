-- Dragonling
-- Converted from XML

local monster = Game.createMonsterType("Dragonling")
if not monster then return end

monster:name("Dragonling")
monster:nameDescription("a dragonling")
monster:health(2600)
monster:maxHealth(2600)
monster:experience(2200)
monster:speed(330)
monster:race(RACE_BLOOD)
monster:corpseId(18438)
monster:outfit({lookType = 505})
monster:defense(25)
monster:armor(25)
monster:runHealth(260)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = -5},
    {type = COMBAT_ICEDAMAGE, percent = -5}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "FCHHHHHHHHHHHHHHHH", yell = false},
    {text = "FI?", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 37500, maxCount = 100},
    {id = 2148, chance = 37500, maxCount = 100},
    {id = 2148, chance = 37500, maxCount = 27},
    {id = 7589, chance = 16900, maxCount = 2},
    {id = 7588, chance = 24480, maxCount = 2},
    {id = 18425, chance = 12410}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -120},
    {name = "fire", interval = 2000, chance = 10, minDamage = -120, maxDamage = -250, length = 5, spread = 2},
    {name = "energy", interval = 2000, chance = 20, minDamage = -115, maxDamage = -180, radius = 3},
    {name = "fire", interval = 2000, chance = 20, minDamage = -95, maxDamage = -150, radius = 3},
    {name = "speed", interval = 2000, chance = 15, radius = 1}
})

monster:register()
