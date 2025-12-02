-- The Handmaiden
-- Converted from XML

local monster = Game.createMonsterType("The Handmaiden")
if not monster then return end

monster:name("The Handmaiden")
monster:nameDescription("the handmaiden")
monster:health(14500)
monster:maxHealth(14500)
monster:experience(3850)
monster:speed(450)
monster:race(RACE_BLOOD)
monster:corpseId(6312)
monster:outfit({lookType = 230})
monster:defense(35)
monster:armor(25)
monster:runHealth(1450)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Immunities
monster:immunities({
    {condition = CONDITION_ENERGY, immunity = true},
    {condition = CONDITION_FIRE, immunity = true},
    {type = COMBAT_ICEDAMAGE, combat = true},
    {condition = CONDITION_POISON, immunity = true},
    {type = COMBAT_LIFEDRAIN, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Loot
monster:loot({
    {id = 6539, chance = 35000}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -800},
    {name = "manadrain", interval = 2000, chance = 25, minDamage = -150, maxDamage = -800, range = 7},
    {name = "drunk", interval = 1000, chance = 12}
})

monster:register()
