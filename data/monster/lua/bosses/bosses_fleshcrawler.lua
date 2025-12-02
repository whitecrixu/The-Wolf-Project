-- Fleshcrawler
-- Converted from XML

local monster = Game.createMonsterType("Fleshcrawler")
if not monster then return end

monster:name("Fleshcrawler")
monster:nameDescription("Fleshcrawler")
monster:health(1450)
monster:maxHealth(1450)
monster:experience(1000)
monster:speed(230)
monster:race(RACE_VENOM)
monster:corpseId(6021)
monster:outfit({lookType = 79})
monster:defense(30)
monster:armor(30)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = -15},
    {type = COMBAT_DEATHDAMAGE, percent = -10}
})

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Loot
monster:loot({
    {id = 2152, chance = 98890, maxCount = 15},
    {id = 2159, chance = 98890, maxCount = 2},
    {id = 2149, chance = 88890, maxCount = 3},
    {id = 2150, chance = 87220, maxCount = 4},
    {id = 10548, chance = 100000},
    {id = 2142, chance = 45560},
    {id = 2135, chance = 52220},
    {id = 7884, chance = 11110},
    {id = 7588, chance = 43330},
    {id = 8912, chance = 75560},
    {id = 2540, chance = 43890},
    {id = 7426, chance = 30560},
    {id = 12424, chance = 14440}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -330},
    {name = "poison", interval = 2000, chance = 20, maxDamage = -150, range = 7},
    {name = "speed", interval = 2000, chance = 15, range = 7},
    {name = "poisoncondition", interval = 2000, chance = 30, maxDamage = -520, radius = 5}
})

monster:register()
