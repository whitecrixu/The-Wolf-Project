-- Horestis
-- Converted from XML

local monster = Game.createMonsterType("Horestis")
if not monster then return end

monster:name("Horestis")
monster:nameDescription("Horestis")
monster:health(6000)
monster:maxHealth(6000)
monster:experience(3500)
monster:speed(280)
monster:race(RACE_UNDEAD)
monster:corpseId(6031)
monster:outfit({lookType = 88})
monster:defense(30)
monster:armor(25)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = 50},
    {type = COMBAT_ICEDAMAGE, percent = 20},
    {type = COMBAT_ENERGYDAMAGE, percent = 5},
    {type = COMBAT_PHYSICALDAMAGE, percent = -5}
})

-- Immunities
monster:immunities({
    {type = COMBAT_DEATHDAMAGE, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {type = COMBAT_LIFEDRAIN, combat = true}
})

-- Voices
monster:voices({
    {text = "Feel my eternal wrath!", yell = false},
    {text = "I might be dead but I'm not gone!", yell = false},
    {text = "Receive a lesson of the past!", yell = false}
})

-- Loot
monster:loot({
    {id = 13498, chance = 100000},
    {id = 2148, chance = 95000, maxCount = 243},
    {id = 2152, chance = 36000, maxCount = 5},
    {id = 13472, chance = 17000},
    {id = 2159, chance = 14000, maxCount = 5},
    {id = 13739, chance = 12000},
    {id = 2134, chance = 12000},
    {id = 7590, chance = 10000, maxCount = 3},
    {id = 7591, chance = 5000, maxCount = 4},
    {id = 2446, chance = 5000},
    {id = 11207, chance = 2500},
    {id = 9811, chance = 2500},
    {id = 2447, chance = 2500}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -450},
    {name = "death", interval = 1000, chance = 12, minDamage = -200, maxDamage = -750, range = 7},
    {name = "lifedrain", interval = 3000, chance = 17, minDamage = -400, maxDamage = -500, length = 8},
    {name = "drunk", interval = 3000, chance = 11, radius = 6},
    {name = "speed", interval = 1000, chance = 25, length = 7, spread = 3},
    {name = "poisoncondition", interval = 2000, chance = 30, minDamage = -35, maxDamage = -35, radius = 5}
})

monster:register()
