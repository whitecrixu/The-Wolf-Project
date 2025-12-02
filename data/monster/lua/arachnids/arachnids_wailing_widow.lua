-- Wailing Widow
-- Converted from XML

local monster = Game.createMonsterType("Wailing Widow")
if not monster then return end

monster:name("Wailing Widow")
monster:nameDescription("a wailing widow")
monster:health(850)
monster:maxHealth(850)
monster:experience(450)
monster:speed(220)
monster:race(RACE_VENOM)
monster:corpseId(11310)
monster:outfit({lookType = 347})
monster:defense(20)
monster:armor(20)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = -5},
    {type = COMBAT_HOLYDAMAGE, percent = 5}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {type = COMBAT_DEATHDAMAGE, combat = true},
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {type = COMBAT_LIFEDRAIN, combat = true},
    {condition = CONDITION_DRUNK, immunity = true}
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 100},
    {id = 2148, chance = 50000, maxCount = 37},
    {id = 11328, chance = 20950},
    {id = 7618, chance = 4761},
    {id = 2510, chance = 2854},
    {id = 7620, chance = 4785},
    {id = 2796, chance = 3208},
    {id = 11329, chance = 900},
    {id = 11323, chance = 2210},
    {id = 2381, chance = 4460}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -90},
    {name = "drunk", interval = 2000, chance = 20, range = 7, radius = 4},
    {name = "lifedrain", interval = 2000, chance = 10, minDamage = -40, maxDamage = -70, radius = 3},
    {name = "earth", interval = 2000, chance = 15, minDamage = -60, maxDamage = -110, range = 7}
})

monster:register()
