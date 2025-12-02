-- Calamary
-- Auto-converted from XML

local monster = Game.createMonsterType("Calamary")
if not monster then return end

monster:name("Calamary")
monster:nameDescription("a Calamary")
monster:health(75)
monster:maxHealth(75)
monster:experience(0)
monster:speed(160)
monster:race(RACE_UNDEAD)
monster:corpseId(15280)
monster:outfit({lookType = 451})
monster:defense(0)
monster:armor(0)
monster:targetDistance(0)
monster:runHealth(75)

-- Flags
monster:attackable(true)
monster:hostile(false)
monster:pushable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = -5},
    {type = COMBAT_PHYSICALDAMAGE, percent = -5},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FREEZING, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_DROWN, immunity = true},
    {condition = CONDITION_FIRE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Bubble!", yell = false},
    {text = "Bobble!", yell = false},
})

-- Loot
monster:loot({
    {id = 2670, chance = 12270, maxCount = 2},
})

monster:register()
