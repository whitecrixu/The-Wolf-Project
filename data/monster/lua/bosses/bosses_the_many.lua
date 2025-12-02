-- The Many
-- Converted from XML

local monster = Game.createMonsterType("The Many")
if not monster then return end

monster:name("The Many")
monster:nameDescription("the many")
monster:health(4600)
monster:maxHealth(4600)
monster:experience(4000)
monster:speed(260)
monster:race(RACE_BLOOD)
monster:corpseId(6048)
monster:outfit({lookType = 121})
monster:defense(35)
monster:armor(25)
monster:runHealth(460)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ICEDAMAGE, percent = 50},
    {type = COMBAT_HOLYDAMAGE, percent = 30},
    {type = COMBAT_PHYSICALDAMAGE, percent = -5},
    {type = COMBAT_ENERGYDAMAGE, percent = -10}
})

-- Immunities
monster:immunities({
    {type = COMBAT_LIFEDRAIN, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {type = COMBAT_EARTHDAMAGE, combat = true}
})

-- Voices
monster:voices({
    {text = "FCHHHHH", yell = false},
    {text = "HISSSS", yell = false}
})

-- Loot
monster:loot({
    {id = 7589, chance = 100000, maxCount = 2},
    {id = 2146, chance = 56325, maxCount = 5},
    {id = 9971, chance = 47725, maxCount = 3},
    {id = 2197, chance = 100000},
    {id = 10523, chance = 100000},
    {id = 10219, chance = 75500},
    {id = 2536, chance = 75500},
    {id = 2498, chance = 25500},
    {id = 2475, chance = 75500}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -140},
    {name = "earth", interval = 2000, chance = 7, minDamage = -65, maxDamage = -320, length = 8, spread = 3},
    {name = "speed", interval = 2000, chance = 8, range = 7, radius = 4},
    {name = "ice", interval = 2000, chance = 9, minDamage = -100, maxDamage = -250, length = 8, spread = 3},
    {name = "ice", interval = 2000, chance = 10, minDamage = -70, maxDamage = -155, range = 7}
})

monster:register()
