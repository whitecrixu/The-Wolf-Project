-- The Pale Count
-- Converted from XML

local monster = Game.createMonsterType("The Pale Count")
if not monster then return end

monster:name("The Pale Count")
monster:nameDescription("The Pale Count")
monster:health(20000)
monster:maxHealth(20000)
monster:experience(18000)
monster:speed(300)
monster:race(RACE_BLOOD)
monster:corpseId(21279)
monster:outfit({lookType = 558})
monster:defense(75)
monster:armor(75)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
    {type = COMBAT_EARTHDAMAGE, percent = 20},
    {type = COMBAT_DEATHDAMAGE, percent = -40}
})

-- Immunities
monster:immunities({
    {type = COMBAT_DEATHDAMAGE, combat = true},
    {type = COMBAT_LIFEDRAIN, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Feel the hungry kiss of death!", yell = false},
    {text = "The monsters in the mirror will come eat your dreams.", yell = false},
    {text = "Your pitiful life has come to an end!", yell = false},
    {text = "I will squish you like a maggot and suck you dry!", yell = false},
    {text = "Yield to the inevitable!", yell = false},
    {text = "Some day I shall see my beautiful face in a mirror again.", yell = false}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -200},
    {name = "speed", interval = 1000, chance = 17, range = 7, radius = 4},
    {name = "ice", interval = 2000, chance = 21, minDamage = -130, maxDamage = -350, range = 6, radius = 2},
    {name = "manadrain", interval = 2000, chance = 15, minDamage = -60, maxDamage = -120, range = 7}
})

monster:register()
