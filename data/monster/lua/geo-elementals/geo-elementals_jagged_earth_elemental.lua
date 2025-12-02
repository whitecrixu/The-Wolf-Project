-- Jagged Earth Elemental
-- Converted from XML

local monster = Game.createMonsterType("Jagged Earth Elemental")
if not monster then return end

monster:name("Jagged Earth Elemental")
monster:nameDescription("a jagged earth elemental")
monster:health(1500)
monster:maxHealth(1500)
monster:experience(1300)
monster:speed(280)
monster:race(RACE_UNDEAD)
monster:corpseId(8933)
monster:outfit({lookType = 285})
monster:defense(25)
monster:armor(25)
monster:runHealth(150)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_DEATHDAMAGE, percent = 20},
    {type = COMBAT_ICEDAMAGE, percent = 20},
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
    {type = COMBAT_FIREDAMAGE, percent = -25}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {type = COMBAT_EARTHDAMAGE, combat = true}
})

-- Voices
monster:voices({
    {text = "Stomp STOMP", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 27000, maxCount = 90},
    {id = 2148, chance = 27000, maxCount = 90},
    {id = 5880, chance = 800, maxCount = 2},
    {id = 8298, chance = 9000},
    {id = 7732, chance = 1600},
    {id = 2149, chance = 3750, maxCount = 2},
    {id = 2244, chance = 10000},
    {id = 2245, chance = 18000},
    {id = 2148, chance = 1500, maxCount = 10}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -150},
    {name = "earth", interval = 1000, chance = 10, minDamage = -100, maxDamage = -250, length = 6},
    {name = "earth", interval = 1000, chance = 11, maxDamage = -200, range = 7, radius = 6}
})

monster:register()
