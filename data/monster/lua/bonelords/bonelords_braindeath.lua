-- Braindeath
-- Converted from XML

local monster = Game.createMonsterType("Braindeath")
if not monster then return end

monster:name("Braindeath")
monster:nameDescription("a braindeath")
monster:health(1225)
monster:maxHealth(1225)
monster:experience(895)
monster:speed(230)
monster:race(RACE_UNDEAD)
monster:corpseId(7256)
monster:outfit({lookType = 256})
monster:defense(20)
monster:armor(20)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ICEDAMAGE, percent = 20},
    {type = COMBAT_PHYSICALDAMAGE, percent = 10},
    {type = COMBAT_ENERGYDAMAGE, percent = 10},
    {type = COMBAT_HOLYDAMAGE, percent = -20},
    {type = COMBAT_FIREDAMAGE, percent = -15}
})

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {type = COMBAT_DEATHDAMAGE, combat = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "You have disturbed my thoughts!", yell = false},
    {text = "Let me turn you into something more useful!", yell = false},
    {text = "Let me taste your brain!", yell = false},
    {text = "You will be punished!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 55000, maxCount = 89},
    {id = 7364, chance = 9000, maxCount = 4},
    {id = 2175, chance = 690},
    {id = 2450, chance = 8000},
    {id = 2423, chance = 2000},
    {id = 2509, chance = 6000},
    {id = 5898, chance = 3380},
    {id = 7407, chance = 1500},
    {id = 2518, chance = 750},
    {id = 7452, chance = 950},
    {id = 3972, chance = 180},
    {id = 10580, chance = 4725}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -80},
    {name = "energy", interval = 2000, chance = 10, minDamage = -93, maxDamage = -170, range = 7},
    {name = "fire", interval = 2000, chance = 10, minDamage = -75, maxDamage = -125, range = 7},
    {name = "death", interval = 2000, chance = 10, minDamage = -85, maxDamage = -170, range = 7},
    {name = "earth", interval = 2000, chance = 10, minDamage = -65, maxDamage = -125, range = 7},
    {name = "lifedrain", interval = 2000, chance = 10, minDamage = -75, maxDamage = -85, range = 7},
    {name = "manadrain", interval = 2000, chance = 10, maxDamage = -155, range = 7}
})

monster:register()
