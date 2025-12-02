-- Glooth Powered Minotaur
-- Converted from XML

local monster = Game.createMonsterType("Glooth Powered Minotaur")
if not monster then return end

monster:name("Glooth Powered Minotaur")
monster:nameDescription("a glooth powered minotaur")
monster:health(3200)
monster:maxHealth(3200)
monster:experience(2600)
monster:speed(200)
monster:race(RACE_BLOOD)
monster:corpseId(5962)
monster:outfit({lookType = 607})
monster:defense(45)
monster:armor(40)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = 1},
    {type = COMBAT_FIREDAMAGE, percent = 1},
    {type = COMBAT_HOLYDAMAGE, percent = 90}
})

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -290},
    {name = "physical", interval = 2000, chance = 15, maxDamage = -200, radius = 3},
    {name = "lifedrain", interval = 2000, chance = 15, minDamage = -100, maxDamage = -225, range = 7, radius = 4}
})

monster:register()
