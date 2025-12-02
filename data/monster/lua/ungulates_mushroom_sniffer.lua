-- Mushroom Sniffer
-- Auto-converted from XML

local monster = Game.createMonsterType("Mushroom Sniffer")
if not monster then return end

monster:name("Mushroom Sniffer")
monster:nameDescription("a mushroom sniffer")
monster:health(250)
monster:maxHealth(250)
monster:experience(0)
monster:speed(120)
monster:race(RACE_BLOOD)
monster:corpseId(2935)
monster:outfit({lookType = 60})
monster:defense(0)
monster:armor(0)
monster:runHealth(25)

-- Flags
monster:attackable(true)
monster:hostile(false)
monster:pushable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = 90},
    {type = COMBAT_ICEDAMAGE, percent = 90},
    {type = COMBAT_ENERGYDAMAGE, percent = 90},
    {type = COMBAT_FIREDAMAGE, percent = 90},
    {type = COMBAT_DEATHDAMAGE, percent = 90},
    {type = COMBAT_HOLYDAMAGE, percent = 90},
    {type = COMBAT_PHYSICALDAMAGE, percent = 90},
})

-- Voices
monster:voices({
    {text = "Sniff", yell = false},
    {text = "Oink", yell = false},
    {text = "Oink oink", yell = false},
})

monster:register()
