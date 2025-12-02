-- Spectre
-- Converted from XML

local monster = Game.createMonsterType("Spectre")
if not monster then return end

monster:name("Spectre")
monster:nameDescription("a spectre")
monster:health(1350)
monster:maxHealth(1350)
monster:experience(2100)
monster:speed(230)
monster:race(RACE_UNDEAD)
monster:corpseId(6348)
monster:outfit({lookType = 235, lookHead = 20})
monster:defense(35)
monster:armor(35)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 90},
    {type = COMBAT_ICEDAMAGE, percent = 1},
    {type = COMBAT_FIREDAMAGE, percent = -8},
    {type = COMBAT_ENERGYDAMAGE, percent = -8}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_DROWN, immunity = true},
    {type = COMBAT_LIFEDRAIN, combat = true},
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {type = COMBAT_DEATHDAMAGE, combat = true},
    {condition = CONDITION_DRUNK, immunity = true}
})

-- Voices
monster:voices({
    {text = "Revenge ... is so ... sweet!", yell = false},
    {text = "Life...force! Feed me your... lifeforce!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 33000, maxCount = 100},
    {id = 2148, chance = 33000, maxCount = 100},
    {id = 2148, chance = 33000, maxCount = 97},
    {id = 2260, chance = 30310, maxCount = 2},
    {id = 2152, chance = 3850, maxCount = 7},
    {id = 5944, chance = 6005},
    {id = 2165, chance = 190},
    {id = 2189, chance = 9800},
    {id = 6500, chance = 6270},
    {id = 2071, chance = 9620},
    {id = 7383, chance = 700},
    {id = 2134, chance = 850},
    {id = 5909, chance = 3800},
    {id = 6300, chance = 280},
    {id = 7590, chance = 920},
    {id = 2134, chance = 110},
    {id = 2136, chance = 110},
    {id = 11227, chance = 1000}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -147},
    {name = "drunk", interval = 2000, chance = 15, radius = 4},
    {name = "spectre drown", interval = 2000, chance = 15},
    {name = "manadrain", interval = 2000, chance = 15, minDamage = -100, maxDamage = -400, range = 7},
    {name = "lifedrain", interval = 2000, chance = 20, minDamage = -300, maxDamage = -550, range = 7}
})

monster:register()
