-- Rocky
-- Converted from XML

local monster = Game.createMonsterType("Rocky")
if not monster then return end

monster:name("Rocky")
monster:nameDescription("rocky")
monster:health(250)
monster:maxHealth(250)
monster:experience(190)
monster:speed(170)
monster:race(RACE_UNDEAD)
monster:corpseId(7349)
monster:outfit({lookType = 95})
monster:defense(30)
monster:armor(30)

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
    {condition = CONDITION_ENERGY, immunity = true},
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Another little gladiator!", yell = false},
    {text = "Come into my embrace.", yell = false}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -70}
})

monster:register()
