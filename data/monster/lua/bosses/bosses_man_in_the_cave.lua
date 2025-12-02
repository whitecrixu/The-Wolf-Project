-- Man in the Cave
-- Converted from XML

local monster = Game.createMonsterType("Man in the Cave")
if not monster then return end

monster:name("Man in the Cave")
monster:nameDescription("man in the cave")
monster:health(485)
monster:maxHealth(485)
monster:experience(555)
monster:speed(210)
monster:race(RACE_BLOOD)
monster:corpseId(20446)
monster:outfit({lookType = 128, lookHead = 95, lookBody = 116, lookLegs = 95, lookFeet = 114, lookAddons = 2})
monster:defense(10)
monster:armor(14)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {type = COMBAT_LIFEDRAIN, combat = true},
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "THE MONKS ARE MINE", yell = true},
    {text = "I will rope you up! All of you!", yell = false},
    {text = "You have been roped up!", yell = false},
    {text = "A MIC to rule them all!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 27},
    {id = 2120, chance = 20000},
    {id = 2120, chance = 6666},
    {id = 2120, chance = 3333},
    {id = 2691, chance = 4000},
    {id = 5913, chance = 2000},
    {id = 7290, chance = 4000},
    {id = 7463, chance = 6666},
    {id = 7386, chance = 6666},
    {id = 7458, chance = 1000},
    {id = 2173, chance = 500}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -90},
    {name = "physical", interval = 2000, chance = 20, minDamage = -10, maxDamage = -95, range = 7},
    {name = "lifedrain", interval = 1000, chance = 100, minDamage = -20, maxDamage = -30}
})

monster:register()
