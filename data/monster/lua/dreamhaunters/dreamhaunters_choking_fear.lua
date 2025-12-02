-- Choking Fear
-- Converted from XML

local monster = Game.createMonsterType("Choking Fear")
if not monster then return end

monster:name("Choking Fear")
monster:nameDescription("Choking Fear")
monster:health(5800)
monster:maxHealth(5800)
monster:experience(4700)
monster:speed(260)
monster:race(RACE_UNDEAD)
monster:corpseId(22493)
monster:outfit({lookType = 586})
monster:defense(35)
monster:armor(35)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ICEDAMAGE, percent = 10},
    {type = COMBAT_ENERGYDAMAGE, percent = 15},
    {type = COMBAT_DEATHDAMAGE, percent = 50},
    {type = COMBAT_PHYSICALDAMAGE, percent = 10}
})

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Ah, sweet air... don't you miss it?", yell = false},
    {text = "Murr tat muuza!", yell = false},
    {text = "kchh", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 100},
    {id = 2152, chance = 100000, maxCount = 8},
    {id = 2167, chance = 3000},
    {id = 2168, chance = 4200},
    {id = 2214, chance = 3000},
    {id = 5913, chance = 6000},
    {id = 5914, chance = 3500},
    {id = 7590, chance = 20000, maxCount = 3},
    {id = 7886, chance = 720},
    {id = 8910, chance = 720},
    {id = 8472, chance = 20000, maxCount = 3},
    {id = 8473, chance = 19000, maxCount = 3},
    {id = 8902, chance = 720},
    {id = 18415, chance = 1540},
    {id = 18417, chance = 52500, maxCount = 2},
    {id = 18418, chance = 10000, maxCount = 3},
    {id = 22396, chance = 620},
    {id = 22536, chance = 14180},
    {id = 22540, chance = 14180},
    {id = 3962, chance = 3290},
    {id = 2515, chance = 1540},
    {id = 8912, chance = 510}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -190},
    {name = "poisoncondition", interval = 2000, chance = 10, minDamage = -700, maxDamage = -900, length = 5, spread = 3},
    {name = "physical", interval = 2000, chance = 10, maxDamage = -300, radius = 1},
    {name = "speed", interval = 2000, chance = 20, radius = 1},
    {name = "manadrain", interval = 2000, chance = 10, minDamage = -130, maxDamage = -300, radius = 4},
    {name = "choking fear drown", interval = 2000, chance = 20},
    {name = "death", interval = 2000, chance = 20, minDamage = -250, maxDamage = -500, radius = 4}
})

monster:register()
