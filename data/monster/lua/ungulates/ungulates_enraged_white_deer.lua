-- Enraged White Deer
-- Converted from XML

local monster = Game.createMonsterType("Enraged White Deer")
if not monster then return end

monster:name("Enraged White Deer")
monster:nameDescription("an enraged white deer")
monster:health(255)
monster:maxHealth(255)
monster:experience(165)
monster:speed(210)
monster:race(RACE_BLOOD)
monster:corpseId(13513)
monster:outfit({lookType = 400})
monster:defense(15)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(true)
monster:staticAttackChance(90)

-- Voices
monster:voices({
    {text = "*wheeze*", yell = false},
    {text = "ROOOAAARR!!", yell = false},
    {text = "*sniff*", yell = false},
    {text = "*bell*", yell = false}
})

-- Loot
monster:loot({
    {id = 2671, chance = 19850, maxCount = 3},
    {id = 13534, chance = 20280},
    {id = 13533, chance = 19520}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -45}
})

monster:register()
