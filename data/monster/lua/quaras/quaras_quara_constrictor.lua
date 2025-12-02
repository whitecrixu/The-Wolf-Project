-- Quara Constrictor
-- Converted from XML

local monster = Game.createMonsterType("Quara Constrictor")
if not monster then return end

monster:name("Quara Constrictor")
monster:nameDescription("a quara constrictor")
monster:health(450)
monster:maxHealth(450)
monster:experience(250)
monster:speed(230)
monster:race(RACE_BLOOD)
monster:manaCost(670)
monster:corpseId(6065)
monster:outfit({lookType = 46})
monster:defense(20)
monster:armor(20)
monster:runHealth(45)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = -10},
    {type = COMBAT_ENERGYDAMAGE, percent = -25}
})

-- Immunities
monster:immunities({
    {type = COMBAT_LIFEDRAIN, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_DROWN, immunity = true},
    {condition = CONDITION_FIRE, immunity = true},
    {type = COMBAT_ICEDAMAGE, combat = true}
})

-- Voices
monster:voices({
    {text = "Gaaahhh!", yell = false},
    {text = "Gluh! Gluh!", yell = false},
    {text = "Tssss!", yell = false},
    {text = "Boohaa!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 87500, maxCount = 100},
    {id = 12443, chance = 14520},
    {id = 2397, chance = 7761},
    {id = 2670, chance = 5000, maxCount = 5},
    {id = 2465, chance = 5000},
    {id = 5895, chance = 430},
    {id = 2150, chance = 2860}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -100},
    {name = "lifedrain", interval = 2000, chance = 10, minDamage = -50, maxDamage = -90, radius = 3},
    {name = "quara constrictor freeze", interval = 2000, chance = 10},
    {name = "ice", interval = 2000, chance = 10, minDamage = -40, maxDamage = -70, range = 7, radius = 4},
    {name = "quara constrictor electrify", interval = 2000, chance = 10}
})

monster:register()
