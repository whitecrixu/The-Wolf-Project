-- Wild Horse
-- Auto-converted from XML

local monster = Game.createMonsterType("Wild Horse")
if not monster then return end

monster:name("Wild Horse")
monster:nameDescription("a wild horse")
monster:health(75)
monster:maxHealth(75)
monster:experience(0)
monster:speed(190)
monster:race(RACE_BLOOD)
monster:outfit({lookType = 393})
monster:defense(0)
monster:armor(0)
monster:runHealth(75)

-- Flags
monster:attackable(true)
monster:hostile(false)
monster:pushable(true)
monster:staticAttackChance(90)

-- Voices
monster:voices({
    {text = "Weeeeheeeeeee", yell = false},
    {text = "*snort*", yell = false},
    {text = "*Weeeeheeeeaaa*", yell = false},
})

monster:register()
