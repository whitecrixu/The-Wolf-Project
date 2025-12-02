-- Spirit of Water
-- Converted from XML

local monster = Game.createMonsterType("Spirit of Water")
if not monster then return end

monster:name("Spirit of Water")
monster:nameDescription("the spirit of water")
monster:health(1517)
monster:maxHealth(1517)
monster:experience(850)
monster:speed(200)
monster:race(RACE_UNDEAD)
monster:corpseId(7349)
monster:outfit({lookType = 11})
monster:defense(0)
monster:armor(0)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = -10}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {type = COMBAT_ICEDAMAGE, combat = true},
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Blubb", yell = false}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -170},
    {name = "poisonfield", interval = 1000, chance = 50},
    {name = "physical", interval = 2000, chance = 40, minDamage = -1, maxDamage = -120, spread = 3}
})

monster:register()
