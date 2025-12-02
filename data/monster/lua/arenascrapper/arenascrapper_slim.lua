-- Slim
-- Converted from XML

local monster = Game.createMonsterType("Slim")
if not monster then return end

monster:name("Slim")
monster:nameDescription("slim")
monster:health(1025)
monster:maxHealth(1025)
monster:experience(580)
monster:speed(200)
monster:race(RACE_UNDEAD)
monster:corpseId(7349)
monster:outfit({lookType = 101})
monster:defense(38)
monster:armor(36)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = -10},
    {type = COMBAT_HOLYDAMAGE, percent = -5}
})

-- Immunities
monster:immunities({
    {type = COMBAT_DEATHDAMAGE, combat = true},
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Zhroozzzzs.", yell = false}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -100},
    {name = "poisonfield", interval = 1000, chance = 50},
    {name = "physical", interval = 3049, chance = 40, minDamage = -10, maxDamage = -50}
})

monster:register()
