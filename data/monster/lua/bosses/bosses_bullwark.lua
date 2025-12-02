-- Bullwark
-- Converted from XML

local monster = Game.createMonsterType("Bullwark")
if not monster then return end

monster:name("Bullwark")
monster:nameDescription("Bullwark")
monster:health(65000)
monster:maxHealth(65000)
monster:experience(16725)
monster:speed(220)
monster:race(RACE_BLOOD)
monster:corpseId(5962)
monster:outfit({lookType = 607})
monster:defense(45)
monster:armor(40)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 1},
    {type = COMBAT_ICEDAMAGE, percent = 1},
    {type = COMBAT_FIREDAMAGE, percent = 1},
    {type = COMBAT_DEATHDAMAGE, percent = 1}
})

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "MOOOOH!", yell = false},
    {text = "Grrrr.", yell = false},
    {text = "Raaaargh!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 195},
    {id = 2152, chance = 58000, maxCount = 2},
    {id = 7591, chance = 7300, maxCount = 3},
    {id = 7590, chance = 7300, maxCount = 3},
    {id = 2666, chance = 6400},
    {id = 2147, chance = 4600, maxCount = 2},
    {id = 5878, chance = 4200},
    {id = 2145, chance = 4000, maxCount = 2},
    {id = 2214, chance = 2000},
    {id = 5911, chance = 1700},
    {id = 2156, chance = 880},
    {id = 2154, chance = 730},
    {id = 7452, chance = 440},
    {id = 7427, chance = 290},
    {id = 9971, chance = 290},
    {id = 7401, chance = 290}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1300},
    {name = "physical", interval = 2000, chance = 15, maxDamage = -200, radius = 3},
    {name = "lifedrain", interval = 2000, chance = 15, minDamage = -100, maxDamage = -225, range = 7, radius = 4}
})

monster:register()
