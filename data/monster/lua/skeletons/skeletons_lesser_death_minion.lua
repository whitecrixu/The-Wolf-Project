-- Lesser Death Minion
-- Converted from XML

local monster = Game.createMonsterType("Lesser Death Minion")
if not monster then return end

monster:name("Lesser Death Minion")
monster:nameDescription("a lesser death minion")
monster:health(50)
monster:maxHealth(50)
monster:experience(35)
monster:speed(150)
monster:race(RACE_UNDEAD)
monster:manaCost(300)
monster:corpseId(5972)
monster:outfit({lookType = 33})
monster:defense(10)
monster:armor(10)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isSummonable(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:pushable(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_HOLYDAMAGE, percent = -5}
})

-- Immunities
monster:immunities({
    {type = COMBAT_DEATHDAMAGE, combat = true},
    {condition = CONDITION_DROWN, immunity = true},
    {type = COMBAT_LIFEDRAIN, combat = true}
})

-- Loot
monster:loot({
    {id = 2230, chance = 49100},
    {id = 2148, chance = 43900, maxCount = 10},
    {id = 12437, chance = 10000},
    {id = 2050, chance = 10000},
    {id = 2473, chance = 7520},
    {id = 2398, chance = 4850},
    {id = 2388, chance = 4820},
    {id = 2511, chance = 2000},
    {id = 2376, chance = 1920}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -17},
    {name = "lifedrain", interval = 2000, chance = 15, minDamage = -7, maxDamage = -13}
})

monster:register()
