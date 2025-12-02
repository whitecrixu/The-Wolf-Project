-- Phantasm
-- Converted from XML

local monster = Game.createMonsterType("Phantasm")
if not monster then return end

monster:name("Phantasm")
monster:nameDescription("a phantasm")
monster:health(3950)
monster:maxHealth(3950)
monster:experience(4400)
monster:speed(240)
monster:race(RACE_UNDEAD)
monster:corpseId(6344)
monster:outfit({lookType = 241, lookHead = 20})
monster:defense(0)
monster:armor(0)
monster:runHealth(395)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = 20},
    {type = COMBAT_ICEDAMAGE, percent = 20},
    {type = COMBAT_HOLYDAMAGE, percent = -10},
    {type = COMBAT_FIREDAMAGE, percent = -10},
    {type = COMBAT_ENERGYDAMAGE, percent = -10}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {type = COMBAT_DEATHDAMAGE, combat = true},
    {type = COMBAT_LIFEDRAIN, combat = true},
    {type = COMBAT_PHYSICALDAMAGE, combat = true}
})

-- Voices
monster:voices({
    {text = "Oh my, you forgot to put your pants on!", yell = false},
    {text = "Weeheeheeheehee!", yell = false},
    {text = "Its nothing but a dream!", yell = false},
    {text = "Give in!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 30000, maxCount = 100},
    {id = 2148, chance = 30000, maxCount = 100},
    {id = 2148, chance = 28000, maxCount = 33},
    {id = 2152, chance = 87730, maxCount = 4},
    {id = 2260, chance = 22500, maxCount = 2},
    {id = 6500, chance = 16320},
    {id = 7590, chance = 32750, maxCount = 2},
    {id = 8473, chance = 14680},
    {id = 2804, chance = 26930, maxCount = 2},
    {id = 2149, chance = 10190, maxCount = 3},
    {id = 7414, chance = 110},
    {id = 2487, chance = 660},
    {id = 2165, chance = 550},
    {id = 6300, chance = 330},
    {id = 7451, chance = 550},
    {id = 2147, chance = 12160, maxCount = 3},
    {id = 9970, chance = 12810, maxCount = 3},
    {id = 2150, chance = 14570, maxCount = 3}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -185},
    {name = "death", interval = 2000, chance = 10, minDamage = -250, maxDamage = -610, range = 7},
    {name = "manadrain", interval = 2000, chance = 20, minDamage = -5, maxDamage = -80, radius = 3},
    {name = "phantasm drown", interval = 2000, chance = 15},
    {name = "drunk", interval = 2000, chance = 15, radius = 5}
})

monster:register()
