-- Gnomevil
-- Converted from XML

local monster = Game.createMonsterType("Gnomevil")
if not monster then return end

monster:name("Gnomevil")
monster:nameDescription("Gnomevil")
monster:health(250000)
monster:maxHealth(250000)
monster:experience(45000)
monster:speed(470)
monster:race(RACE_BLOOD)
monster:corpseId(18443)
monster:outfit({lookType = 504})
monster:defense(35)
monster:armor(25)
monster:runHealth(25000)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 10},
    {type = COMBAT_DEATHDAMAGE, percent = -20}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_DROWN, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "No more Mr. Nicegnome!", yell = false},
    {text = "Taste the power of the dark side!", yell = false},
    {text = "I've seen the light! And it was all engulfing fire!", yell = false},
    {text = "Tatatata!!!", yell = false},
    {text = "Muhahaha!", yell = false},
    {text = "I'm feeling grrrreat!", yell = false}
})

-- Loot
monster:loot({
    {id = 18451, chance = 9830},
    {id = 18453, chance = 8120},
    {id = 18495, chance = 99150},
    {id = 18465, chance = 7690},
    {id = 18454, chance = 9400},
    {id = 18452, chance = 8120},
    {id = 18450, chance = 14100},
    {id = 18449, chance = 1710}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 1300, chance = 100, minDamage = 0, maxDamage = -220},
    {name = "speed", interval = 2000, chance = 20, range = 7},
    {name = "fire", interval = 2000, chance = 100, minDamage = -820, maxDamage = -950, range = 7},
    {name = "manadrain", interval = 2000, chance = 9, minDamage = -230, maxDamage = -500, length = 8},
    {name = "energy", interval = 1000, chance = 12, minDamage = -350, maxDamage = -800, range = 3}
})

monster:register()
