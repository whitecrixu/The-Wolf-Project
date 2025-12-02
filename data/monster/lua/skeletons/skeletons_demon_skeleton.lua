-- Demon Skeleton
-- Converted from XML

local monster = Game.createMonsterType("Demon Skeleton")
if not monster then return end

monster:name("Demon Skeleton")
monster:nameDescription("a demon skeleton")
monster:health(400)
monster:maxHealth(400)
monster:experience(240)
monster:speed(170)
monster:race(RACE_UNDEAD)
monster:manaCost(620)
monster:corpseId(5963)
monster:outfit({lookType = 37})
monster:defense(30)
monster:armor(30)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isSummonable(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_HOLYDAMAGE, percent = -25}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {type = COMBAT_DEATHDAMAGE, combat = true},
    {condition = CONDITION_FIRE, immunity = true},
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_DROWN, immunity = true},
    {type = COMBAT_LIFEDRAIN, combat = true},
    {condition = CONDITION_DRUNK, immunity = true}
})

-- Loot
monster:loot({
    {id = 2148, chance = 97000, maxCount = 75},
    {id = 2050, chance = 5270},
    {id = 2399, chance = 10000, maxCount = 3},
    {id = 2417, chance = 4000},
    {id = 2459, chance = 3450},
    {id = 2513, chance = 5000},
    {id = 2194, chance = 690},
    {id = 7620, chance = 5300},
    {id = 7618, chance = 10120, maxCount = 2},
    {id = 2178, chance = 520},
    {id = 2515, chance = 100},
    {id = 7618, chance = 10000, maxCount = 2},
    {id = 10564, chance = 12600},
    {id = 2144, chance = 2900},
    {id = 2147, chance = 1400}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -114},
    {name = "death", interval = 2000, chance = 10, minDamage = -30, maxDamage = -50, radius = 1}
})

monster:register()
