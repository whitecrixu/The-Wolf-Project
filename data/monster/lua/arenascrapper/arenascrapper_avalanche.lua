-- Avalanche
-- Converted from XML

local monster = Game.createMonsterType("Avalanche")
if not monster then return end

monster:name("Avalanche")
monster:nameDescription("avalanche")
monster:health(550)
monster:maxHealth(550)
monster:experience(305)
monster:speed(195)
monster:race(RACE_UNDEAD)
monster:corpseId(7349)
monster:outfit({lookType = 261})
monster:defense(27)
monster:armor(26)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 30},
    {type = COMBAT_ENERGYDAMAGE, percent = -10}
})

-- Immunities
monster:immunities({
    {type = COMBAT_ICEDAMAGE, combat = true},
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "You will pay for imprisoning me here.", yell = false},
    {text = "Puny warmblood.", yell = false}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -110},
    {name = "drown", interval = 1000, chance = 100, minDamage = -10, maxDamage = -50, length = 5, spread = 6},
    {name = "speed", interval = 4000, chance = 100, radius = 3},
    {name = "physical", interval = 6000, chance = 100, maxDamage = -40, range = 5, radius = 1}
})

monster:register()
