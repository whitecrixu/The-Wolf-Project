-- Northern Pike
-- Auto-converted from XML

local monster = Game.createMonsterType("Northern Pike")
if not monster then return end

monster:name("Northern Pike")
monster:nameDescription("a northern pike")
monster:health(95)
monster:maxHealth(95)
monster:experience(0)
monster:speed(180)
monster:race(RACE_UNDEAD)
monster:corpseId(2669)
monster:outfit({lookType = 454})
monster:defense(5)
monster:armor(5)
monster:targetDistance(0)
monster:runHealth(95)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)

-- Immunities
monster:immunities({
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_DROWN, immunity = true},
})

-- Voices
monster:voices({
    {text = "Blub!", yell = false},
})

monster:register()
