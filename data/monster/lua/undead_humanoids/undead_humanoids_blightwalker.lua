-- Blightwalker
-- Converted from XML

local monster = Game.createMonsterType("Blightwalker")
if not monster then return end

monster:name("Blightwalker")
monster:nameDescription("a blightwalker")
monster:health(8900)
monster:maxHealth(8900)
monster:experience(5850)
monster:speed(250)
monster:race(RACE_UNDEAD)
monster:corpseId(6354)
monster:outfit({lookType = 246})
monster:defense(50)
monster:armor(50)
monster:runHealth(890)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 50},
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
    {type = COMBAT_ICEDAMAGE, percent = 50},
    {type = COMBAT_PHYSICALDAMAGE, percent = -10},
    {type = COMBAT_HOLYDAMAGE, percent = -30}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {type = COMBAT_DEATHDAMAGE, combat = true},
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "I can see you decaying!", yell = false},
    {text = "Let me taste your mortality!", yell = false},
    {text = "Your lifeforce is waning!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 197},
    {id = 2152, chance = 100000, maxCount = 5},
    {id = 2694, chance = 50000},
    {id = 7590, chance = 31360, maxCount = 3},
    {id = 6500, chance = 28000},
    {id = 2260, chance = 26250, maxCount = 2},
    {id = 5944, chance = 23720},
    {id = 10605, chance = 15000},
    {id = 8473, chance = 14720, maxCount = 2},
    {id = 2183, chance = 10000},
    {id = 7368, chance = 5900, maxCount = 10},
    {id = 9971, chance = 5270},
    {id = 7632, chance = 4450},
    {id = 7633, chance = 4450},
    {id = 7732, chance = 4300},
    {id = 2550, chance = 3000},
    {id = 7885, chance = 2500},
    {id = 2199, chance = 2050},
    {id = 2179, chance = 1870},
    {id = 2436, chance = 1520},
    {id = 6300, chance = 1410},
    {id = 7884, chance = 1050},
    {id = 2418, chance = 350},
    {id = 2173, chance = 120}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -490},
    {name = "earth", interval = 2000, chance = 20, minDamage = -220, maxDamage = -405, range = 7, radius = 1},
    {name = "lifedrain", interval = 2000, chance = 15, minDamage = -65, maxDamage = -135, radius = 4},
    {name = "drunk", interval = 2000, chance = 10, radius = 3},
    {name = "blightwalker curse", interval = 2000, chance = 15},
    {name = "speed", interval = 2000, chance = 15, range = 7}
})

monster:register()
