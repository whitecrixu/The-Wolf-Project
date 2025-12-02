-- Barbarian Headsplitter
-- Converted from XML

local monster = Game.createMonsterType("Barbarian Headsplitter")
if not monster then return end

monster:name("Barbarian Headsplitter")
monster:nameDescription("a barbarian headsplitter")
monster:health(100)
monster:maxHealth(100)
monster:experience(85)
monster:speed(200)
monster:race(RACE_BLOOD)
monster:manaCost(450)
monster:corpseId(20343)
monster:outfit({lookType = 253, lookHead = 115, lookBody = 105, lookLegs = 119, lookFeet = 132})
monster:defense(15)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isConvinceable(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ICEDAMAGE, percent = 50},
    {type = COMBAT_HOLYDAMAGE, percent = 10},
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
    {type = COMBAT_EARTHDAMAGE, percent = -10},
    {type = COMBAT_DEATHDAMAGE, percent = -1}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true}
})

-- Voices
monster:voices({
    {text = "I will regain my honor with your blood!", yell = false},
    {text = "Surrender is not option!", yell = false},
    {text = "Its you or me!", yell = false},
    {text = "Die! Die! Die!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 60000, maxCount = 30},
    {id = 2050, chance = 61500},
    {id = 2403, chance = 15500},
    {id = 2460, chance = 20360},
    {id = 2483, chance = 4090},
    {id = 2473, chance = 5080},
    {id = 2320, chance = 3270},
    {id = 5913, chance = 950},
    {id = 7618, chance = 560},
    {id = 2168, chance = 230},
    {id = 7461, chance = 110},
    {id = 7457, chance = 100}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -60},
    {name = "physical", interval = 2000, chance = 15, maxDamage = -60, range = 7, radius = 1}
})

monster:register()
