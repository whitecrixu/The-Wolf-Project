-- Achad
-- Converted from XML

local monster = Game.createMonsterType("Achad")
if not monster then return end

monster:name("Achad")
monster:nameDescription("achad")
monster:health(185)
monster:maxHealth(185)
monster:experience(70)
monster:speed(185)
monster:race(RACE_BLOOD)
monster:corpseId(7349)
monster:outfit({lookType = 146, lookHead = 93, lookBody = 93, lookLegs = 57, lookFeet = 97, lookAddons = 3})
monster:defense(19)
monster:armor(20)
monster:runHealth(18)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 10}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "You won't pass me.", yell = false},
    {text = "I have travelled far to fight here.", yell = false}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -70}
})

monster:register()
