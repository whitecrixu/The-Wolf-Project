-- Doctor Perhaps
-- Converted from XML

local monster = Game.createMonsterType("Doctor Perhaps")
if not monster then return end

monster:name("Doctor Perhaps")
monster:nameDescription("doctor perhaps")
monster:health(475)
monster:maxHealth(475)
monster:experience(325)
monster:speed(200)
monster:race(RACE_BLOOD)
monster:corpseId(20439)
monster:outfit({lookType = 133, lookHead = 95, lookLegs = 94, lookFeet = 114, lookAddons = 1})
monster:defense(15)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 10},
    {type = COMBAT_EARTHDAMAGE, percent = 20},
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
    {type = COMBAT_ICEDAMAGE, percent = 20},
    {type = COMBAT_HOLYDAMAGE, percent = 20},
    {type = COMBAT_PHYSICALDAMAGE, percent = -5}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_DROWN, immunity = true}
})

-- Voices
monster:voices({
    {text = "I might use some parts of you in my next creation!", yell = false},
    {text = "You're only a testsubject to me!", yell = false},
    {text = "My creations will kill you!", yell = false},
    {text = "You can't beat what you can't comprehend!", yell = false}
})

-- Loot
monster:loot({
    {id = 10316, chance = 30000},
    {id = 10289, chance = 30000},
    {id = 10290, chance = 30000},
    {id = 10300, chance = 30000}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -43},
    {name = "drown", interval = 2000, chance = 15, minDamage = -17, maxDamage = -55, range = 5, radius = 3},
    {name = "poisoncondition", interval = 2000, chance = 15, minDamage = -20, maxDamage = -40, range = 7}
})

monster:register()
