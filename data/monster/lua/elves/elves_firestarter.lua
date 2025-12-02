-- Firestarter
-- Converted from XML

local monster = Game.createMonsterType("Firestarter")
if not monster then return end

monster:name("Firestarter")
monster:nameDescription("a firestarter")
monster:health(180)
monster:maxHealth(180)
monster:experience(80)
monster:speed(180)
monster:race(RACE_BLOOD)
monster:corpseId(20599)
monster:outfit({lookType = 159, lookHead = 94, lookBody = 77, lookLegs = 78, lookFeet = 79})
monster:defense(15)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isSummonable(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:pushable(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_DEATHDAMAGE, percent = -20},
    {type = COMBAT_ICEDAMAGE, percent = -20}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "FIRE!", yell = true},
    {text = "BURN!", yell = true},
    {text = "DEATH to the FALSE GOD!!", yell = true},
    {text = "You shall burn in the thornfires!!", yell = false},
    {text = "DOWN with the followers of the bog!!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 79000, maxCount = 35},
    {id = 2397, chance = 6000},
    {id = 2681, chance = 20000},
    {id = 2456, chance = 4000},
    {id = 5921, chance = 930},
    {id = 7438, chance = 100},
    {id = 7840, chance = 30000, maxCount = 12},
    {id = 10552, chance = 5000},
    {id = 13757, chance = 15280},
    {id = 13943, chance = 340}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -30},
    {name = "fire", interval = 2000, chance = 15, maxDamage = -21, radius = 1},
    {name = "firefield", interval = 2000, chance = 10, radius = 1}
})

monster:register()
