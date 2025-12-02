-- Spit Nettle
-- Converted from XML

local monster = Game.createMonsterType("Spit Nettle")
if not monster then return end

monster:name("Spit Nettle")
monster:nameDescription("a spit nettle")
monster:health(150)
monster:maxHealth(150)
monster:experience(20)
monster:speed(0)
monster:race(RACE_VENOM)
monster:corpseId(6062)
monster:outfit({lookType = 221})
monster:defense(15)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ICEDAMAGE, percent = 20},
    {type = COMBAT_FIREDAMAGE, percent = -10}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_ENERGY, immunity = true},
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Loot
monster:loot({
    {id = 2804, chance = 10650},
    {id = 12432, chance = 10000},
    {id = 2148, chance = 10600, maxCount = 5},
    {id = 2802, chance = 5263, maxCount = 2},
    {id = 2802, chance = 1010},
    {id = 11231, chance = 833},
    {id = 2802, chance = 362}
})

-- Attacks
monster:attacks({
    {name = "poison", interval = 1000, chance = 20, minDamage = -15, maxDamage = -40, range = 7},
    {name = "poisoncondition", interval = 2000, chance = 15, minDamage = -40, maxDamage = -100, range = 7}
})

monster:register()
