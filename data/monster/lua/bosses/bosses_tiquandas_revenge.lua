-- Tiquandas Revenge
-- Converted from XML

local monster = Game.createMonsterType("Tiquandas Revenge")
if not monster then return end

monster:name("Tiquandas Revenge")
monster:nameDescription("a tiquandas revenge")
monster:health(2000)
monster:maxHealth(2000)
monster:experience(1755)
monster:speed(440)
monster:race(RACE_VENOM)
monster:corpseId(6047)
monster:outfit({lookType = 120})
monster:defense(31)
monster:armor(30)
monster:runHealth(200)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 10},
    {id = 2148, chance = 100000, maxCount = 100},
    {id = 2666, chance = 33333, maxCount = 50},
    {id = 2671, chance = 20000, maxCount = 8},
    {id = 2145, chance = 33333, maxCount = 3},
    {id = 7732, chance = 4000},
    {id = 5015, chance = 100000},
    {id = 3976, chance = 50000, maxCount = 10}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -110},
    {name = "poison", interval = 1000, chance = 25, minDamage = -60, maxDamage = -200, range = 7},
    {name = "speed", interval = 1000, chance = 34, range = 7},
    {name = "poison", interval = 1000, chance = 12, minDamage = -40, maxDamage = -130, radius = 3}
})

monster:register()
