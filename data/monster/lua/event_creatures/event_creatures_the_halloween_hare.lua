-- The Halloween Hare
-- Converted from XML

local monster = Game.createMonsterType("The Halloween Hare")
if not monster then return end

monster:name("The Halloween Hare")
monster:nameDescription("The Halloween Hare")
monster:health(2000)
monster:maxHealth(2000)
monster:experience(0)
monster:speed(150)
monster:race(RACE_BLOOD)
monster:outfit({lookType = 74})
monster:defense(999)
monster:armor(999)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Immunities
monster:immunities({
    {type = COMBAT_PHYSICALDAMAGE, combat = true},
    {condition = CONDITION_ENERGY, immunity = true},
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_DROWN, immunity = true},
    {type = COMBAT_LIFEDRAIN, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = 0},
    {name = "outfit", interval = 2000, chance = 6, radius = 3},
    {name = "outfit", interval = 2000, chance = 5, radius = 3},
    {name = "outfit", interval = 2000, chance = 6, radius = 3},
    {name = "outfit", interval = 2000, chance = 5, radius = 3},
    {name = "outfit", interval = 2000, chance = 6, radius = 3},
    {name = "outfit", interval = 2000, chance = 5, radius = 3},
    {name = "outfit", interval = 2000, chance = 5, radius = 3},
    {name = "outfit", interval = 2000, chance = 5, radius = 3},
    {name = "outfit", interval = 2000, chance = 5, radius = 3},
    {name = "outfit", interval = 2000, chance = 5, radius = 3},
    {name = "outfit", interval = 2000, chance = 5, radius = 3},
    {name = "outfit", interval = 2000, chance = 5, radius = 3},
    {name = "outfit", interval = 2000, chance = 5, radius = 3},
    {name = "outfit", interval = 2000, chance = 5, radius = 3},
    {name = "outfit", interval = 2000, chance = 15, radius = 3}
})

monster:register()
