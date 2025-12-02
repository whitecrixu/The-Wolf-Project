-- Mutated Zalamon
-- Converted from XML

local monster = Game.createMonsterType("Mutated Zalamon")
if not monster then return end

monster:name("Mutated Zalamon")
monster:nameDescription("Mutated Zalamon")
monster:health(155000)
monster:maxHealth(155000)
monster:experience(10000)
monster:speed(238)
monster:race(RACE_VENOM)
monster:corpseId(12385)
monster:outfit({lookType = 356})
monster:defense(65)
monster:armor(70)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = -10},
    {type = COMBAT_ENERGYDAMAGE, percent = -10},
    {type = COMBAT_PHYSICALDAMAGE, percent = 5},
    {type = COMBAT_ICEDAMAGE, percent = 10}
})

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -400},
    {name = "poison", interval = 2000, chance = 15, maxDamage = -815, range = 7},
    {name = "poison", interval = 2000, chance = 10, minDamage = -100, maxDamage = -300, radius = 4},
    {name = "speed", interval = 4000, chance = 20, range = 7}
})

monster:register()
