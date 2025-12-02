-- Massacre
-- Converted from XML

local monster = Game.createMonsterType("Massacre")
if not monster then return end

monster:name("Massacre")
monster:nameDescription("the massacre")
monster:health(30000)
monster:maxHealth(30000)
monster:experience(9800)
monster:speed(390)
monster:race(RACE_BLOOD)
monster:corpseId(6336)
monster:outfit({lookType = 244})
monster:defense(15)
monster:armor(15)

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
    {condition = CONDITION_POISON, immunity = true},
    {type = COMBAT_LIFEDRAIN, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Loot
monster:loot({
    {id = 6540, chance = 100000}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -300},
    {name = "physical", interval = 2000, chance = 24, minDamage = -280, maxDamage = -500, range = 7}
})

monster:register()
