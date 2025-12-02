-- The Old Widow
-- Converted from XML

local monster = Game.createMonsterType("The Old Widow")
if not monster then return end

monster:name("The Old Widow")
monster:nameDescription("the Old Widow")
monster:health(3200)
monster:maxHealth(3200)
monster:experience(4200)
monster:speed(240)
monster:race(RACE_BLOOD)
monster:corpseId(5977)
monster:outfit({lookType = 208})
monster:defense(21)
monster:armor(17)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {type = COMBAT_LIFEDRAIN, combat = true},
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 99},
    {id = 2152, chance = 100000, maxCount = 10},
    {id = 5879, chance = 100000},
    {id = 2457, chance = 100000},
    {id = 7591, chance = 100000, maxCount = 4},
    {id = 2476, chance = 50000},
    {id = 2165, chance = 33333},
    {id = 2167, chance = 33333},
    {id = 2169, chance = 33333},
    {id = 13307, chance = 33333},
    {id = 2477, chance = 25000},
    {id = 2171, chance = 25000},
    {id = 5886, chance = 25000},
    {id = 7416, chance = 3225},
    {id = 7419, chance = 1639}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = -100, maxDamage = -500},
    {name = "poison", interval = 1000, chance = 15, minDamage = -250, maxDamage = -300, range = 7},
    {name = "speed", interval = 1000, chance = 20, range = 7},
    {name = "poisonfield", interval = 1000, chance = 10, range = 7, radius = 4}
})

monster:register()
