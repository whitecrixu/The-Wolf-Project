-- Slime
-- Converted from XML

local monster = Game.createMonsterType("Slime")
if not monster then return end

monster:name("Slime")
monster:nameDescription("a slime")
monster:health(150)
monster:maxHealth(150)
monster:experience(160)
monster:speed(180)
monster:race(RACE_VENOM)
monster:corpseId(1496)
monster:outfit({lookType = 19})
monster:defense(15)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ICEDAMAGE, percent = 20},
    {type = COMBAT_FIREDAMAGE, percent = -10},
    {type = COMBAT_ENERGYDAMAGE, percent = -10}
})

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true}
})

-- Voices
monster:voices({
    {text = "Blubb", yell = false}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -85}
})

monster:register()
