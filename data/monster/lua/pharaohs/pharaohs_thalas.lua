-- Thalas
-- Converted from XML

local monster = Game.createMonsterType("Thalas")
if not monster then return end

monster:name("Thalas")
monster:nameDescription("a thalas")
monster:health(4100)
monster:maxHealth(4100)
monster:experience(2950)
monster:speed(320)
monster:race(RACE_UNDEAD)
monster:corpseId(6025)
monster:outfit({lookType = 90})
monster:defense(30)
monster:armor(20)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = -23}
})

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "You will become a feast for my maggots.", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 80},
    {id = 2148, chance = 50000, maxCount = 80},
    {id = 2149, chance = 7000, maxCount = 3},
    {id = 2411, chance = 7000},
    {id = 2169, chance = 7000},
    {id = 2165, chance = 1500},
    {id = 7591, chance = 1500},
    {id = 2409, chance = 500},
    {id = 2155, chance = 500},
    {id = 2451, chance = 200},
    {id = 2351, chance = 100000}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -260},
    {name = "poison", interval = 2000, chance = 25, minDamage = -150, maxDamage = -650, range = 7},
    {name = "melee", interval = 3000, chance = 20, minDamage = -150, maxDamage = -650},
    {name = "speed", interval = 1000, chance = 6, range = 7},
    {name = "poisoncondition", interval = 1000, chance = 15, minDamage = -34, maxDamage = -35, radius = 5},
    {name = "poison", interval = 3000, chance = 17, minDamage = -55, maxDamage = -550, length = 8, spread = 3}
})

monster:register()
