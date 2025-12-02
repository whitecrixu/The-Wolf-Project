-- Ice Overlord
-- Converted from XML

local monster = Game.createMonsterType("Ice Overlord")
if not monster then return end

monster:name("Ice Overlord")
monster:nameDescription("an ice overlord")
monster:health(2800)
monster:maxHealth(2800)
monster:experience(1950)
monster:speed(390)
monster:race(RACE_UNDEAD)
monster:corpseId(8965)
monster:outfit({lookType = 11})
monster:defense(30)
monster:armor(30)
monster:runHealth(280)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 50},
    {type = COMBAT_ENERGYDAMAGE, percent = -25}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {type = COMBAT_ICEDAMAGE, combat = true},
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_DROWN, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Loot
monster:loot({
    {id = 8300, chance = 100000},
    {id = 2148, chance = 50000, maxCount = 38},
    {id = 2152, chance = 50000, maxCount = 3}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -170},
    {name = "speed", interval = 2000, chance = 18, radius = 6},
    {name = "ice", interval = 1000, chance = 9, minDamage = -50, maxDamage = -400, range = 7}
})

monster:register()
