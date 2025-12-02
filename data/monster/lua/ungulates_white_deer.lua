-- White Deer
-- Auto-converted from XML

local monster = Game.createMonsterType("White Deer")
if not monster then return end

monster:name("White Deer")
monster:nameDescription("a white deer")
monster:health(195)
monster:maxHealth(195)
monster:experience(0)
monster:speed(190)
monster:race(RACE_BLOOD)
monster:corpseId(13513)
monster:outfit({lookType = 400})
monster:defense(0)
monster:armor(0)
monster:runHealth(195)

-- Flags
monster:attackable(true)
monster:hostile(false)
monster:isIllusionable(true)
monster:pushable(true)
monster:staticAttackChance(90)

-- Voices
monster:voices({
    {text = "*wheeze*", yell = false},
    {text = "ROOOAAARR!!", yell = false},
    {text = "*sniff*", yell = false},
    {text = "*bell*", yell = false},
})

monster:register()
