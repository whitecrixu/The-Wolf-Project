-- Horse
-- Converted from XML

local monster = Game.createMonsterType("Horse")
if not monster then return end

monster:name("Horse")
monster:nameDescription("a horse")
monster:health(75)
monster:maxHealth(75)
monster:experience(0)
monster:speed(190)
monster:race(RACE_BLOOD)
monster:outfit({lookType = 435})
monster:defense(0)
monster:armor(0)
monster:runHealth(7)

-- Flags
monster:attackable(true)
monster:hostile(false)
monster:pushable(true)
monster:staticAttackChance(90)

-- Voices
monster:voices({
    {text = "Weeeeheeeeeee", yell = false},
    {text = "*snort*", yell = false},
    {text = "*Weeeeheeeeaaa*", yell = false}
})

-- Attacks (default melee)
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -15}
})

monster:register()
