-- Azerus
-- Converted from XML

local monster = Game.createMonsterType("Azerus")
if not monster then return end

monster:name("Azerus")
monster:nameDescription("Azerus")
monster:health(7500)
monster:maxHealth(7500)
monster:experience(6000)
monster:speed(320)
monster:race(RACE_BLOOD)
monster:outfit({lookType = 309})
monster:defense(65)
monster:armor(40)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = 85},
    {type = COMBAT_DEATHDAMAGE, percent = 85},
    {type = COMBAT_HOLYDAMAGE, percent = 85},
    {type = COMBAT_FIREDAMAGE, percent = 85},
    {type = COMBAT_ENERGYDAMAGE, percent = 85},
    {type = COMBAT_ICEDAMAGE, percent = 85},
    {type = COMBAT_PHYSICALDAMAGE, percent = 85}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {type = COMBAT_LIFEDRAIN, combat = true},
    {condition = CONDITION_DROWN, immunity = true}
})

-- Voices
monster:voices({
    {text = "The ultimate will finally consume this unworthy existence!", yell = false},
    {text = "My masters and I will tear down barriers and join the ultimate in its realm!", yell = false},
    {text = "The power of the Yalahari will all be mine!", yell = false},
    {text = "He who has returned from beyond has taught me secrets you can't even grasp!", yell = false},
    {text = "You can't hope to penetrate my shields!", yell = false},
    {text = "Do you really think you could beat me?", yell = false}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -900},
    {name = "manadrain", interval = 2000, chance = 15, maxDamage = -3800, range = 7, radius = 4},
    {name = "death", interval = 2000, chance = 20, maxDamage = -524, range = 7},
    {name = "fire", interval = 2000, chance = 10, minDamage = -300, maxDamage = -1050, length = 8}
})

monster:register()
