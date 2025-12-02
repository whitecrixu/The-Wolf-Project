-- Pigeon
-- Auto-converted from XML

local monster = Game.createMonsterType("Pigeon")
if not monster then return end

monster:name("Pigeon")
monster:nameDescription("a pigeon")
monster:health(30)
monster:maxHealth(30)
monster:experience(0)
monster:speed(260)
monster:race(RACE_BLOOD)
monster:corpseId(19709)
monster:outfit({lookType = 531})
monster:defense(5)
monster:armor(5)
monster:runHealth(30)

-- Flags
monster:attackable(true)
monster:hostile(false)
monster:isIllusionable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Voices
monster:voices({
    {text = "Coooo! Cooo!", yell = false},
    {text = "Coo! Coooo! Coo! Cooo!", yell = false},
    {text = "Coo! Coo! Coooo!", yell = false},
})

monster:register()
