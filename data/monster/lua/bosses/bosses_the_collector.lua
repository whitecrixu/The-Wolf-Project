-- The Collector
-- Converted from XML

local monster = Game.createMonsterType("The Collector")
if not monster then return end

monster:name("The Collector")
monster:nameDescription("the Collector")
monster:health(340)
monster:maxHealth(340)
monster:experience(100)
monster:speed(195)
monster:race(RACE_UNDEAD)
monster:corpseId(10612)
monster:outfit({lookType = 261})
monster:defense(26)
monster:armor(25)
monster:runHealth(34)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Immunities
monster:immunities({
    {type = COMBAT_ICEDAMAGE, combat = true}
})

-- Voices
monster:voices({
    {text = "Leave as long as you can.", yell = false}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -140},
    {name = "speed", interval = 1000, chance = 13, length = 8},
    {name = "physical", interval = 1000, chance = 15, maxDamage = -85, range = 7},
    {name = "melee", interval = 2000, chance = 15, minDamage = -10, maxDamage = -80}
})

monster:register()
