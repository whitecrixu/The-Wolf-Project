-- Deepling Guard
-- Converted from XML

local monster = Game.createMonsterType("Deepling Guard")
if not monster then return end

monster:name("Deepling Guard")
monster:nameDescription("a deepling guard")
monster:health(1900)
monster:maxHealth(1900)
monster:experience(2100)
monster:speed(220)
monster:race(RACE_BLOOD)
monster:manaCost(390)
monster:corpseId(15187)
monster:outfit({lookType = 442})
monster:defense(35)
monster:armor(35)
monster:runHealth(190)

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
    {type = COMBAT_ENERGYDAMAGE, percent = -20},
    {type = COMBAT_EARTHDAMAGE, percent = -20},
    {type = COMBAT_DEATHDAMAGE, percent = 10}
})

-- Immunities
monster:immunities({
    {type = COMBAT_ICEDAMAGE, combat = true},
    {condition = CONDITION_DROWN, immunity = true},
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true}
})

-- Voices
monster:voices({
    {text = "QJELL NETA NA!!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 90},
    {id = 2148, chance = 100000, maxCount = 90},
    {id = 2152, chance = 70000, maxCount = 2},
    {id = 15424, chance = 16666},
    {id = 7591, chance = 14285, maxCount = 3},
    {id = 7590, chance = 14285, maxCount = 3},
    {id = 15423, chance = 12500},
    {id = 13870, chance = 10000},
    {id = 15455, chance = 9090},
    {id = 2146, chance = 2890, maxCount = 3},
    {id = 13838, chance = 1694},
    {id = 15454, chance = 925},
    {id = 15647, chance = 751},
    {id = 15644, chance = 362},
    {id = 15645, chance = 333},
    {id = 15545, chance = 10}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -170},
    {name = "physical", interval = 2000, chance = 20, maxDamage = -200, range = 7},
    {name = "drown", interval = 2000, chance = 15, minDamage = -100, maxDamage = -150, range = 7}
})

monster:register()
