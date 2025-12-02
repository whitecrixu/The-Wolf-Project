-- Wild Dog
-- Converted from XML

local monster = Game.createMonsterType("Wild Dog")
if not monster then return end

monster:name("Wild Dog")
monster:nameDescription("a wild dog")
monster:health(1000000)
monster:maxHealth(1000000)
monster:experience(0)
monster:speed(200)
monster:race(RACE_BLOOD)
monster:manaCost(220)
monster:corpseId(5971)
monster:outfit({lookType = 32, lookHead = 20, lookBody = 30, lookLegs = 40, lookFeet = 50})
monster:defense(2)
monster:armor(1)
monster:runHealth(100000)

-- Flags
monster:attackable(false)
monster:hostile(false)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:pushable(true)
monster:staticAttackChance(90)

-- Voices
monster:voices({
    {text = "Wuff wuff", yell = false}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = 0}
})

monster:register()
