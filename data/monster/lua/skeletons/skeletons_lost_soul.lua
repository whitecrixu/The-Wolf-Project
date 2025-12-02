-- Lost Soul
-- Converted from XML

local monster = Game.createMonsterType("Lost Soul")
if not monster then return end

monster:name("Lost Soul")
monster:nameDescription("a lost soul")
monster:health(5800)
monster:maxHealth(5800)
monster:experience(4000)
monster:speed(220)
monster:race(RACE_UNDEAD)
monster:corpseId(6310)
monster:outfit({lookType = 232})
monster:defense(30)
monster:armor(30)
monster:runHealth(580)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ICEDAMAGE, percent = 50},
    {type = COMBAT_ENERGYDAMAGE, percent = 10},
    {type = COMBAT_HOLYDAMAGE, percent = -20}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {type = COMBAT_DEATHDAMAGE, combat = true},
    {type = COMBAT_LIFEDRAIN, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Forgive Meeeee!", yell = false},
    {text = "Mouuuurn meeee!", yell = false},
    {text = "Help meeee!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 100},
    {id = 2148, chance = 49000, maxCount = 98},
    {id = 2152, chance = 100000, maxCount = 7},
    {id = 2260, chance = 35250, maxCount = 3},
    {id = 6500, chance = 7500},
    {id = 7590, chance = 14200, maxCount = 2},
    {id = 2144, chance = 12000, maxCount = 3},
    {id = 2143, chance = 10000, maxCount = 3},
    {id = 7591, chance = 8800, maxCount = 2},
    {id = 9809, chance = 3500},
    {id = 9810, chance = 3500},
    {id = 5806, chance = 4950},
    {id = 2133, chance = 1500},
    {id = 2197, chance = 2780},
    {id = 7413, chance = 1000},
    {id = 5944, chance = 15000},
    {id = 2156, chance = 15000},
    {id = 6300, chance = 2170},
    {id = 6526, chance = 1250},
    {id = 2436, chance = 850},
    {id = 5741, chance = 170},
    {id = 7407, chance = 740},
    {id = 11233, chance = 33010},
    {id = 2528, chance = 740}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -180},
    {name = "death", interval = 2000, chance = 10, minDamage = -40, maxDamage = -210, length = 3},
    {name = "speed", interval = 2000, chance = 20, radius = 6}
})

monster:register()
