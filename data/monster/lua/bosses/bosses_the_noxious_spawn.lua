-- The Noxious Spawn
-- Converted from XML

local monster = Game.createMonsterType("The Noxious Spawn")
if not monster then return end

monster:name("The Noxious Spawn")
monster:nameDescription("the noxious spawn")
monster:health(9500)
monster:maxHealth(9500)
monster:experience(6000)
monster:speed(360)
monster:race(RACE_VENOM)
monster:corpseId(4323)
monster:outfit({lookType = 220})
monster:defense(25)
monster:armor(18)
monster:runHealth(950)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ICEDAMAGE, percent = 20},
    {type = COMBAT_FIREDAMAGE, percent = -10},
    {type = COMBAT_ENERGYDAMAGE, percent = -10}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {type = COMBAT_EARTHDAMAGE, combat = true}
})

-- Voices
monster:voices({
    {text = "Sssssouls for the one", yell = false},
    {text = "HISSSS", yell = true},
    {text = "Tsssse one will risssse again", yell = false},
    {text = "I bring your deathhh, mortalssss", yell = false}
})

-- Loot
monster:loot({
    {id = 2152, chance = 51850, maxCount = 5},
    {id = 7456, chance = 37000},
    {id = 2152, chance = 10750, maxCount = 95},
    {id = 7365, chance = 525},
    {id = 10309, chance = 31500},
    {id = 2168, chance = 35000},
    {id = 2547, chance = 36250, maxCount = 29},
    {id = 7386, chance = 27750},
    {id = 2796, chance = 11111}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -140},
    {name = "speed", interval = 2000, chance = 6, range = 7},
    {name = "earth", interval = 2000, chance = 7, maxDamage = -550, length = 8, spread = 3},
    {name = "lifedrain", interval = 2000, chance = 9, maxDamage = -550, length = 8},
    {name = "poison", interval = 2000, chance = 12, maxDamage = -300},
    {name = "outfit", interval = 2000, chance = 11, range = 7}
})

monster:register()
