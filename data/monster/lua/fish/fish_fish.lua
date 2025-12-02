-- Fish
-- Auto-converted from XML

local monster = Game.createMonsterType("Fish")
if not monster then return end

monster:name("Fish")
monster:nameDescription("a fish")
monster:health(25)
monster:maxHealth(25)
monster:experience(0)
monster:speed(180)
monster:race(RACE_UNDEAD)
monster:corpseId(2667)
monster:outfit({lookType = 455})
monster:defense(5)
monster:armor(5)
monster:targetDistance(0)
monster:runHealth(25)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(true)
monster:canPushCreatures(true)

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_DROWN, immunity = true},
})

-- Voices
monster:voices({
    {text = "Blib!", yell = false},
    {text = "Blub!", yell = false},
})

monster:register()
