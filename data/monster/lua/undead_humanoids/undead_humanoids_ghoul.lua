-- Ghoul
-- Converted from XML

local monster = Game.createMonsterType("Ghoul")
if not monster then return end

monster:name("Ghoul")
monster:nameDescription("a ghoul")
monster:health(100)
monster:maxHealth(100)
monster:experience(85)
monster:speed(170)
monster:race(RACE_BLOOD)
monster:manaCost(450)
monster:corpseId(5976)
monster:outfit({lookType = 18})
monster:defense(15)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isSummonable(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 30},
    {type = COMBAT_EARTHDAMAGE, percent = 20},
    {type = COMBAT_ICEDAMAGE, percent = 10},
    {type = COMBAT_HOLYDAMAGE, percent = -25}
})

-- Immunities
monster:immunities({
    {type = COMBAT_DEATHDAMAGE, combat = true},
    {condition = CONDITION_DROWN, immunity = true},
    {type = COMBAT_LIFEDRAIN, combat = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Loot
monster:loot({
    {id = 2148, chance = 68000, maxCount = 30},
    {id = 11208, chance = 14470},
    {id = 3976, chance = 9600, maxCount = 2},
    {id = 12423, chance = 5130},
    {id = 2050, chance = 5000},
    {id = 2483, chance = 1000},
    {id = 5913, chance = 1000},
    {id = 2473, chance = 990},
    {id = 12440, chance = 950},
    {id = 2229, chance = 240},
    {id = 2168, chance = 180}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -70},
    {name = "lifedrain", interval = 2000, chance = 10, minDamage = -15, maxDamage = -27, radius = 1}
})

monster:register()
