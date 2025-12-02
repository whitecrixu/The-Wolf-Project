-- The Masked Marauder
-- Converted from XML

local monster = Game.createMonsterType("The Masked Marauder")
if not monster then return end

monster:name("The Masked Marauder")
monster:nameDescription("the masked marauder")
monster:health(6800)
monster:maxHealth(6800)
monster:experience(3500)
monster:speed(250)
monster:race(RACE_BLOOD)
monster:corpseId(7349)
monster:outfit({lookType = 234})
monster:defense(35)
monster:armor(25)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_HOLYDAMAGE, percent = -15},
    {type = COMBAT_ENERGYDAMAGE, percent = 30}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Didn't you leave your house door open?", yell = false},
    {text = "Oops, your shoelaces are open!", yell = false},
    {text = "Look! It's Ferumbras behind you!", yell = false},
    {text = "Stop! I give up!", yell = false}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -230},
    {name = "physical", interval = 2000, chance = 40, minDamage = -38, maxDamage = -150}
})

monster:register()
