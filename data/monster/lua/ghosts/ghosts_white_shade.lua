-- White Shade
-- Converted from XML

local monster = Game.createMonsterType("White Shade")
if not monster then return end

monster:name("White Shade")
monster:nameDescription("a white shade")
monster:health(260)
monster:maxHealth(260)
monster:experience(120)
monster:speed(190)
monster:race(RACE_UNDEAD)
monster:corpseId(21376)
monster:outfit({lookType = 560})
monster:defense(15)
monster:armor(15)
monster:runHealth(26)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_HOLYDAMAGE, percent = -10},
    {type = COMBAT_PHYSICALDAMAGE, percent = 90}
})

-- Immunities
monster:immunities({
    {type = COMBAT_LIFEDRAIN, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {type = COMBAT_DEATHDAMAGE, combat = true},
    {condition = CONDITION_DROWN, immunity = true}
})

-- Voices
monster:voices({
    {text = "Leave this place... save yourself...", yell = false},
    {text = "The dark ones.. must be stopped... unholy, twisted, EVIL!", yell = false},
    {text = "No... don't go further stranger... danger lies in every step...", yell = false}
})

-- Loot
monster:loot({
    {id = 5909, chance = 3370}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -25},
    {name = "lifedrain", interval = 2000, chance = 20, minDamage = -4, maxDamage = -6, range = 7},
    {name = "speed", interval = 2000, chance = 5, radius = 4}
})

monster:register()
