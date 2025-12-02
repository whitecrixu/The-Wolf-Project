-- Glooth Anemone
-- Converted from XML

local monster = Game.createMonsterType("Glooth Anemone")
if not monster then return end

monster:name("Glooth Anemone")
monster:nameDescription("a glooth anemone")
monster:health(2400)
monster:maxHealth(2400)
monster:experience(1800)
monster:speed(180)
monster:race(RACE_VENOM)
monster:corpseId(23359)
monster:outfit({lookType = 604})
monster:defense(25)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 10},
    {type = COMBAT_DEATHDAMAGE, percent = 5},
    {type = COMBAT_FIREDAMAGE, percent = -5}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {type = COMBAT_LIFEDRAIN, combat = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_POISON, immunity = true}
})

-- Voices
monster:voices({
    {text = "*shglib*", yell = false}
})

-- Loot
monster:loot({
    {id = 23515, chance = 10190},
    {id = 23568, chance = 21020},
    {id = 2796, chance = 3180},
    {id = 23554, chance = 320},
    {id = 2148, chance = 100000, maxCount = 170},
    {id = 7588, chance = 6690, maxCount = 2},
    {id = 7589, chance = 6690, maxCount = 2},
    {id = 8473, chance = 960},
    {id = 2152, chance = 57320, maxCount = 3},
    {id = 9970, chance = 9240, maxCount = 3},
    {id = 2149, chance = 8600, maxCount = 3},
    {id = 2147, chance = 11150, maxCount = 3},
    {id = 23534, chance = 640},
    {id = 23543, chance = 5100},
    {id = 23550, chance = 320},
    {id = 23549, chance = 1270},
    {id = 23551, chance = 640},
    {id = 23529, chance = 1270}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -110},
    {name = "earth", interval = 2000, chance = 9, minDamage = -100, maxDamage = -200, range = 7, radius = 4},
    {name = "lifedrain", interval = 2000, chance = 7, minDamage = -50, maxDamage = -100, range = 7, radius = 1},
    {name = "earth", interval = 2000, chance = 10, radius = 5}
})

monster:register()
