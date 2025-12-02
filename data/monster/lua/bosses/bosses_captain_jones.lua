-- Captain Jones
-- Converted from XML

local monster = Game.createMonsterType("Captain Jones")
if not monster then return end

monster:name("Captain Jones")
monster:nameDescription("Captain Jones")
monster:health(800)
monster:maxHealth(800)
monster:experience(825)
monster:speed(170)
monster:race(RACE_UNDEAD)
monster:corpseId(5566)
monster:outfit({lookType = 196})
monster:defense(0)
monster:armor(0)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_HOLYDAMAGE, percent = -15}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {type = COMBAT_LIFEDRAIN, combat = true},
    {type = COMBAT_PHYSICALDAMAGE, combat = true},
    {type = COMBAT_DEATHDAMAGE, combat = true},
    {type = COMBAT_EARTHDAMAGE, combat = true}
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 150},
    {id = 2165, chance = 33000},
    {id = 10601, chance = 13700},
    {id = 2488, chance = 5070},
    {id = 8871, chance = 3070},
    {id = 2655, chance = 1110},
    {id = 2383, chance = 1110}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -95},
    {name = "lifedrain", interval = 2000, chance = 15, minDamage = -30, maxDamage = -80, radius = 1},
    {name = "death", interval = 2000, chance = 10, minDamage = -130, maxDamage = -150, radius = 1},
    {name = "outfit", interval = 2000, chance = 5, range = 3}
})

monster:register()
