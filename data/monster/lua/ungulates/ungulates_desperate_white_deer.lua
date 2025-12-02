-- Desperate White Deer
-- Converted from XML

local monster = Game.createMonsterType("Desperate White Deer")
if not monster then return end

monster:name("Desperate White Deer")
monster:nameDescription("a desperate white deer")
monster:health(255)
monster:maxHealth(255)
monster:experience(35)
monster:speed(225)
monster:race(RACE_BLOOD)
monster:corpseId(13513)
monster:outfit({lookType = 400})
monster:defense(15)
monster:armor(15)
monster:runHealth(25)

-- Flags
monster:attackable(true)
monster:hostile(false)
monster:pushable(true)
monster:staticAttackChance(90)

-- Voices
monster:voices({
    {text = "*bell*", yell = false},
    {text = "ROOOAAARR!!", yell = false},
    {text = "*sniff*", yell = false},
    {text = "*wheeze*", yell = false}
})

-- Loot
monster:loot({
    {id = 2671, chance = 20000, maxCount = 3},
    {id = 13533, chance = 20000},
    {id = 13534, chance = 20000}
})

-- Attacks (default melee)
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -51}
})

monster:register()
