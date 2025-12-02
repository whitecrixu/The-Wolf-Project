-- The Dreadorian
-- Converted from XML

local monster = Game.createMonsterType("The Dreadorian")
if not monster then return end

monster:name("The Dreadorian")
monster:nameDescription("The Dreadorian")
monster:health(9000)
monster:maxHealth(9000)
monster:experience(4000)
monster:speed(250)
monster:race(RACE_BLOOD)
monster:corpseId(6328)
monster:outfit({lookType = 234})
monster:defense(35)
monster:armor(25)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = 90},
    {type = COMBAT_ENERGYDAMAGE, percent = 30},
    {type = COMBAT_DEATHDAMAGE, percent = 10},
    {type = COMBAT_ICEDAMAGE, percent = -10},
    {type = COMBAT_HOLYDAMAGE, percent = -10}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_FIRE, immunity = true}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -164}
})

monster:register()
