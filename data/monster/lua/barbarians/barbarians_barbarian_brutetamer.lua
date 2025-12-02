-- Barbarian Brutetamer
-- Converted from XML

local monster = Game.createMonsterType("Barbarian Brutetamer")
if not monster then return end

monster:name("Barbarian Brutetamer")
monster:nameDescription("a barbarian brutetamer")
monster:health(145)
monster:maxHealth(145)
monster:experience(90)
monster:speed(190)
monster:race(RACE_BLOOD)
monster:corpseId(20339)
monster:outfit({lookType = 264, lookHead = 78, lookBody = 116, lookLegs = 95, lookFeet = 121})
monster:defense(10)
monster:armor(10)
monster:runHealth(14)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ICEDAMAGE, percent = 50},
    {type = COMBAT_HOLYDAMAGE, percent = 10},
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
    {type = COMBAT_PHYSICALDAMAGE, percent = -20},
    {type = COMBAT_DEATHDAMAGE, percent = -1}
})

-- Immunities
monster:immunities({
    {type = COMBAT_LIFEDRAIN, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true}
})

-- Voices
monster:voices({
    {text = "To me, creatures of the wild!", yell = false},
    {text = "My instincts tell me about your cowardice.", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 58000, maxCount = 15},
    {id = 3965, chance = 5250},
    {id = 2686, chance = 11000, maxCount = 2},
    {id = 2464, chance = 8900},
    {id = 2401, chance = 6500},
    {id = 7343, chance = 7540},
    {id = 1958, chance = 5000},
    {id = 7620, chance = 630},
    {id = 7379, chance = 380},
    {id = 7457, chance = 160},
    {id = 7464, chance = 90},
    {id = 7463, chance = 160}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -30},
    {name = "physical", interval = 2000, chance = 20, maxDamage = -34, range = 7, radius = 1},
    {name = "barbarian brutetamer skill reducer", interval = 2000, chance = 15, range = 5}
})

monster:register()
