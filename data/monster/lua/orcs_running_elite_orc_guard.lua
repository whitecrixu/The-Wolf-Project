-- Running Elite Orc Guard
-- Auto-converted from XML

local monster = Game.createMonsterType("Running Elite Orc Guard")
if not monster then return end

monster:name("Running Elite Orc Guard")
monster:nameDescription("a running elite orc guard")
monster:health(15)
monster:maxHealth(15)
monster:experience(0)
monster:speed(195)
monster:race(RACE_BLOOD)
monster:outfit({lookType = 2})
monster:defense(2)
monster:armor(1)
monster:runHealth(15)

-- Flags
monster:attackable(false)
monster:hostile(false)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Voices
monster:voices({
    {text = "UAAAAH FETCHI!", yell = false},
})

monster:register()
