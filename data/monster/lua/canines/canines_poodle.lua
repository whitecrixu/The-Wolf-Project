-- Poodle
-- Auto-converted from XML

local monster = Game.createMonsterType("Poodle")
if not monster then return end

monster:name("Poodle")
monster:nameDescription("a poodle")
monster:health(20)
monster:maxHealth(20)
monster:experience(0)
monster:speed(200)
monster:race(RACE_BLOOD)
monster:manaCost(220)
monster:corpseId(5971)
monster:outfit({lookType = 473})
monster:defense(2)
monster:armor(1)
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
    {text = "Wuff wuff", yell = false},
})

monster:register()
