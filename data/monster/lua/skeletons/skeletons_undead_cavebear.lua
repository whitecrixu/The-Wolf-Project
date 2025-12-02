-- Undead Cavebear
-- Converted from XML

local monster = Game.createMonsterType("Undead Cavebear")
if not monster then return end

monster:name("Undead Cavebear")
monster:nameDescription("an undead cavebear")
monster:health(450)
monster:maxHealth(450)
monster:experience(600)
monster:speed(250)
monster:race(RACE_UNDEAD)
monster:corpseId(13323)
monster:outfit({lookType = 384})
monster:defense(27)
monster:armor(23)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_HOLYDAMAGE, percent = -5}
})

-- Immunities
monster:immunities({
    {type = COMBAT_DEATHDAMAGE, combat = true},
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Grrrrrrrrrrrr", yell = false},
    {text = "Groooowl", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 28000, maxCount = 84},
    {id = 13302, chance = 10000},
    {id = 7618, chance = 2700},
    {id = 13303, chance = 1350}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -150},
    {name = "death", interval = 2000, chance = 20, minDamage = -70, maxDamage = -130, range = 7},
    {name = "death", interval = 2000, chance = 10, minDamage = -50, maxDamage = -55, radius = 3},
    {name = "lifedrain", interval = 2000, chance = 10, minDamage = -50, maxDamage = -55, radius = 3},
    {name = "poisoncondition", interval = 2000, chance = 10, minDamage = -70, maxDamage = -80, length = 6}
})

monster:register()
