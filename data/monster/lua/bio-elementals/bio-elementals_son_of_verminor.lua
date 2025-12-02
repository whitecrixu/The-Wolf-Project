-- Son of Verminor
-- Converted from XML

local monster = Game.createMonsterType("Son of Verminor")
if not monster then return end

monster:name("Son of Verminor")
monster:nameDescription("a son of verminor")
monster:health(8500)
monster:maxHealth(8500)
monster:experience(5900)
monster:speed(240)
monster:race(RACE_VENOM)
monster:corpseId(1490)
monster:outfit({lookType = 19})
monster:defense(20)
monster:armor(20)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 10},
    {type = COMBAT_ENERGYDAMAGE, percent = 20}
})

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Blubb", yell = false}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -185},
    {name = "earth", interval = 2000, chance = 20, minDamage = -150, maxDamage = -200, range = 7},
    {name = "earth", interval = 2000, chance = 15, minDamage = -350, maxDamage = -390, radius = 3},
    {name = "death", interval = 2000, chance = 15, minDamage = -220, maxDamage = -270, radius = 3}
})

monster:register()
