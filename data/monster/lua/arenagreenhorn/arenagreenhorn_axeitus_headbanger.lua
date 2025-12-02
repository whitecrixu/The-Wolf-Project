-- Axeitus Headbanger
-- Converted from XML

local monster = Game.createMonsterType("Axeitus Headbanger")
if not monster then return end

monster:name("Axeitus Headbanger")
monster:nameDescription("axeitus headbanger")
monster:health(365)
monster:maxHealth(365)
monster:experience(140)
monster:speed(170)
monster:race(RACE_BLOOD)
monster:corpseId(7349)
monster:outfit({lookType = 71})
monster:defense(17)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = -5}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Hicks!", yell = false},
    {text = "Stand still! Both of you! hicks", yell = false},
    {text = "This victory will earn me a casket of beer.", yell = false}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -70},
    {name = "physical", interval = 1000, chance = 80, maxDamage = -50, range = 5, radius = 1}
})

monster:register()
