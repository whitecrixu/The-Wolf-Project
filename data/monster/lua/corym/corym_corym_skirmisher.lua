-- Corym Skirmisher
-- Converted from XML

local monster = Game.createMonsterType("Corym Skirmisher")
if not monster then return end

monster:name("Corym Skirmisher")
monster:nameDescription("a corym skirmisher")
monster:health(450)
monster:maxHealth(450)
monster:experience(260)
monster:speed(200)
monster:race(RACE_BLOOD)
monster:corpseId(19726)
monster:outfit({lookType = 533, lookLegs = 101})
monster:defense(15)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = 20},
    {type = COMBAT_DEATHDAMAGE, percent = 20},
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
    {type = COMBAT_HOLYDAMAGE, percent = -20}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Squeak! Squeak!", yell = false},
    {text = "<sniff><sniff><sniff>", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 45},
    {id = 2696, chance = 20000},
    {id = 20101, chance = 16666},
    {id = 20100, chance = 14285},
    {id = 20099, chance = 9090},
    {id = 20097, chance = 8333},
    {id = 20089, chance = 7692},
    {id = 20093, chance = 2941},
    {id = 20092, chance = 2702},
    {id = 20098, chance = 854},
    {id = 20090, chance = 645},
    {id = 20126, chance = 561},
    {id = 20105, chance = 12}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -85},
    {name = "physical", interval = 2000, chance = 20, maxDamage = -90, range = 7}
})

monster:register()
