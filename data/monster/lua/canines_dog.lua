-- Dog
-- Auto-converted from XML

local monster = Game.createMonsterType("Dog")
if not monster then return end

monster:name("Dog")
monster:nameDescription("a dog")
monster:health(20)
monster:maxHealth(20)
monster:experience(0)
monster:speed(140)
monster:race(RACE_BLOOD)
monster:manaCost(220)
monster:corpseId(5971)
monster:outfit({lookType = 32})
monster:defense(5)
monster:armor(5)
monster:runHealth(8)

-- Flags
monster:attackable(true)
monster:hostile(false)
monster:isSummonable(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:pushable(true)
monster:staticAttackChance(90)

-- Voices
monster:voices({
    {text = "Wuff! Wuff!", yell = false},
})

monster:register()
