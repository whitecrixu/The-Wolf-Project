-- Armadile
-- Converted from XML

local monster = Game.createMonsterType("Armadile")
if not monster then return end

monster:name("Armadile")
monster:nameDescription("a armadile")
monster:health(3800)
monster:maxHealth(3800)
monster:experience(2900)
monster:speed(210)
monster:race(RACE_UNDEAD)
monster:corpseId(18378)
monster:outfit({lookType = 487})
monster:defense(25)
monster:armor(25)
monster:runHealth(380)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 1},
    {type = COMBAT_HOLYDAMAGE, percent = 15},
    {type = COMBAT_DEATHDAMAGE, percent = 1},
    {type = COMBAT_FIREDAMAGE, percent = 20},
    {type = COMBAT_ENERGYDAMAGE, percent = 15},
    {type = COMBAT_ICEDAMAGE, percent = 15}
})

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Creak!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 100},
    {id = 2148, chance = 100000, maxCount = 98},
    {id = 2152, chance = 95000, maxCount = 7},
    {id = 7620, chance = 14285, maxCount = 3},
    {id = 7591, chance = 15000, maxCount = 2},
    {id = 7588, chance = 14285, maxCount = 2},
    {id = 18432, chance = 14540},
    {id = 7590, chance = 15920, maxCount = 2},
    {id = 7589, chance = 15000, maxCount = 2},
    {id = 12403, chance = 12460},
    {id = 18437, chance = 10230, maxCount = 10},
    {id = 18436, chance = 7692, maxCount = 5},
    {id = 13757, chance = 6000},
    {id = 18421, chance = 5690, maxCount = 2},
    {id = 18416, chance = 3920, maxCount = 2},
    {id = 7886, chance = 2850},
    {id = 7413, chance = 1540},
    {id = 7428, chance = 1150},
    {id = 2169, chance = 1000},
    {id = 2528, chance = 620},
    {id = 8878, chance = 230}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -100},
    {name = "drunk", interval = 2000, chance = 15, radius = 4},
    {name = "manadrain", interval = 2000, chance = 15, minDamage = -430, maxDamage = -550, range = 7},
    {name = "poisoncondition", interval = 2000, chance = 15, minDamage = -200, maxDamage = -400, radius = 4}
})

monster:register()
