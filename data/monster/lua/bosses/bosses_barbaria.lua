-- Barbaria
-- Converted from XML

local monster = Game.createMonsterType("Barbaria")
if not monster then return end

monster:name("Barbaria")
monster:nameDescription("barbaria")
monster:health(555)
monster:maxHealth(555)
monster:experience(355)
monster:speed(280)
monster:race(RACE_BLOOD)
monster:corpseId(20339)
monster:outfit({lookType = 264, lookHead = 78, lookBody = 116, lookLegs = 95, lookFeet = 121})
monster:defense(10)
monster:armor(10)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = -20},
    {type = COMBAT_ICEDAMAGE, percent = 50},
    {type = COMBAT_HOLYDAMAGE, percent = 10},
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
    {type = COMBAT_DEATHDAMAGE, percent = -5}
})

-- Immunities
monster:immunities({
    {type = COMBAT_LIFEDRAIN, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "To me, creatures of the wild!", yell = false},
    {text = "My instincts tell me about your cowardice.", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 10000, maxCount = 35},
    {id = 2464, chance = 11000},
    {id = 3965, chance = 12500},
    {id = 7343, chance = 1000},
    {id = 2050, chance = 25000},
    {id = 1958, chance = 15000}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -80},
    {name = "physical", interval = 2000, chance = 34, minDamage = -30, maxDamage = -80, range = 7, radius = 1},
    {name = "energy", interval = 3000, chance = 20, minDamage = -35, maxDamage = -70, range = 7}
})

monster:register()
