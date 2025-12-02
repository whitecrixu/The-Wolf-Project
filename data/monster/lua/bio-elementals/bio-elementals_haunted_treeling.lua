-- Haunted Treeling
-- Converted from XML

local monster = Game.createMonsterType("Haunted Treeling")
if not monster then return end

monster:name("Haunted Treeling")
monster:nameDescription("a haunted treeling")
monster:health(450)
monster:maxHealth(450)
monster:experience(310)
monster:speed(220)
monster:race(RACE_UNDEAD)
monster:corpseId(9867)
monster:outfit({lookType = 310})
monster:defense(20)
monster:armor(20)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = -5},
    {type = COMBAT_DEATHDAMAGE, percent = 1},
    {type = COMBAT_ICEDAMAGE, percent = 15},
    {type = COMBAT_HOLYDAMAGE, percent = 20}
})

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Knarrrz", yell = false},
    {text = "Huuhuuhuuuhuuaarrr", yell = false},
    {text = "Knorrrrrr", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 60000, maxCount = 95},
    {id = 4860, chance = 25000},
    {id = 2788, chance = 7142},
    {id = 2787, chance = 5263, maxCount = 2},
    {id = 10600, chance = 5000},
    {id = 7618, chance = 5000},
    {id = 2790, chance = 1851},
    {id = 7588, chance = 900},
    {id = 2213, chance = 621},
    {id = 2146, chance = 585},
    {id = 7443, chance = 80}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -100},
    {name = "manadrain", interval = 2000, chance = 5, minDamage = -30, maxDamage = -100, radius = 4},
    {name = "speed", interval = 2000, chance = 15, length = 5},
    {name = "physical", interval = 2000, chance = 15, maxDamage = -100, range = 7, radius = 1},
    {name = "earth", interval = 2000, chance = 10, minDamage = -55, maxDamage = -100, radius = 4},
    {name = "earth", interval = 2000, chance = 10, radius = 1}
})

monster:register()
